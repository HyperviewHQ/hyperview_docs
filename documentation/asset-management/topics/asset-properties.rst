.. include:: /asset-management/media.rst
.. _Important-asset-properties-doc:

****************
Asset properties
****************
Assets can have many properties and many property types. These properties can be updated using one of the following methods:

1. Discovery
2. Inherited from catalog data
3. Inherited from the parent asset at creation
4. Filled by a third-party integration
5. Inputted by the user

Asset properties can have an impact on how the system behaves. Some critical properties, especially identifying properties like Serial Number and GUID, cannot be changed once they have been populated by the auto-discovery process.

.. note:: Certain properties such as "Rack Design" are copied from a property set on the parent location. This is done on asset creation only.

Asset properties are usually grouped under the following types:

====
Base
====
These are the properties of Name, Location, Type, Manufacturer and Model. The base properties answer the **what** and **where** questions of an asset.

Base properties of an asset are usually detected by the auto-discovery process. However, a user can always update an asset manually or override the data filled in by auto-discovery.

For manually added assets, these properties can be set individually or in bulk using the **Import** feature.

=======
Contact
=======
These are location-specific properties. They contain, the address, latitude, longitude and the location's human contact information.

The Address property is always checked using the Google Maps API and once a match is found, the validated address is stored along with the latitude and longitude reported by the API.

This data is used to plot the location on the map layout and is also used to read the available weather forecast.

=======
Cooling
=======
These properties apply to locations and racks. It controls the behavior of the Delta-T calculation for racks that have linked temperature sensors. New racks will clone their parent location's setting. Users can override this value per rack or in bulk.

=================
Location settings
=================
These properties apply to locations. Location settings contain properties that provide metadata about the location such as location type, and properties that dictate the default values set for new racks created under the location.

The **Rack Design** property sets the power **Design Value** which is the power budget for the rack and the **Desired Rack Temperature** sets the desired average temperature value for the rack.

============
AssetTracker
============
These properties apply to racks and assets that can be mounted in a rack. The **AssetTracker ID** property holds the RFID tag ID which is used to automatically track the location of the asset.

The **Master Module ID** property is rack specific and it holds the ID of the master module assigned to the rack.

More information is provided in the :ref:`AssetTracker <AssetTracker-doc>` section.

=======
General
=======
These properties contain asset information such as serial number, firmware version and GUID. General properties can vary by asset type. It is required, however, that assets have at least a unique serial number.

=====
Model
=====
These properties are usually filled in from the product catalog. More information about model data and how it is managed is provided in the :ref:`Catalog Management <Catalog-management-doc>` section.

=====
Power
=====
These properties apply to power-providing and power-consuming assets. They hold information such as the number of phases, rated power, number of outlets, power factor and other power properties.

Power properties are usually provided by the product catalog or by the auto-discovery process. In some cases, they can be updated by the user when an asset is added manually.

Power properties are especially important for power-providing assets such as rack PDUs. They can influence alarm event triggers, such as a warning when reaching 80% of rated power. Or can influence the behavior of other power-related asset pages such as the layout page of a rack PDU.

Location-specific power properties
----------------------------------
- **Design Value** is the power budget in Watts for the location, this setting influences alarm event thresholds and power charts for the location.
- **IT Energy Setting** controls how the IT Energy sensor for the location is derived, and it selects the appropriate PUE calculation for the location.
- **Rack Total Power Setting** sets the initial default total power sensor calculation for child racks created under the location. Users can override this setting per rack.

Rack-specific power properties
------------------------------
- **Design Value** is the power budget in Watts for the rack, this setting influences alarm event thresholds and power charts for the rack. The default setting of this value is copied from the parent location's "Rack Design" property at creation. Users can override this setting for specific racks.
- **Rack Total Power Setting** controls the calculation method for the Total Power sensor. TThe default method is copied from the parent location at creation. Users can override this setting per rack.

====
SNMP
====
Where applicable, some SNMP properties are read by the auto-discovery process and provided to users as extra metadata, such as configured device contact, and system description. This data is useful when seeing if devices have been configured properly and when troubleshooting issues.
