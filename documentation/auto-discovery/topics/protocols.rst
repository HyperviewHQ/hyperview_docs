.. include:: /auto-discovery/media.rst
.. _Supported-protocols-doc:

*******************
Supported protocols
*******************

Hyperview supports two high-level protocol types for asset discovery:

* Standards-based protocols
* Definition-based protocols

.. note:: As of Hyperview 3.4, Linux Data Collectors only support SSH, SNMP, IPMI, and Modbus TCP protocols.

=========================
Standards-based protocols
=========================
Standards-based protocols (such as WMI, IPMI, and VMware) are typically from a single vendor and can be described with a standard algorithm with little to no variation across devices. The following tables describe standards-based protocols that are supported by Hyperview.

**IPMI (iDRAC/iLO/ILOM)**

+---------------------+------------------------------------------------------------------------------------+
| Asset Type Examples | Servers                                                                            |
+---------------------+------------------------------------------------------------------------------------+
| Default Port        | 623 (configurable)                                                                 |
+---------------------+------------------------------------------------------------------------------------+
| Information         | Hardware properties                                                                |
+---------------------+------------------------------------------------------------------------------------+
| Credentials         | Username/password                                                                  |
+---------------------+------------------------------------------------------------------------------------+
| Point of Contact    | Individual assets                                                                  |
+---------------------+------------------------------------------------------------------------------------+

**VMware**

+---------------------+------------------------------------------------------------------------------------+
| Asset Type Examples | Virtual servers                                                                    |
+---------------------+------------------------------------------------------------------------------------+
| Default Port        | Configurable                                                                       |
+---------------------+------------------------------------------------------------------------------------+
| Information         | Relevant to VMware virtual machines                                                |
+---------------------+------------------------------------------------------------------------------------+
| Credentials         | Username/password                                                                  |
+---------------------+------------------------------------------------------------------------------------+
| Point of Contact    | vCenter host, vSphere host                                                         |
+---------------------+------------------------------------------------------------------------------------+

**WMI**

+---------------------+------------------------------------------------------------------------------------+
| Asset Type Examples | Windows OS servers                                                                 |
+---------------------+------------------------------------------------------------------------------------+
| Default Port        | 135 (configurable)                                                                 |
+---------------------+------------------------------------------------------------------------------------+
| Information         | Windows OS properties                                                              |
+---------------------+------------------------------------------------------------------------------------+
| Credentials         | Windows login                                                                      |
+---------------------+------------------------------------------------------------------------------------+
| Point of Contact    | Individual assets                                                                  |
+---------------------+------------------------------------------------------------------------------------+

==========================
Definition-based protocols
==========================
Definition-based protocols (such as SNMP, SSH, and BACnet/IP) can have many variations across devices or operating systems, with the only common element being the protocol or language to query the devices. SNMP, for example, can be implemented on power, network, and facility devices. Each of these devices can have its own level of support for the protocol and its unique sensor map.

Within definition-based protocols, there are two subcategories:

* Discoverable protocols
* Monitoring-only protocols

Discoverable protocols
----------------------
Discoverable definition-based protocols include SNMP and SSH. Using these protocols, Hyperview can use identification information in the database to automatically identify a device. It will then use the device definition (based on our proprietary domain-specific language) to map and query the device's sensors.

The following tables describe SNMP and SSH support.

**SNMP**

+---------------------+------------------------------------------------------------------------------------+
| Asset Type Examples | All                                                                                |
+---------------------+------------------------------------------------------------------------------------+
| Default Port        | 161 (configurable)                                                                 |
+---------------------+------------------------------------------------------------------------------------+
| Information         | Anything contained in manufacturer MIB and Hyperview device definitions            |
+---------------------+------------------------------------------------------------------------------------+
| Credentials         | Community String (v1, v2c), authentication (v3)                                    |
+---------------------+------------------------------------------------------------------------------------+
| Point of Contact    | Individual assets                                                                  |
+---------------------+------------------------------------------------------------------------------------+

**SSH**

+---------------------+------------------------------------------------------------------------------------+
| Asset Type Examples | Linux OS servers and network equipment                                             |
+---------------------+------------------------------------------------------------------------------------+
| Default Port        | 22 (configurable)                                                                  |
+---------------------+------------------------------------------------------------------------------------+
| Information         | Hardware and OS properties                                                         |
+---------------------+------------------------------------------------------------------------------------+
| Credentials         | Username/password, ssh key                                                         |
+---------------------+------------------------------------------------------------------------------------+
| Point of Contact    | Individual assets                                                                  |
+---------------------+------------------------------------------------------------------------------------+

Monitoring-only protocols
-------------------------
Monitoring-only definition-based protocols include Building Automation and Control (BACnet/IP) and Modbus TCP. These protocols are mostly used for building management and industrial control applications.

.. note:: Since every BACnet/IP and Modbus TCP implementation is unique, you must create custom definitions in Hyperview to describe sensors and sensor mappings so that relevant device and device properties can be discovered.

**BACnet/IP**

+---------------------+------------------------------------------------------------------------------------+
| Asset Type Examples | Facility Equipment (UPS, PDU, RPP, CRAC, CRAH, Chiller, InRow Cooling, Generator)  |
+---------------------+------------------------------------------------------------------------------------+
| Default Port        | 47808 (configurable)                                                               |
+---------------------+------------------------------------------------------------------------------------+
| Information         | Custom-built from protocol definition and varies per device                        |
+---------------------+------------------------------------------------------------------------------------+
| Credentials         | None                                                                               |
+---------------------+------------------------------------------------------------------------------------+
| Point of Contact    | BACnet/IP controller, device                                                       |
+---------------------+------------------------------------------------------------------------------------+

**Modbus TCP**

+---------------------+------------------------------------------------------------------------------------+
| Asset Type Examples | Facility Equipment (UPS, PDU, RPP, CRAC, CRAH, Chiller, InRow Cooling, Generator)  |
+---------------------+------------------------------------------------------------------------------------+
| Default Port        | 502 (configurable)                                                                 |
+---------------------+------------------------------------------------------------------------------------+
| Information         | Custom-built from protocol definition and varies per device                        |
+---------------------+------------------------------------------------------------------------------------+
| Credentials         | None                                                                               |
+----------------------------------------------------------------------------------------------------------+
| Point of Contact    | Modbus master, Modbus gateway, or each device                                      |
+---------------------+------------------------------------------------------------------------------------+

Other protocols
---------------
Hyperview has support for the MQTT protocol. If you have MQTT-based hardware that you would like supported please contact the Hyperview support team.

.. note:: Support for MQTT is limited to the Linux Data Collector.
