(setting-up-data-collectors-doc)=

# Setting up Data Collectors

The Hyperview Data Collector collects and relays data back to the Hyperview platform. It covers the following functional areas: discovery, monitoring, control operations (for example, {ref}`setting control credentials <setting-control-credentials>`), RFID asset tracking, and trap listening.

You must register a Data Collector before it can relay information. You can trigger registration only from the machine that hosts the Data Collector, and the process requires a unique, limited-time, single-use Registration Token.

Once registered, the Data Collector saves the access credentials in a local configuration file. It then polls the Hyperview platform for data collection jobs.

The Data Collector must initiate all communication with Hyperview. All communication is encrypted using TLS.

(setup-data-collectors)=

## Prerequisites

Install the Hyperview Data Collector on at least one machine (physical or virtual, running a supported operating system) with network access to your devices.

You **cannot** install multiple instances of the Data Collector on the same device or register the same device with more than one Hyperview instance.

Data Collectors must have **unique** names. If you are planning to use the Data Collector with {ref}`AssetTracker<assettracker-doc>` (RFID asset tracking solution), or as an SNMP trap aggregator, its IP address must remain static.

(linux-prerequisites)=

### Minimum Hardware Requirements (AMD64/X86_64/RPI ARM64)

- 4 CPU cores
- 8 GB of RAM
- 64 GB of free space in the /opt partition or where the /opt directory resides

:::{tip}
If you plan to use a Raspberry Pi for data collection, the **minimum** hardware requirements are a Raspberry Pi 4 B 8GB model and a physical SSD or NVMe for storage.
:::

### Supported Linux Distributions

The following distributions are tested to run the Hyperview Data Collector.

  - **Red Hat Enterprise Linux 8 & 9**
  - **CentOS 9**
  - **Rocky Linux 9**
  - **Alma Linux 9**
  - **Ubuntu Server LTS 22.04 & 24.04**
  - **Debian 11, 12 & 13**
  - **openSUSE Leap 15 & 16**

:::{important}
- Please ensure that the **snap** version of Docker is not installed.
- Please install only the container runtime you intend to use. Having both Docker and Podman installed on the same machine is not recommended, as it makes troubleshooting considerably harder.
- Let us know if you would like us to support more Linux distributions. [Contact Support](https://system.hyperviewhq.com/helpdesk).
:::

(container-runtime)=

### Container Runtime

The Data Collector runs as a set of containers. Two container runtimes are supported; you only need **one**.

| Runtime    | Deployment model                                                                             |
| ---------- | -------------------------------------------------------------------------------------------- |
| **Docker** | A Docker Compose stack defined in `/opt/datacollector/dc-docker-stack/docker-compose.yaml`     |
| **Podman** | Systemd (Quadlet) unit files installed in `/etc/containers/systemd`, managed with `systemctl`  |

On a **new** installation, after you accept the EULA, the installer asks which runtime you want to use. Docker is the default.

On an **existing** installation, the installer detects the runtime already in use and keeps it. You won't be asked to choose, and an update never switches the deployment model.

:::{important}
Podman deployments require **Podman 4.4 or newer**, which is the first release to include Quadlet support.
:::

:::{note}
To switch an existing Data Collector from one runtime to another, uninstall it first, then reinstall it and select the runtime you want.
:::

### Software Dependencies

Depending on the Linux distribution, use apt, dnf, or zypper to install the following packages. The *docker* and *podman* entries are alternatives; install the one that matches the container runtime you intend to use.

| Command    | Deb/APT Package                                | RPM/Dnf/Zypper Package                        |
| ---------- | ---------------------------------------------- | --------------------------------------------- |
| *awk*      | gawk or mawk                                   | gawk                                          |
| *cut*      | coreutils                                      | coreutils                                     |
| *grep*     | grep                                           | grep                                          |
| *host*     | bind9-host                                     | bind-utils                                    |
| *jq*       | jq                                             | jq                                            |
| *libicu*   | libicu72, libicu74 or libicu76 depending on OS | libicu, libicu65, or libicu77 depending on OS |
| *sed*      | sed                                            | sed                                           |
| *systemctl*| systemd (required for Podman deployments)      | systemd (required for Podman deployments)     |
| *tar*      | tar                                            | tar                                           |
| *uuidgen*  | uuid-runtime                                   | util-linux                                    |
| *wget*     | wget                                           | wget                                          |
| *whiptail* | whiptail                                       | newt                                          |

:::{note}
- Docker Inc. provides [detailed installation documentation](https://docs.docker.com/engine/install/).
- The Podman project provides [detailed installation documentation](https://podman.io/docs/installation). Please confirm that the packaged version is 4.4 or newer before selecting the Podman deployment.
- openSUSE and SUSE Linux Enterprise Server. Please use the OS vendor-provided Docker Open Source Engine and Docker Compose Packages.
- The `jq` package may not be available from the official Red Hat repository for Red Hat Enterprise Linux or derivatives. If so, the Extra Packages for Enterprise Linux [EPEL](https://docs.fedoraproject.org/en-US/epel/) project will have it.
:::

## Network requirements

### Data Collector to Hyperview

The Data Collector uses HTTPS/TLS (TCP/443) to communicate with Hyperview. The direction is **outbound** from the Data Collector to Hyperview.

The data collector software needs to communicate with the following hosts:

- Instance URL: https://INSTANCE_NAME.hyperviewhq.com/
- Download repository: https://hvstorewestus2.blob.core.windows.net/datacollectors
- Container repository API: https://hvpublic.azurecr.io
- Container repository data endpoint: https://hvpublic.westus2.data.azurecr.io

Please make sure these are in the communication allow lists, if applicable or required by your network security policy. Both the Docker and Podman deployments use the container repository endpoints.

### Data Collector to assets

Please ensure the Data Collector can reach the targeted assets on the applicable ports for your site. Below is a list of the default ports the Data Collector uses; you can use other ports if a Hyperview Administrator configures them while setting up discoveries.

| Protocol        | Port             | Credential Requirements                |
| --------------- | ---------------- | -------------------------------------- |
| SNMP            | 161 (gets, sets) | Community string or SNMPv3 credentials |
| Modbus/TCP      | 502              | Not required                           |
| BACnet IP       | 47808            | Not required                           |
| ICMP Ping       | N/A              | Not required                           |
| IPMI            | 623              | Username & Password                    |
| SSH             | 22               | Username & Password or Username & Key  |
| WMI             | 135              | Username & Password                    |
| VMware          | 443              | Username & Password                    |
| IxOS            | 443              | Username & Password                    |
| Firmware Update | 443 or 80        | Username & Password                    |

### Assets to Data Collector

Please ensure the asset can reach the targeted Data Collector on the applicable ports for your site. Below are the default ports the Data Collector will use; you can use other ports if needed or applicable.

| Protocol               | Port | Credential Requirements |
| ---------------------- | ---- | ----------------------- |
| SNMP traps             | 162  | Not required            |
| AssetTracker Gen1      | 4242 | Not required            |
| AssetTracker Gen2/MQTT | 1883 | Username & Password     |

### Firewall considerations

Firewalls can interfere with Data Collector communication. We recommend testing connectivity for the protocols and features you use. The asset discovery report can provide information that may help troubleshoot connectivity issues.

## Downloading the Data Collector

1. Log in to your Hyperview instance as an Administrator.
2. Go to *Discoveries → Data Collectors → Download Data Collector*.
3. Select the Operating System. If you select Linux (AMD64) or Linux (RPI ARM64), download and SHA256 checksum links will appear, which you can use directly from your terminal.

```{image} /product/auto-discovery/media/download.png
:class: border-black
```

4. Click Download or use the `wget` Linux command to download the file.

:::{note}
Please download the Data Collector version relevant to your CPU architecture. The Linux (AMD64) Data Collector is intended for Intel and AMD CPU-based systems. Linux (RPI ARM64) Data Collector is for Raspberry Pi systems.
:::

A compressed Data Collector setup package will be downloaded to your browser's default download location. The filename will resemble "linuxDataCollector-9999.tgz", where "9999" represents the version number.

5. (_Optional_) Download the SHA256SUM file using wget and then use the `sha256sum -c <filename>` command to verify file integrity. If you are on Windows, then PowerShell `Get-FileHash -Algorithm SHA256 <filename>` command will give you the hash of the downloaded file and you can then do manual verification by comparing the downloaded hash file with the result of the command.

## Installing the Data Collector

1. Extract the downloaded Data Collector tar file to a local folder.
2. Run the install script as __root__ or via __sudo__ (`install-dc.sh`).

```bash
sudo ./install-dc.sh
```

:::{tip}
If you want to skip hardware tests (e.g., for testing), run the installer or updater scripts with the **SKIP_TESTS** environment variable set to YES.

```bash
sudo SKIP_TESTS=YES ./install-dc.sh
```
:::

3. Accept the EULA by selecting Yes.

```{image} /product/auto-discovery/media/ldc-eula.png
:class: border-black
```

4. Select the container runtime, Docker or Podman. See {ref}`Container Runtime <container-runtime>` for the differences between the two deployment models.

:::{note}
This step only appears on a new installation. If a Data Collector is already installed, the installer keeps the container runtime it is already using and skips this prompt.
:::

5. Proceed to register the Data Collector.

(register)=


## Registering Data Collectors

### Getting a registration token

1. Log in to your Hyperview instance as an Administrator.
2. Go to *Discoveries → Data Collectors → Add*. The "Add Data Collector" modal will open.
3. Click the copy icon to copy the registration token.

```{image} /product/auto-discovery/media/add_data_collector.png
:class: border-black
```

4. Click *OK* to close the modal.

### Registering a Data Collector (for both AMD64 and RPI ARM64)

:::{tip}
You can also run the Linux Data Collector Configuration Tool from `/opt/datacollector/bin`.
:::

1. Enter the registration token.
2. Enter your API hostname (for example, "yourinstance.hyperviewhq.com").

```{image} /product/auto-discovery/media/ldc-install.png
:class: border-black
```

3. Enter the API Port Number, or leave it at the default (443).
4. Select the protocol (HTTPS or HTTP), or leave it at the default (HTTPS).
5. (Optional) Enter proxy details.

The Data Collector will be registered.

## Verifying your Data Collector setup

### Docker deployments

Verify that Docker containers with the following names are running using `docker ps`:

- dc-docker-stack-assettracker-service-1
- dc-docker-stack-discovery-service-1
- dc-docker-stack-monitoring-service-1
- dc-docker-stack-mqtt-broker-1
- dc-docker-stack-mqtt-service-1
- dc-docker-stack-snmptrapreceiver-service-1

### Podman deployments

Verify that the following systemd services are active using `systemctl list-units 'dc-*.service'`:

- dc-assettracker-service.service
- dc-discovery-service.service
- dc-monitoring-service.service
- dc-mqtt-broker.service
- dc-mqtt-monitoring-service.service
- dc-snmptrapreceiver-service.service

Quadlet generates these services from the unit files in `/etc/containers/systemd`. Quadlet also generates a `dc-datacollector-network.service`; it creates the network that the MQTT service and the MQTT broker share, and it starts automatically as a dependency.

You can also list the running containers using `podman ps`. Most of them appear with a `systemd-` name prefix, for example `systemd-dc-discovery-service`. The exception is the MQTT broker, which is named `mqtt-broker` so that the MQTT service can reach it by that name.

:::{tip}
Use `journalctl -u <service name>` to review the logs for an individual service.
:::

Next, verify the last communicated timestamp in your Hyperview instance **Discoveries ->  Data Collectors** list.
It should update approximately every 30 seconds. You can use the refresh button to update the table data.

## Updating Data Collectors

Run the updater as __root__ or via __sudo__.

```bash
sudo /opt/datacollector/bin/update-dc.sh
```

The updater retains the container runtime already in use; it does not switch an existing Data Collector from one runtime to the other.

- For a **Docker** deployment, it replaces the Docker Compose file and restarts the stack.
- For a **Podman** deployment, it replaces the unit files in `/etc/containers/systemd`, pulls the new images with Podman, reloads the systemd daemon, and restarts the services.

## Reinstalling or uninstalling Data Collectors

The Data Collector core software runs as a set of Docker or Podman containers. In addition, configuration files, some [troubleshooting tools](troubleshooting-tools-doc), logs, and temporary files are kept in `/opt/datacollector`. Podman deployments also install unit files in `/etc/containers/systemd`.

To reinstall the Data Collector software, uninstall it first, then install it.

### Uninstall (Docker)

1. Shut down the Docker containers

```bash
cd /opt/datacollector/dc-docker-stack/
docker compose down
```

2. Backup or rename the `/opt/datacollector` directory **If needed**

3. Delete the `/opt/datacollector` directory

### Uninstall (Podman)

1. Stop the services

```bash
systemctl stop dc-assettracker-service.service dc-discovery-service.service \
	dc-monitoring-service.service dc-mqtt-monitoring-service.service \
	dc-mqtt-broker.service dc-snmptrapreceiver-service.service \
	dc-datacollector-network.service
```

2. Remove the unit files and reload the systemd daemon

```bash
rm -f /etc/containers/systemd/dc-*.container /etc/containers/systemd/dc-*.network
systemctl daemon-reload
```

3. Backup or rename the `/opt/datacollector` directory **If needed**

4. Delete the `/opt/datacollector` directory

After uninstallation, reinstall following the standard instructions.
