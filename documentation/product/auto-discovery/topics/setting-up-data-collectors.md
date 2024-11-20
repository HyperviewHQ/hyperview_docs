(setting-up-data-collectors-doc)=

# Setting up Data Collectors

The Hyperview Data Collector collects and relays data back to the Hyperview platform. It covers the following functional areas: discovery, monitoring, control operations (for example, {ref}`setting control credentials <Setting-control-credentials>`), and trap listening.

You must register a Data Collector before it can relay information. You can only trigger the registration from the machine that hosts the Data Collector, and the process requires a unique, one-time-use Registration Token for that particular Data Collector.

Once registered, the Data Collector saves the key in a local configuration file in a secure manner. It then polls the Hyperview platform for data collection jobs.

The Data Collector must initiate all communication between the Data Collector and Hyperview. All communication is encrypted using TLS.

(setup-data-collectors)=

## Data Collector Protocol Support

```{eval-rst}
.. list-table::
   :header-rows: 1
   :align: left
   :widths: 33, 33, 33

   * - Protocol
     - Linux
     - Windows
   * - SNMP V1/V2c/V3
     - Yes
     - Yes
   * - IPMI
     - Yes
     - Yes
   * - SSH
     - Yes
     - Yes
   * - Modbus/TCP
     - Yes
     - Yes
   * - BACnet IP
     - Yes
     - Yes
   * - VMware
     - Yes
     - Yes
   * - Firmware update
     - Yes
     - Yes
   * - WMI
     - Yes
     - Yes
   * - IxOS
     - Yes
     - Yes
   * - AssetTracker
     - Yes
     - **No**
   * - MQTT Broker
     - Yes
     - **No**
```

:::{note}
- See [SNMP-AES_192_256](#snmp-aes-192-256) for more information on AES192 and AES256 support.
- The Windows version has limited SNMPv3 support. It does not support SNMPv3 SHA256, SHA384, and SHA512 for authentication and AES192 and AES256 for privacy.
:::

## Prerequisites

You must install the Hyperview Data Collector on at least one machine (physical or virtual, running a supported operating system) with network access to your devices. You **cannot** install multiple instances of the Data Collector on the same device or register the same device with more than one Hyperview instance.

(linux-prerequisites)=

### Linux Environment Dependencies

**Please use apt, yum, or dnf, depending on the distribution, to install the following packages**

```{eval-rst}
.. list-table::
   :header-rows: 1
   :align: left
   :widths: 33, 33, 33

   * - Command
     - APT Package
     - RPM Package
   * - *awk*
     - gawk or mawk
     - gawk
   * - *cut*
     - coreutils
     - coreutils
   * - *docker*
     - docker-ce and docker-compose-plugin
     - docker-ce and docker-compose-plugin
   * - *grep*
     - grep
     - grep
   * - *host*
     - bind9-host
     - bind-utils
   * - *jq*
     - jq
     - jq
   * - *libicu*
     - libicu72
     - libicu
   * - *sed*
     - sed
     - sed
   * - *tar*
     - tar
     - tar
   * - *uuidgen*
     - uuid-runtime
     - util-linux
   * - *whiptail*
     - whiptail
     - newt
```

:::{note}
- Docker Inc. provides [detailed installation documentation](https://docs.docker.com/engine/install/).
- The `jq` package may not be available from the official RedHat repository for RedHat Enterprise Linux or derivatives. If that is the case, the Extra Packages for Enterprise Linux [EPEL](https://docs.fedoraproject.org/en-US/epel/) project will have it.
:::

### Minimum requirements for a Linux (AMD64/X86_64)

- 4 CPU cores

- 8 GB of RAM

- 64 GB of free space in the /opt partition or where the /opt directory resides

- One of the following supported Linux distributions installed:

  - CentOS 9
  - Rocky Linux 9 (Using the CentOS 9 instructions)
  - Alma Linux 9 (Using the CentOS 9 instructions)
  - Debian 11 or 12
  - Ubuntu Server LTS 20.04 or 22.04
  - **BETA** Red Hat Enterprise Linux 8 & 9 with the [official instructions](https://docs.docker.com/engine/install/rhel/)

### Minimum requirements for a Linux (RPI ARM64) Data Collector device

- Raspberry Pi 4 Model B (8GB)
- 64 GB of free space (note: you must be using an SSD drive)
- Only Ubuntu Server LTS 20.04 and 22.04 are supported

### Minimum requirements for a Windows Data Collector server

- 4 CPU cores

- 8 GB of RAM

- 64 GB of free space

- One of the following supported Windows versions installed:

  - Windows Server 2016 (for production or testing)
  - Windows Server 2019 (for production or testing)
  - Windows Server 2022 (for production or testing)
  - Windows 10 (testing only)

## Network requirements

### Data Collector to Hyperview

The Data Collector uses HTTPS/TLS (TCP/443) to communicate with Hyperview. The direction is **outbound** from the Data Collector to Hyperview.

### Data Collector to assets

Please ensure the Data Collector can reach the targeted assets on the applicable ports for your site. Below is a list of the default ports the Data Collector will use; other ports can be used if needed.

```{eval-rst}
.. list-table::
   :header-rows: 1
   :align: left

   * - Protocol
     - Ports
     - Credential Requirements
   * - SNMP
     - 161 (gets, sets)
     - Community string or SNMPv3 credentials
   * - Modbus/TCP
     - 502
     - Not required
   * - BACnet IP
     - 47808
     - Not required
   * - ICMP Ping
     - N/A
     - Not required
   * - IPMI
     - 623
     - Username & Password
   * - SSH
     - 22
     - Username & Password or Username & Key
   * - WMI
     - 135
     - Username & Password
   * - VMware
     - 443
     - Username & Password
   * - IxOS
     - 443
     - Username & Password
   * - Firmware update
     - 443 or 80
     - Username & Password
```

### Assets to Data Collector

Please ensure the asset can reach the targeted Data Collector on the applicable ports for your site. Below is a list of the default ports the Data Collector will use; other ports can be used if needed or applicable.

```{eval-rst}
.. list-table::
   :header-rows: 1
   :align: left

   * - Protocol
     - Ports
     - Credential Requirements
   * - SNMP traps
     - 162
     - None
   * - AssetTracker
     - 4242
     - Not required
   * - AssetTracker Gen2/MQTT Port
     - 1883
     - Username & Password
```

### Firewall considerations

Firewalls can interfere with Data Collector communication. We recommended that you test connectivity for the protocols and features you use. The asset discovery report can provide information that may be helpful in troubleshooting connectivity issues.

## Downloading the Data Collector

1. Log in to your Hyperview instance as an Administrator.
2. Go to *Discoveries → Data Collectors → Download Data Collector*.
3. Select the Operating System. If you select Linux (AMD64) or Linux (RPI ARM64), download and SHA256 checksum links will appear, which you can use directly from your terminal.

```{image} /product/auto-discovery/media/download.png
:class: border-black
```

1. Click Download.

:::{note}
If you are using Linux, please download the Data Collector type relevant to your CPU architecture. The Linux (AMD64) Data Collector is intended for Intel and AMD CPU-based systems. Linux (RPI ARM64) Data Collector is for Raspberry Pi 4B systems.
:::

A compressed Data Collector setup package will be downloaded to your browser's default download location. The filename will resemble "dataCollector-9999.zip" (or "linuxDataCollector-9999.tgz" for Linux), where "9999" represents the version number.

## Installing the Data Collector

### Windows installation

:::{warning}
Support for installing the data collector software on Windows will end on January 31, 2025. Customers using Windows should make arrangements to switch to Linux by that time.
:::

1. Extract the downloaded Data Collector zip file to a local folder

2. Browse to the folder and double-click "setup.exe"

   :::{tip}
   Some security software (such as Microsoft Defender SmartScreen) or Windows features (such as UAC) may interrupt the installation. In such cases, you will need to manually allow the Data Collector installer to run, typically via a "run anyway" or similar action.
   :::

3. Depending on your environment, you might get prompted to install one or more of the following: .NET framework, Visual C++ runtime libraries, WinPcap. If you do, click *Install* and install the prerequisite software using default values.

   :::{note}
   While installing WinPCap ensure the "Automatically start the WinPcap drive at boot time" option is selected.
   :::

4. Click *Next* to start the Data Collector setup.

5. Accept the license terms by selecting "I accept..." and then clicking *Next*.

6. Choose a different installation folder or click *Next* to accept the default location.

```{image} /product/auto-discovery/media/dc_install_3.png
:class: border-black
```

1. Click *Install*.
2. Toward the end of the process, the Data Collector Configuration Tool will appear. You will need to provide details to register your data collector. Refer to the following section ("Registering the Data Collector") for instructions.

```{image} /product/auto-discovery/media/dc_install_9.png
:class: border-black
```

1. Click *Finish* to complete the installation.

### Linux installation (for both AMD64 and RPI ARM64)

1. Extract the downloaded Data Collector tar file to a local folder.
2. (Optional) Check the package SHA256 hash.
3. Run the install script as root (`install-dc.sh`).
4. Accept the EULA by selecting Yes.

```{image} /product/auto-discovery/media/ldc-eula.png
:class: border-black
```

1. Proceed to register the Data Collector.

(register)=

## Registering Data Collectors

Once you have installed the Data Collector, you need to register it with Hyperview using a unique registration token. The Data Collector Configuration Tool (which registers the Data Collector) is automatically triggered during the Data Collector installation. Once the Data Collector is registered, it will be listed in the Data Collectors grid (*Discoveries → Data Collectors*).

### Getting a registration token

1. Log in to your Hyperview instance as an Administrator.
2. Go to *Discoveries → Data Collectors → Add*. The "Add Data Collector" modal will open.
3. Click the copy icon to copy the registration token.

```{image} /product/auto-discovery/media/dc_install_8.png
:class: border-black
```

1. Click *OK* to close the modal.

### Registering a Windows Data Collector

:::{tip}
You can also run the Windows Data Collector Configuration Tool from `C:\\Program Files\\Hyperview\\Hyperview Data Collector\\configurationTool\\AgentConfigurer.exe`, assuming you have installed the Data Collector at the default location.
:::

1. Paste the registration token and enter your API hostname (for example, "yourcompany.hyperviewhq.com").

2. Click Advanced to specify additional values, or leave it as default.

   - If you want the Data Collector to use a specific port to communicate with Hyperview, enter an API Port Number.
   - Specify an alternate API Endpoint Name if applicable. Note that `API` is the only endpoint name that is currently supported.
   - Select the Use HTTPS checkbox. Note that all our customer-facing APIs are HTTPS/TLS. HTTP is used for internal testing and in special situations under the supervision of Hyperview Support.
   - In certain scenarios, the Data Collector can only communicate via a proxy server. Specify the Proxy URL if applicable.
   - If you are using a custom BACnet device ID, select "Use Custom BACnet Server Device ID" and enter the custom device ID. (If you do not provide the custom device ID, the device will still get discovered but will be assigned a default ID.)

3. Click *Register* to complete the Data Collector registration.

### Registering a Linux Data Collector (for both AMD64 and RPI ARM64)

:::{tip}
You can also run the Linux Data Collector Configuration Tool from `/opt/datacollector/bin`.
:::

1. Enter the registration token.
2. Enter your API hostname (for example, "yourinstance.hyperviewhq.com").

```{image} /product/auto-discovery/media/ldc-install.png
:class: border-black
```

1. Enter the API Port Number, or leave it at default (443).
2. Select the protocol (HTTPS or HTTP), or leave it at default (HTTPS).
3. (Optional) Enter proxy details.

The Data Collector will be registered.

## Verifying your Data Collector setup

### Microsoft Windows

If the Data Collector was set up correctly. The Services view in Windows (search for the "Services" app from the Windows search bar) will indicate that the Hyperview Data Collector and Hyperview SNMP Trap Listener services are running and set to start automatically, as seen below.

```{image} /product/auto-discovery/media/services.png
:class: border-black
```

:::{note}
Please ensure the default SNMP Service in Windows is disabled to avoid potential errors due to port conflicts.
:::

### Linux

Verify that Docker containers with the following names are running:

- dc-docker-stack-assettracker-service-1
- dc-docker-stack-discovery-service-1
- dc-docker-stack-monitoring-service-1
- dc-docker-stack-mqtt-broker-1
- dc-docker-stack-mqtt-service-1
- dc-docker-stack-snmptrapreceiver-service-1
