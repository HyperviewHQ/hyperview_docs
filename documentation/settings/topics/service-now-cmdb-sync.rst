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

1. Setup an import Set Table to receive the data from Hyperview. A default asset type list and property data map are set. They can be customized as needed.

2. Setup an OAuth client that is mapped to a user. Take note of the Client ID, Client Secret, Username and Password, these will be needed configuration parameters.

3. Take note of the ImportSet API endpoint and the refresh token endpoint. These will be needed configuration parameters.

=============
Configuration
=============

Enter the information prepared earlier in their corresponding configuration field.

.. image:: /settings/media/servicenow_overview.png
   :width: 1781
   :alt: ServiceNow CMDB integration overview

The Last Sync Date, if populated, notes the last timestamp sync has started and finished successfully. This timestamp is used to sync changed assets since the last successful run.

To force a full sync the next time the process runs, reset the last sync date.

=====================
Supported asset types
=====================

Users are able to customize which asset types to sync. By default, all types are synced.

.. image:: /settings/media/servicenow_asset_types.png
   :width: 1801
   :alt: ServiceNow CMDB supported asset types

================
Property mapping
================

Property mapping is customizable. Properties can be enabled or disabled, and the corresponding ImportSet field can be customized.

.. image:: /settings/media/servicenow_field_mapping.png
   :width: 1800
   :alt: ServiceNow CMDB integration property mapping

Note that when there are ID and name fields returned as an array, the sorting order will be the same. For example, if the asset has two power-providing assets, the name and ID order in their respective arrays will be the same. This is done to make it easier to write data reconciliation rules on the ServiceNow side.

ImportSet JSON example
----------------------

.. code::

    {
        "records": [{
            "id": "0ff3ba9d-f8e8-4e0a-ae4f-ead3c2f7b90d",
            "dns_hostname": "[]",
            "asset_type": "server",
            "lifecycle_state": "Active",
            "location_path": "All/Vancouver",
            "manufacturer": "Supermicro",
            "model": "SYS-6018U-TR4+",
            "name": "Server-1",
            "operating_system": null,
            "power_providing_asset_ids": "[\"775a9bef-7e68-464d-bf69-473e0e60a860\"]",
            "power_providing_assets": "[\"PDU1\"]",
            "rack_elevation": 44,
            "rack_location": "Afco 45U",
            "rack_location_id": "9c40fcbd-46d9-43eb-b7ca-3e9ae18446b0",
            "rack_side": "Front",
            "room_location": "Vancouver",
            "room_location_id": "2644c8d2-fc68-4e64-9a7c-4bf7b2f52712",
            "serial_number": "[\"S16579724910784\"]"
        }, {
            "id": "2029182c-3e88-43d8-bb20-ea84e871a12f",
            "dns_hostname": "[]",
            "asset_type": "environmental",
            "lifecycle_state": "Active",
            "location_path": "All/Vancouver/Afco 45U/Watchdog 1000",
            "manufacturer": "Geist",
            "model": "Watchdog 1000",
            "name": "Watchdog 1000",
            "operating_system": null,
            "power_providing_asset_ids": "[]",
            "power_providing_assets": "[]",
            "rack_elevation": 42,
            "rack_location": "Afco 45U",
            "rack_location_id": "9c40fcbd-46d9-43eb-b7ca-3e9ae18446b0",
            "rack_side": "Front",
            "room_location": "Vancouver",
            "room_location_id": "2644c8d2-fc68-4e64-9a7c-4bf7b2f52712",
            "serial_number": "[\"280DB814060000C2\"]"
        }, {
            "id": "26c45e46-8a6d-4f34-a771-afb56db3205c",
            "dns_hostname": "[]",
            "asset_type": "ups",
            "lifecycle_state": "Active",
            "location_path": "All/ABB UPS",
            "manufacturer": "ABB",
            "model": "DPA 500",
            "name": "ABB UPS",
            "operating_system": null,
            "power_providing_asset_ids": "[]",
            "power_providing_assets": "[]",
            "rack_elevation": null,
            "rack_location": null,
            "rack_location_id": null,
            "rack_side": null,
            "room_location": "All",
            "room_location_id": "11223344-5566-7788-99aa-bbccddeeff00",
            "serial_number": "[\"XP023\"]"
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

