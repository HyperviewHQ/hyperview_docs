*****************
Sensor Management
*****************

============
Key concepts
============

Sensor categories
-----------------
Sensor data is one of the primary data and analytics pipelines in Hyperview. Sensors have to be associated with assets and have the following categories:

1. Direct: these sensors are directly attached to assets. For example, the Total Output Power sensor is read from a rack PDU. Data collectors update direct sensors.
2. Linked: these sensors are sourced from other assets. For example, a temperature sensor discovered on an environmental monitor may provide information on the temperature of a rack.
3. Computed: These sensors are computed from data available in the platform, For example, available rack space in a rack or from other read data or sensors; for instance, Output KVA and power factor can allow you to calculate total output power.
4. Manual: These sensors are created and updated manually.

Sensor types
------------
Every sensor has a type, and there are hundreds of sensor types. The type of the sensor is independent of the sensor category. For example, a power sensor on an asset can be updated by a data collector, computed from available information, or manually updated.

Monitoring profile
------------------
Every asset has a monitoring profile, which dictates how asset sensors are updated. The following sensor monitoring profiles are available in Hyperview.

1. BACnet IP
2. Discovered
3. Modbus TCP
4. Manual

The default profile for all assets is Discovered. This means that sensors are automatically discovered and updated.

For Modbus TCP or BACnet IP network-connected assets, a sensor definition is configured in Hyperview and then assigned to the asset as part of the monitoring profile. A data collector is also assigned to update sensor values automatically.

A Manual sensor profile will indicate to Hyperview that the user will manually manage sensors and sensor data.

=====================
Sensors and Analyzers
=====================


=====================
Sensors and licensing
=====================

