(discovery-best-practices-doc)=

# Best practices

## General recommendations

- Only configure protocols that are supported for the devices you intend to discover.
- Wherever possible, avoid configuring discoveries with large IP address ranges. Instead, configure smaller IP address ranges to keep the potential number of scanned devices to a manageable size.
- If you know the exact devices you want to discover and monitor within a specific discovery, use the list option to add the exact IP addresses.
- Data Collector servers should be located in, or geographically as near as possible to the data centers they are covering.

## Discovering Linux hosts

Please ensure the following programs are installed on your machines

- dmidecode
- ip
- OpenSSH server
- sudo
- sed
- awk

Ensure that hosts are allowing SSH connections from the Data Collector.

Create a dedicated user for the Data Collector to use, e.g. datacollector.

The Data Collector user will need to be able to run **dmidecode** to gather structured hardware information from the host. This command must be run as root using sudo. To allow the Data Collector user to run dmidecode please add the configuration below to /etc/sudoers.d/datacollector

```
# Allow Data Collector to execute dmidecode without needing a password
datacollector ALL=(ALL) NOPASSWD: /usr/sbin/dmidecode
```

Consider using an automation tool such as [Ansible](https://www.ansible.com/), if you have a large number of Linux hosts to configure.

### Using SSH keys for discovery

If you plan to use a username and private key instead username and password for Data Collector authentication, generate the private key in RSA format.

```
ssh-keygen -m PEM -t rsa -b 4096
```

:::{note}
Private keys used for discovery cannot be encrypted with a passphrase.
:::
