.. include:: /auto-discovery/media.rst

*******************************
What kind of data is collected?
*******************************

Three types of data is collected by Hyperview:

* Data needed to identify assets (e.g. make, model and serial number)
* Data to monitor the utilization of assets (e.g. power draw or CPU utilization)
* Data to graph the relationship of an asset in relation to other assets (e.g. network connectivity and power connectivity).

With that in mind, data collection follows these design tenants to ensure security and privacy:

- *The customer is in control of what protocols to enable.*
- *The customer is in control of the privilege level of the user used to collect data. Data collection will function with read only access levels.*
- *The customer is in control of what networks and IP ranges to discover and monitor.*
- *The customer is in control on where to place a data collector in the network and which networks it will have access to.*

Only data needed to perform the aforementioned tasks is collected. Below is a list of data types that is discovered and monitored by protocol and, where applicable, by device type.

.. note:: The following list may change based on the capabilities of the target systems, vendors, firmware versions, allowed access, and protocol versions. While every effort has been made to ensure the list is comprehensive, Hyperview is a continuously developed product that operates in a multi-vendor environment where networked assets are constantly changing, and where vendors extend standard protocols or implement them in a non-standard way. As a result, there may be some variation in what data is collected and monitored between vendors and generations of hardware/firmware.

===============================================
BMC-based Protocols: IPMI, iLo, ILOM, and iDRAC
===============================================
• Firmware version
• Make and model of the device
• Motherboard serial number
• Device serial number
• Temperature sensors
• Voltage sensors
• Current sensors
• Fan sensors
• Chassis physical security sensor
• Processor type, make and model
• Power supply sensors
• Power state Sensor
• Memory type, make and model
• Drive slot configuration
• BMC LAN information
• Management subsystem health
• Field replaceable unit state

========================
Modbus TCP and BACnet/IP
========================
Modbus TCP and BACNet/IP protocols are monitoring-only. Because of the nature of these two protocols, Hyperview includes a constructor that allows customers to create custom definitions for what they want to monitor.

====
SNMP
====
SNMP is a definitions-based protocol and supports a large variety of devices, types and manufacturers. Below is a list of the general types of data and sensors discovered and monitored by Hyperview based on device type. Please note that the intention is to give the reader a good idea on what is monitored. The specific list of sensors read on an asset depends on the manufacturer, asset type, the capabilities embedded in the SNMP implementation and the device definition provided by Hyperview.

Network Device
--------------
• Switch port configuration
• MAC addresses per port
• Identification and inventory information
• VLAN information

Busway
------
• Frequency
• Phase current
• Phase power
• Phase VA
• Phase voltage
• Phase voltage total
• Total current
• Total load
• Total power
• Total VA
• Total VAR

Chiller
-------
• Cooling demand
• Cooling load
• Cooling output
• Humidification active
• Dehumidification active
• Sensor failure
• Power
• Return temperature

CRAC
----
• Air flow
• Cooling demand
• Cooling load
• Cooling output
• Dehumidification active
• Dew point
• Enter water temperature
• Fan failure boolean
• Fan speed
• Humidification active
• Power
• Return humidity
• Return temperature
• Supply humidity
• Supply temperature

CRAH
----
• Air flow
• Cooling demand
• Cooling load
• Cooling output
• Dehumidification active
• Fan speed
• Humidification active
• Power
• Return humidity
• Return temperature
• Supply humidity
• Supply temperature

Environmental Monitor
---------------------
• Air flow
• Ambient temperature
• Analog input
• Camera motion
• Dew point
• Door lock status
• Door status
• Door switch
• Dry contact
• Humidity
• Leak alarm zone
• Leak cable current
• Leak unit distance
• Leak unit status
• Leak zone distance
• Leak zone status
• Light level
• Power
• Pressure
• Smoke alarm
• Sound level

Generator
---------
• Battery current
• Battery voltage
• Frequency
• Fuel level
• Oil pressure
• Phase current
• Phase power
• Phase VA
• Phase voltage
• Plant battery voltage
• Running
• Total current
• Total power
• Total VA
• Total VAR

In-Row Cooling
--------------
• Airflow
• Cooling demand
• Cooling load
• Cooling output
• Dehumidification active
• Fan speed
• Humidification active
• Power
• Return humidity
• Return temperature
• Supply humidity
• Supply temperature

PDU
---
• Breaker current
• Emergency power
• Frequency
• Panel current
• Panel phase current
• Panel power
• Panel VA
• Phase current
• Phase load
• Phase power
• Phase rotation loss
• Phase VA
• Phase voltage
• Power factor
• Total current
• Total load
• Total power
• Total VA
• Total VAR

Power Meter
-----------
• Frequency
• Phase current
• Phase power
• Phase VA
• Phase voltage
• Total current
• Total power
• Total VA
• Total VAR

Rack or Tower UPS
-----------------
• Battery capacity
• Battery current
• Battery discharging
• Battery voltage
• Bypass frequency
• Output power
• Output source
• Output total load
• Output total power
• Output total VA
• Output VA
• Phase bypass current
• Phase bypass power
• Phase bypass voltage
• Phase input current
• Phase input frequency
• Phase input power
• Phase input voltage
• Phase output current
• Phase output load
• Phase output voltage
• Power factor
• Runtime remaining
• Usable power

Rack PDU
--------
• Current
• Outlet power
• Outlet status
• Power factor
• Total current
• Total load
• Total power
• Total VA
• Usable power

Transfer Switch
---------------
• Selected source
• Source 1 circuit breaker 1 open
• Source 1 failure status
• Source 1 frequency
• Source 1 overload
• Source 1 over voltage
• Source 1 phase current
• Source 1 phase voltage
• Source 1 under voltage
• Source 2 circuit breaker 1 open
• Source 2 failure status
• Source 2 frequency
• Source 2 overload
• Source 2 over voltage
• Source 2 phase current
• Source 2 phase voltage
• Source 2 under voltage
• Total load
• Total power
• Total VA

UPS
---
• Battery capacity
• Battery current
• Battery discharging
• Battery status
• Battery voltage
• Bypass frequency
• Frequency
• Output current
• Output source
• Output total load
• Output total power
• Output total VA
• Output voltage
• Phase bypass current
• Phase bypass power
• Phase bypass voltage
• Phase input current
• Phase input frequency
• Phase input power
• Phase input voltage
• Phase output current
• Phase output load
• Phase output power
• Phase output VA
• Phase output voltage
• Power factor
• Runtime remaining
• Total VAR

Utility Breaker
---------------
• Breaker position
• Frequency
• Phase current
• Phase power
• Phase VA
• Phase voltage
• Total current
• Total power
• Total VA
• Total VAR

==================
SSH for Linux/Unix
==================
• Installed software list
• CPU information
• CPU utilization
• RAM information
• RAM utilization
• Network hardware information (e.g. IP and MAC)
• Disk capacity sensor
• Storage hardware information

===========
Windows WMI
===========
• Installed software list (apt/rpm tool)
• CPU information
• CPU utilization
• RAM information
• RAM utilization
• Network hardware information (e.g. IP and MAC)
• Disk capacity sensor
• Storage hardware information
• Hyper-V virtual machine list
