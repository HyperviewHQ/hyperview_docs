*****************
Sensor Management
*****************

============
Key concepts
============

Sensor categories
-----------------
Sensor data is one of the primary data and analytics pipelines in Hyperview. Sensors have to be associated with assets and have the following categories:

1. Direct: These sensors are directly attached to assets. For example, the Total Output Power sensor is read from a rack PDU. Data collectors update direct sensors.
2. Linked: These sensors are sourced from other assets. For example, a temperature sensor discovered on an environmental monitor may provide information on the temperature of a rack.
3. Computed: These sensors are computed from data available in the platform such as available rack space in a rack, sensor readings, and other read data.
4. Manual: These sensors are created and updated manually.

Sensor types
------------
Every sensor has a type, and there are hundreds of sensor types. The type of the sensor is independent of the sensor category. For example, a power sensor on an asset can be updated by a data collector, computed from available information, or manually updated.

Monitoring profile
------------------
Every asset has a monitoring profile, which dictates how asset sensors are updated. The following sensor monitoring profiles are available in Hyperview.

1. BACnet/IP
2. Discovered
3. Manual
4. Modbus TCP

The default profile for all assets is Discovered. This means that sensors are automatically discovered and updated.

For Modbus TCP or BACnet/IP network-connected assets, a sensor definition is configured in Hyperview and then assigned to the asset as part of the monitoring profile. A data collector is also assigned to update sensor values automatically.

A Manual sensor profile will indicate to Hyperview that the user will manually manage sensors and sensor data.

.. important:: An asset can have only one monitoring profile. Switching an asset's Sensor Monitoring Profile will delete previous sensors and create new ones where applicable. You can manage this setting from the asset's *Information -> Sensor Monitoring* page.


=====================
Sensors and analyzers
=====================
Analyzers are part of the Hyperview expert system. They are called upon to help normalize data, for example, by calculating a power sensor if the asset provides no direct information but provides enough information to calculate it. They are also called upon to calculate computed sensors from information supplied by the user. For example, we can use asset elevation information to calculate operational information like total rack capacity in a location or maximum available contiguous space in a rack to aid in future asset placement.

Analyzers perform a critical role in normalizing the data for assets across manufacturers and models. Furthermore, they perform near real-time analytics on critical metrics, such as energy metering for racks and locations, rack Delta-T, Power Utilization Effectiveness, and carbon footprint equivalency. The analysis covers the following areas:

1. Power
2. Energy
3. Temperature and Humidity
4. Space utilization
5. Carbon footprint

Computed sensors are created and associated with the appropriate assets to hold the analysis results. The Hyperview expert system monitors the data and event flow and performs analysis in near real-time. Some analytics, such as daily aggregations and statistical summaries, are performed on a schedule.

=====================
Sensors and licensing
=====================

Sensors in Hyperview are created through various methods:

1. Asset sensors are automatically discovered and monitored.
2. Applying a BACnet/IP or Modbus TCP definition to an asset.
3. Manually created if the asset has a manual sensor monitoring profile.
4. Computed by an analyzer.

Sensor counts can change and thus impact licensing through the following methods:

1. Adding or discovering more assets.
2. Deleting or merging assets.
3. Connecting sensors to an existing asset. For example, adding a sensor bundle to a rack PDU.
4. Creating power associations between assets and rack PDUs.
5. An improvement or bug fix in the discovery system that allows the discovery of more sensors. For example, a new or updated device definition.
6. More Analyzers to provide more intelligence and metrics. This will add more computed sensors.

If your sensor or asset count exceeds the license threshold, the primary account contact will get an email notification. Your account manager will also contact you.

.. important:: Under no circumstance will Hyperview (as an application) delete assets or sensors. We will always work with you to answer questions and rectify any licensing issues. On the other hand, customers can delete assets and/or sensors.
