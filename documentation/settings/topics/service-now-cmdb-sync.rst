.. include:: /settings/media.rst
.. _Servicenow-cmdb-sync-doc:

********************
ServiceNow CMDB Sync
********************

.. note:: At this time only the Rome release of ServiceNow has been tested with this integration.

The ServiceNow CMDB Sync integration is a data mapping and data push service to the `ServiceNow Import Set API <https://docs.servicenow.com/bundle/rome-application-development/page/integrate/inbound-rest/concept/c_ImportSetAPI.html>`_.

.. image:: /settings/media/servicenow_cmdb_diagram.png
   :width: 975
   :alt: ServiceNow CMDB integration diagram

=============
Prerequisites
=============

1. Setup an import Set Table to receive the data from Hyperview. For the current release, the schema and data map is pre-defined. This is expected to change to be user defined in a future release. The schema is defined below.

2. Setup an OAuth client that is mapped to a user. Take note of the Client ID, Client Secret, Username and Password, these will be needed configuration parameters.

3. Take note of the ImportSet API endpoint and the refresh token endpoint. These will be needed configuration parameters.

=============
Configuration
=============

Enter the information prepared earlier in their corresponding configuration field.

.. image:: /settings/media/servicenow_cmdb_configuration.png
   :width: 1917
   :alt: ServiceNow CMDB integration configuration

The Last Sync Date, if populated, notes the last timestamp sync has started and finished successfully. This timestamp is used to sync changed assets since the last successful run.

To force a full sync the next time the process runs, reset the last sync date.

Scheduling the sync is optional and if a schedule is selected, the time the process runs will be within plus or minus 30 minutes of the selected schedule configuration.

=====================
Supported asset types
=====================

- Blade Enclosure
- Blade Network
- Blade Server
- Blade Storage
- Environmental
- KVM Switch
- Monitor
- Network Device
- Network Storage
- Rack
- Rack PDU
- Server
- Small UPS
- Transfer Switch
- UPS

=============
Field mapping
=============

.. list-table::
   :header-rows: 1
   :align: center
   :class: datatable display compact

   * - Hyperview
     - Import Set
     - Data Type
     - Required
   * - hyperview_id
     - u_hyperview_id
     - String
     - Yes
   * - name
     - u_name
     - String
     - Yes
   * - hyperview_asset_type
     - u_hyperview_asset_type
     - String
     - Yes
   * - serial_number
     - u_serial_number
     - String
     - Yes
   * - model
     - u_model
     - String
     - Yes
   * - manufacturer
     - u_manufacturer
     - String
     - Yes
   * - location_path
     - u_location_path
     - String
     - Yes
   * - room_location
     - u_room_location
     - String
     - Yes
   * - room_location_id
     - u_room_location_id
     - String
     - Yes
   * - lifecycle_state
     - u_lifecycle_state
     - String
     - Yes
   * - dns_hostname
     - u_dns_hostname
     - String
     - No
   * - rack_location
     - u_rack_location
     - String
     - No
   * - rack_location_id
     - u_rack_location_id
     - String
     - No
   * - rack_elevation
     - u_rack_elevation
     - Int/numeric
     - No
   * - rack_side
     - u_rack_side
     - String
     - No
   * - operating_system
     - u_operating_system
     - String
     - No
   * - power_providing_assets
     - u_power_providing_assets
     - String
     - No
   * - power_providing_asset_ids
     - u_power_providing_asset_ids
     - String
     - No

Note that when there are ID and name fields returned as an array, the sorting order will be the same. For example, if the asset has two power-providing assets, the name and ID order in their respective arrays will be the same. This is done to make it easier to write data reconciliation rules on the ServiceNow side.

ImportSet JSON Example
----------------------

.. code::

    {
        "records": [{
            "u_hyperview_id": "0ff3ba9d-f8e8-4e0a-ae4f-ead3c2f7b90d",
            "u_dns_hostname": "[]",
            "u_hyperview_asset_type": "server",
            "u_lifecycle_state": "Active",
            "u_location_path": "All/Vancouver",
            "u_manufacturer": "Supermicro",
            "u_model": "SYS-6018U-TR4+",
            "u_name": "Server-1",
            "u_operating_system": null,
            "u_power_providing_asset_ids": "[\"775a9bef-7e68-464d-bf69-473e0e60a860\"]",
            "u_power_providing_assets": "[\"PDU1\"]",
            "u_rack_elevation": 44,
            "u_rack_location": "Afco 45U",
            "u_rack_location_id": "9c40fcbd-46d9-43eb-b7ca-3e9ae18446b0",
            "u_rack_side": "Front",
            "u_room_location": "Vancouver",
            "u_room_location_id": "2644c8d2-fc68-4e64-9a7c-4bf7b2f52712",
            "u_serial_number": "[\"S16579724910784\"]"
        }, {
            "u_hyperview_id": "2029182c-3e88-43d8-bb20-ea84e871a12f",
            "u_dns_hostname": "[]",
            "u_hyperview_asset_type": "environmental",
            "u_lifecycle_state": "Active",
            "u_location_path": "All/Vancouver/Afco 45U/Watchdog 1000",
            "u_manufacturer": "Geist",
            "u_model": "Watchdog 1000",
            "u_name": "Watchdog 1000",
            "u_operating_system": null,
            "u_power_providing_asset_ids": "[]",
            "u_power_providing_assets": "[]",
            "u_rack_elevation": 42,
            "u_rack_location": "Afco 45U",
            "u_rack_location_id": "9c40fcbd-46d9-43eb-b7ca-3e9ae18446b0",
            "u_rack_side": "Front",
            "u_room_location": "Vancouver",
            "u_room_location_id": "2644c8d2-fc68-4e64-9a7c-4bf7b2f52712",
            "u_serial_number": "[\"280DB814060000C2\"]"
        }, {
            "u_hyperview_id": "26c45e46-8a6d-4f34-a771-afb56db3205c",
            "u_dns_hostname": "[]",
            "u_hyperview_asset_type": "ups",
            "u_lifecycle_state": "Active",
            "u_location_path": "All/ABB UPS",
            "u_manufacturer": "ABB",
            "u_model": "DPA 500",
            "u_name": "ABB UPS",
            "u_operating_system": null,
            "u_power_providing_asset_ids": "[]",
            "u_power_providing_assets": "[]",
            "u_rack_elevation": null,
            "u_rack_location": null,
            "u_rack_location_id": null,
            "u_rack_side": null,
            "u_room_location": "All",
            "u_room_location_id": "11223344-5566-7788-99aa-bbccddeeff00",
            "u_serial_number": "[\"XP023\"]"
        }]
    }


=======================
Work Orders integration
=======================

The ServiceNow CMDB Sync system integrates with Work Orders. Once the feature is enabled and configured it will automatically create a Work Order. Work Orders serve as a means to track the job status and as a way to troubleshoot issues if any arise.

Work orders will be listed in the Hyperview Work Orders area.

.. image:: /settings/media/scheduled_work_order.png
   :width: 2374
   :alt: Scheduled Work Order

The Work Order details will list the assets that were synced to ServiceNow CMDB. The details page will show an appropriate notification if there are no assets to sync and if there were any errors.

.. image:: /settings/media/scheduled_work_order_with_assets.png
   :width: 2374
   :alt: Scheduled Work Order with assets

