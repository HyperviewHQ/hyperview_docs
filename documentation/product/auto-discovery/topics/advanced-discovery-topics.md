(advanced-discovery-topics-doc)=

# Advanced discovery topics

(snmp-aes-192-256)=
## SNMP privacy with AES 192 and 256

The Linux version of the Data Collector is capable of using AES-192 and AES-256 when communicating with SNMP devices. When using these algorithms it is important to note that they are not standardized across all manufacturers and SNMP implementations. There are two major non-compatible implementations. [RFC-3826](https://datatracker.ietf.org/doc/html/rfc3826) outlines arguably the closest thing to a standard. Most new devices that support AES-192/256 will support this implementation. However, some may follow an older reference implementation written by Cisco while the standard was still being discussed in the early 2000s.

The Linux version of the Data Collector is compatible with RFC-3826, also known as the Blumenthal implementation.

To determine what a device supports, check the device's interface, manual, or datasheet. If the information is not available, the Net-SNMP -> snmpget command can be used:

### Example

Assuming the device is configured with SHA1 for Authentication and AES-256 for Privacy.

Devices that use RFC-3826 will respond with this configuration to the command:

```
snmpget -v3 -l authPriv -a SHA -A <password> -x AES256 -X <passphrase> -u <SNMP user> <IP Address> .1.3.6.1.2.1.1.1.0
```

Devices that use the Cisco implementation will respond with this configuration to the command, note the "C" after AES256:

```
snmpget -v3 -l authPriv -a SHA -A <password> -x AES256C -X <passphrase> -u <SNMP user> <IP Address> .1.3.6.1.2.1.1.1.0
```

:::{note}
These commands were tested on Debian 12 and Fedora 38 using the default version of the snmpget command.
:::

## Obtaining SNMP walks

Hyperview uses SNMP walks to enhance device definitions to model and support devices that are discoverable with the SNMP protocol. The **snmpwalk file** is used to simulate the device and to test definitions.

Installing the applicable net-snmp package alongside the (Linux) Data Collector software is recommended. If that is not possible, it can be installed on any machine with network line of sight to the target device.

:::{warning}
Complete snmpwalk files must be submitted with specific formatting to enhance device definitions. Contact [Hyperview Support](https://system.hyperviewhq.com/helpdesk) for additional assistance with tool usage and formatting.
:::

### Linux

The [net-snmp](http://www.net-snmp.org/) utilities are available on all supported Linux distributions.

On Debian-based distributions:

```
sudo apt install snmp
```

On RedHat-based distributions:

```
sudo dnf install net-snmp-utils
```

### Windows

There are multiple options.

1. Use net-snmp using a UNIX environment simulator such as [Cygwin](https://www.cygwin.com/) or [WSL](https://docs.microsoft.com/en-us/windows/wsl/).
2. Use a Linux Virtual Machine

### macOS

You can install net-snmp on macOS using [Homebrew](https://brew.sh/)

```
brew install net-snmp
```

Once the application is installed, the **snmpwalk** command can be used to obtain a full walk of a device. The time it takes to perform the walk can vary from device to device and depends on external factors such as network speed and target device CPU load. It is recommended to perform the walk from the Data Collector machine, and for that machine to be on the same network as the device being walked. Expect the process to take a few minutes unless the device has a large amount of information, such as a large network switch, in which case, it may take longer.

### Docker

Hyperview builds a helper docker container that includes the net-snmp-utils. This container can be run using a docker command. The entry point for the container can be set to access the various net-snmp-utils.

### Usage examples

#### Standard

```
# SNMPv2c
snmpwalk -v2c -c public -ObentU 192.168.10.10 . > /my_home_dir/snmpwalks/newrackpdu.snmpwalk
#
# Check the output file for errors and compress it
#
gzip /my_home_dir/snmpwalks/newrackpdu.snmpwalk
```

:::{important}
- The **-ObentU** command option is required and important to be able to parse the output with our tools.
- The **period character** or **"."** at the end of the command is required and important.
:::

#### Docker

```
# SNMPv3
docker run -it --entrypoint snmpwalk  hvpublic.azurecr.io/hv-net-snmp-tools:latest -v3  -l authPriv -u v3user -a SHA1 -A "AUTH_PASSPHRASE"  -x AES-256 -X "PRIVACY_PASSPHRASE" -ObentU 192.168.10.10 . > /my_home_dir/snmpwalks/newrackpdu.snmpwalk
#
# Check the output file for errors and compress it
#
gzip /my_home_dir/snmpwalks/newrackpdu.snmpwalk
```

:::{important}
- The **-ObentU** command option is required and important to be able to parse the output with our tools.
- The **period character** or **"."** at the end of the command is required and important.
:::

#### Walk file handling

Once the walk is obtained, inspect that it is complete. Look for a "`No more variables left in this MIB View (It is past the end of the MIB tree)`" message at the end of the file. Transfer the file to Hyperview support by uploading it to the applicable support ticket.

Utilities like scp, sftp or [winscp](https://winscp.net/) can be used to transfer files around if there is a need.

If these options are not possible, then contact Hyperview Support.

:::{note}
If you are logged in to a remote machine when performing the walk via **ssh/putty** watch out for session timeouts. This would end the snmpwalk job. Standard UNIX/Linux tools such as **tmux, screen or nohup** may help in managing sessions and avoiding a timeout.
:::

## Downloading the Linux Data Collector via Artifactory

[Artifactory](https://jfrog.com/artifactory/) is an artifact repository that some organizations use to centralize the management of their software supply chain. If you have a requirement to use this solution for your Linux Data Collector then you will have to customize the **docker-compose.yaml** file that ships with the Linux Data Collector installation package.

Once the **docker-compose.yaml** file is configured to your satisfaction then follow the {ref}`standard installation instructions <Setup-data-collectors>`.

Note that once you run with a customized docker-compose file, you must maintain that between releases. Hyperview may add new services or change default environment variables or startup options for the various containers composing the Linux Data Collector.

Standard Linux command line tools such as **diff** and **vim** can be used to assess any differences between the two files, and the applicable changes can be ported to your environment.

Hyperview only tests and supports the default configuration that ships with the installation package.

## Docker daemon log management

By default, the Docker software does not perform log rotation for the "local/JSON" logging driver. For a standard installation of the Linux Data Collector on a standalone machine, it is easy to miss setting that up and risk potential disk space exhaustion. This is especially relevant if you are running the Data Collector software in **trace mode** while troubleshooting an issue.

[Docker documentation](https://docs.docker.com/config/containers/logging/) recommends configuring log rotation for the local/JSON logging driver by editing **/etc/docker/daemon.json**. A configuration example is below.

```
{
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m",
    "max-file": "3"
  }
}
```

## HTTP/HTTPS Proxy configuration

### Docker daemon

Docker publishes [detailed instructions](https://docs.docker.com/engine/daemon/proxy/) on how to configure the docker daemon to use a proxy server.

### User environment

Ensure that the user environment is configured. This is by ensuring the following environment variables have the correct values.

- HTTP_PROXY
- http_proxy
- HTTPS_PROXY
- https_proxy
- NO_PROXY
- no_proxy

### Proxy software or hardware

The exact steps are vendor-dependent. However, The software/hardware needs to allow access to these host names/URLs.

1. Your Hyperview instance address. This is created when you activate your subscription.
2. Data collector installer download URL. The data collector installer is hosted on Microsoft Azure Blob Storage. You can obtain the URL from your instance by navigating to *Discoveries -> Data Collectors -> Download Data Collector*.
3. Data collector docker registry address. The data collector docker images are hosted in a private Microsoft Azure container registry. You can obtain the registry address from the docker-compose file bundled with the installer. Please note that each registry has two addresses, an API/REST address and a data address. Usually allowing *\<registry name>.azurecr.io*, and *\<proxy config wildcard>.data.azurecr.io* is adequate.

### Data collector software configuration

This is configured using the data collector installer.
