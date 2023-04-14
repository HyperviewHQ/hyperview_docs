.. include:: /auto-discovery/media.rst
.. _Setting-up-data-collectors-doc:

**************************
Setting up Data Collectors
**************************

The Hyperview Data Collector collects and relays data back to the Hyperview platform. It covers the following functional areas: discovery, monitoring, control operations (for example, :ref:`setting control credentials <Setting-control-credentials>`), and trap listening.

All communication between the Hyperview platform and networked devices must be initiated by the Data Collector. You must register a Data Collector before it can relay information. The registration process can only be triggered from the machine that hosts the Data Collector and requires a unique key that is generated for that particular Data Collector.

Once registered, the Data Collector saves the key in a local configuration file in a secure manner. It then polls the Hyperview platform for data collection jobs.

.. _Setup-data-collectors:

=============
Prerequisites
=============

.. note:: You must install the Hyperview Data Collector on at least one device (physical or virtual, running a supported Windows or Linux OS) that is networked with your devices. You **cannot** install multiple instances of the Data Collector on the same device, or register the same device with multiple Hyperview instances. For larger organizations, we recommend having the Data Collector installed and running on one or more devices per data center.

Minimum requirements for a Windows Data Collector server
--------------------------------------------------------
* 4 CPU cores
* 8 GB of RAM
* 64 GB of free space
* One of the following supported Windows versions installed:

  * Windows Server 2016 (for production or testing)
  * Windows Server 2019 (for production or testing)
  * Windows Server 2022 (for production or testing)
  * Windows 10 (testing only)

Minimum requirements for a Linux (AMD64) Data Collector server
--------------------------------------------------------------

.. note:: The Linux Data Collector does not support VMWare, IxOS, and WMI discovery protocols.

* 4 CPU cores
* 8 GB of RAM
* 64 GB of free space in the /opt partition or where the /opt directory resides
* One of the following supported Linux distributions installed:

  * CentOS 7.xx or later
  * Debian 10.xx or 11.xx
  * Red Hat Enterprise Linux 7.xx or 8.xx
  * Ubuntu Server LTS 18.04.xx or later

* You must also have the following software installed:

  * Docker CE
  * Docker Compose Plugin

Docker Inc. provides `detailed installation documentation <https://docs.docker.com/engine/install/>`_.

The supported Linux distributions typically install environment dependencies for the Data Collector by default. Please refer to the README file included in the setup package for a complete list of dependencies.

Minimum requirements for a Linux (RPI ARM64) Data Collector device
------------------------------------------------------------------

.. note:: The Linux Data Collector does not support VMWare, IxOS, and WMI discovery protocols.

* Raspberry Pi 4 Model B (8GB)
* 64 GB of free space (note: you must be using an SSD drive)
* Only Ubuntu Server LTS 20.04 is supported and tested as of Hyperview 3.4

* You must also have the following software installed:

  * Docker CE
  * Docker Compose Plugin

Docker Inc. provides `detailed installation documentation <https://docs.docker.com/engine/install/>`_.

The supported Linux distributions typically install environment dependencies for the Data Collector by default. Please refer to the README file included in the setup package for a complete list of dependencies.

Network requirements
--------------------

Data Collector to Hyperview
^^^^^^^^^^^^^^^^^^^^^^^^^^^
The Data Collector uses HTTPS/TLS (TCP/443) to communicate with Hyperview. The direction is **outbound** from the Data Collector to Hyperview.

Data Collector to assets
^^^^^^^^^^^^^^^^^^^^^^^^
Please make sure that the Data Collector can reach the targeted assets on the applicable ports for your site. Below is a list of the default ports the Data Collector will use, other ports can be used if needed or applicable.

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

Assets to Data Collector
^^^^^^^^^^^^^^^^^^^^^^^^
Please make sure that the asset can reach the targeted Data Collector on the applicable ports for your site. Below is a list of the default ports the Data Collector will use, other ports can be used if needed or applicable.

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

Firewall considerations
^^^^^^^^^^^^^^^^^^^^^^^
Firewalls can interfere with Data Collector communication. It is recommended to test connectivity for the protocols and features you use. The asset discovery report can provide information that may be helpful in troubleshooting connectivity issues.

==============================
Downloading the Data Collector
==============================
#. Log in to your Hyperview instance as an Administrator.
#. Go to *Discoveries → Data Collectors → Download Data Collector*.
#. Select the Operating System. If you select Linux (AMD64) or Linux (RPI ARM64), download and SHA256 checksum links will appear which you can use directly from your terminal.

   |download|

#. Click Download.

.. note:: If you are using Linux, please make sure you are downloading the Data Collector type that is relevant to your CPU architecture. The Linux (AMD64) Data Collector is only intended for Intel and AMD CPU-based systems. Linux (RPI ARM64) Data Collector is for Raspberry Pi 4B systems.

A compressed Data Collector setup package will be downloaded to your browser's default download location, as per your OS. The filename will resemble "dataCollector-9999.zip" (or "linuxDataCollector-9999.tgz" for Linux), where "9999" represents the version number.

=============================
Installing the Data Collector
=============================
Windows installation
--------------------
#. Extract the downloaded Data Collector zip file to a local folder.
#. Browse to the folder and double-click "setup.exe".

   .. tip:: Some security software (such as Microsoft Defender SmartScreen) or Windows features (such as UAC) may interrupt the installation. In such cases you will need to manually allow the Data Collector installer to run, typically via a "run anyway" or similar action.

#. Depending on your environment, you might get prompted to install one or more of the following: .NET framework, Visual C++ runtime libraries, WinPcap. If you do, simply click *Install* and proceed to install the prerequisite software using default values.

   .. note:: While installing WinPCap ensure the "Automatically start the WinPcap drive at boot time" option is selected.

#. Click *Next* to start the Data Collector setup.
#. Accept the license terms by selecting "I accept...", then click *Next*.
#. Choose a different installation folder or click *Next* to accept the default location.

   |dc_install_3|

#. Click *Install*.
#. Toward the end of the process, the Data Collector Configuration Tool will appear. You will need to provide details to register your data collector. Refer to the following section ("Registering the Data Collector") for instructions.

   |dc_install_9|

#. Click *Finish* to complete the installation.

Linux installation (for both AMD64 and RPI ARM64)
-------------------------------------------------
#. Extract the downloaded Data Collector tar file to a local folder.
#. (Optional) Check the package SHA256 hash.
#. Run the install script as root (`install-dc.sh`).
#. Accept the EULA by selecting Yes.

   |ldc-eula|

#. Proceed to register the Data Collector.

.. _Register:

===========================
Registering Data Collectors
===========================
Once you have installed the Data Collector, you need to register it with Hyperview using a unique registration token. The Data Collector Configuration Tool (which registers the Data Collector) is automatically triggered during the Data Collector installation. Once the Data Collector is registered, it will be listed in the Data Collectors grid (*Discoveries → Data Collectors*).

Getting a registration token
----------------------------
#. Log in to your Hyperview instance as an Administrator.
#. Go to *Discoveries → Data Collectors → Add*. The "Add Data Collector" modal will open.
#. Click the copy icon to copy the registration token.

   |dc_install_8|

#. Click *OK* to close the modal.

Registering a Windows Data Collector
------------------------------------
.. tip:: You can also run the Windows Data Collector Configuration Tool from `C:\\Program Files\\Hyperview\\Hyperview Data Collector\\configurationTool\\AgentConfigurer.exe`, assuming you have installed the Data Collector at the default location.

#. Paste the registration token and enter your API hostname (for example, "yourcompany.hyperviewhq.com").
#. Click Advanced to specify additional values, or leave it as default.

   * If you want the Data Collector to use a specific port to communicate with Hyperview, enter an API Port Number.

   * Specify an alternate API Endpoint Name if applicable. Note that ``API`` is the only endpoint name that is currently supported.

   * Deselect the Use HTTPS checkbox if applicable. Note that all our customer-facing APIs are HTTPS-only.

   * In certain scenarios the Data Collector can only communicate via a proxy server. Specify the Proxy URL if applicable.

   * If you are using a custom BACnet device ID, select "Use Custom BACnet Server Device ID" and enter the custom device ID. (If you do not provide the custom device ID the device will still get discovered, but will be assigned a default ID.)

#. Click *Register* to complete the Data Collector registration.

Registering a Linux Data Collector (for both AMD64 and RPI ARM64)
-----------------------------------------------------------------
.. tip:: You can also run the Linux Data Collector Configuration Tool from `/opt/datacollector/bin`.

#. Enter the registration token.
#. Enter your API hostname (for example, "yourinstance.hyperviewhq.com").

   |ldc-install|

#. Enter the API Port Number, or leave it at default (443).
#. Select the protocol (HTTPS or HTTP), or leave it at default (HTTPS).
#. (Optional) Enter proxy details.

The Data Collector will be registered.

===================================
Verifying your Data Collector setup
===================================
In Windows
----------
If your Data Collector was set up correctly, the Services view in Windows (search for the "Services" app from the Windows search bar) will indicate that the Hyperview Data Collector and Hyperview SNMP Trap Listener services are running and set to start automatically, as seen below.

|services|

.. note:: Please ensure the default SNMP Service in Windows is disabled to avoid potential errors due to port conflicts.

In Linux (for both AMD64 and RPI ARM64)
---------------------------------------
Verify that Docker containers resembling the following services are running:

* `datacollector-stack_monitoring-service`
* `datacollector-stack_snmptrapreceiver-service`
* `datacollector-stack_discovery-service`
