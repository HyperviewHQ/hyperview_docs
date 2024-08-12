*****************
Sensor Management
*****************

============
Key concepts
============

Sensor categories
-----------------
Sensor data is one of the main data and analytics pipelines in Hyperview. Sensors have to be associated with assets and have the following categories:

1. Direct, these are sensors that are discovered to be directly attached to assets. Direct sensors are refreshed by the monitoring pipeline. For example, Total output power read from a rack PDU. Direct sensors are updated by data collectors.
2. Linked, these are sensors that are sourced from other assets. For example, a temperature sensor discovered on an environmental monitor may provide information on the temperature of a rack.
3. Computed, These are sensors that are computed from data available in the platform, For example, available rack space in a rack or from other read data or sensors, for example, Output KVA and power factor can allow you to calculate total ourput power.
4. Manual, These are sensors that are created and updated manually.

Sensor types
------------
Every sensor has a type, there are hundreds of sensor types. The type of the sensor is independent of the sensor category. For example, a Power sensor on an asset can be direct, it can be computed from available information provided by the asset, or manual.

