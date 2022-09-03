.. include:: /auto-discovery/media.rst
.. _Advanced-discovery-topics-doc:

*************************
Advanced discovery topics
*************************

====================
Obtaining SNMP Walks
====================

Hyperview uses SNMP walks to enhance device definitions, to model and support devices that are discoverable with the SNMP protocol. The **snmpwalk file** is used to simulate the device and to test definitions.

It is recommended to install the applicable net-snmp package alongside the (Linux) Data Collector software. If that is not possible it can be installed on any machine that has a network line of sight to the target device.

Linux
-----

The `net-snmp <http://www.net-snmp.org/>`_ utilities are available on all supported Linux distributions.

On Debian-based distributions:

.. code::

    sudo apt install snmp

On RedHat-based distributions:

.. code::

    sudo dnf install net-snmp-utils

Windows
-------

There are multiple options.

1. Use net-snmp using a UNIX environment simulator such as `Cygwin <https://www.cygwin.com/>`_ or `WSL <https://docs.microsoft.com/en-us/windows/wsl/>`_.

2. Use a Linux Virtual Machine

macOS
-----

You can install net-snmp on MacOS using `Homebrew <https://brew.sh/>`_

.. code::

    brew install net-snmp

Once the application is installed, the **snmpwalk** command can be used to obtain a full walk of a device. For example:

.. code::

    #
    # The -ObentU command line option is required and important
    #
    snmpwalk -v2c -c public -ObentU 192.168.10.10 . > /my_home_dir/snmpwalks/newrackpdu.snmpwalk
    #
    # Compress the snmpwalk file
    #
    gzip /my_home_dir/snmpwalks/newrackpdu.snmpwalk

Once the walk is obtained, then it can be transferred to Hyperview support by uploading the compressed file to the applicable support ticket, or a different method arranged with Hyperview support.

Utilities like scp/sftp, `winscp <https://winscp.net/>`_ can be used to transfer files from the machine that has the files if there is a need.

If these options are not possible then contact Hyperview Support for other options.

====================================================
Downloading the Linux Data Collector Via Artifactory
====================================================

`Artifactory <https://jfrog.com/artifactory/>`_ is an artifact repository that some organizations use to centralize the management of their software supply chain. If you have a requirement to use this solution for your Linux Data Collector then you will have to customize the **docker-compose.yaml** file that ships with the Linux Data Collector installation package.

Once the **docker-compose.yaml** file is configured to your satisfaction then follow the :ref:`standard installation instructions <Setup-data-collectors>`.

Note that once you are running with a customized docker-compose file you will need to maintain that between releases. Hyperview may add new services, change default environment variables or default startup options for the various containers that compose the Linux Data Collector.

Standard Linux command line tools such as **diff** and **vim** can be used to access any differences between the two files and the applicable changes can be ported to your environment.

Please note that Hyperview only tests and supports the default configuration that ships with the installation package.
