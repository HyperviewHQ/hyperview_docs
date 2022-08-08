.. include:: /settings/media.rst
.. _Integrations-doc:

************
Integrations
************

Hyperview Integrations are a separately licensed set of features that let you push or pull data from external systems such as ServiceNow. Each integration is separately licensed.

.. note:: Only licensed instances will have relevant features. To confirm if you have a license for an integration, check the License page (*Settings → License*, Administrator-only).

====================
ServiceNow CMDB Sync
====================

.. note:: At this time only the Rome release of ServiceNow has been tested with this integration.

The ServiceNow CMDB Sync integration is a data mapping and data push service to the `ServiceNow Import Set API <https://docs.servicenow.com/bundle/rome-application-development/page/integrate/inbound-rest/concept/c_ImportSetAPI.html>`_.

.. image:: /settings/media/servicenow_cmdb_diagram.png
   :width: 975
   :alt: ServiceNow CMDB integration diagram

Prerequisites
-------------

1. Setup an import Set Table to receive the data from Hyperview. For the current release, the schema and data map is pre-defined. This is expected to change to be user defined in a future release. The schema is defined below.

2. Setup an OAuth client that is mapped to a user. Take note of the Client ID, Client Secret, Username and Password, these will be needed configuration parameters.

3. Take note of the ImportSet API endpoint and the refresh token endpoint. These will be needed configuration parameters.


Configuration
-------------

Enter the information prepared earlier in their corresponding configuration field.

.. image:: /settings/media/servicenow_cmdb_configuration.png
   :width: 1917
   :alt: ServiceNow CMDB integration configuration

The Last Sync Date, if populated, notes the last timestamp sync has started and finished successfully. This timestamp is used to sync changed assets since the last successful run.

To force a full sync the next time the process runs, reset the last sync date.

Scheduling the sync is optional and if a schedule is selected, the time the process runs will be within plus or minus 15 minutes of the selected schedule configuration.

Supported asset types
---------------------

- Rack
- Rack PDU
- Blade Enclosure
- Blade Network
- Blade Server
- Blade Storage
- Environmental
- KVM Switch
- Monitor
- Network Device
- Network Storage
- Server
- SmallUps
- Transfer Switch

Field mapping
-------------

.. list-table::
   :header-rows: 1
   :align: center

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
^^^^^^^^^^^^^^^^^^^^^^

.. code::

   {
     "records": [
       {
         "u_dns_hostname": [\"dell-server-1.internal\"],
         "u_hyperview_asset_type": "server",
         "u_hyperview_id": "c9dfa9c3-fe06-44fc-b5b0-6bf02fa22457",
         "u_lifecycle_state": "Active",
         "u_location_path": "All / datacenter1 / room1 / rack1",
         "u_manufacturer": "Dell",
         "u_model": "Power-edge R740",
         "u_name": "dell-server-1",
         "u_operating_system": "Windows Server 2019",
         "u_power_providing_asset_ids": "[\"49919266-a6ba-4c31-85ca-c625342d0593\",\" 5877dab3-b4f2-4ae6-8af9-71330916abbc\"]",
         "u_power_providing_assets": "[\"Rack1_left_pdu\",\" Rack1_left_pdu\"]",
         "u_rack_elevation": "22",
         "u_rack_location": "rack1",
         "u_rack_location_id": "8bffed90-fbc6-4853-acae-af1461221078",
         "u_rack_side": "Front",
         "u_room_location": "Room1",
         "u_room_location_id": "63e87bd1-0945-496d-9b68-088a7825ea48",
         "u_serial_number": "[\"2acd3873\"]"
       },
       {
         "u_dns_hostname": [\"dell-server-2.internal\"],
         "u_hyperview_asset_type": "server",
         "u_hyperview_id": "c9dfa9c3-fe06-44fc-b5b0-6bf02fa22458",
         "u_lifecycle_state": "Active",
         "u_location_path": "All / datacenter1 / room1 / rack1",
         "u_manufacturer": "Dell",
         "u_model": "Power-edge R740",
         "u_name": "dell-server-2",
         "u_operating_system": "Windows Server 2019",
         "u_power_providing_asset_ids": "[\"49919266-a6ba-4c31-85ca-c625342d0593\",\" 5877dab3-b4f2-4ae6-8af9-71330916abbc\"]",
         "u_power_providing_assets": "[\"Rack1_left_pdu\",\" Rack1_left_pdu\"]",
         "u_rack_elevation": "23",
         "u_rack_location": "rack1",
         "u_rack_location_id": "8bffed90-fbc6-4853-acae-af1461221078",
         "u_rack_side": "Front",
         "u_room_location": "Room1",
         "u_room_location_id": "63e87bd1-0945-496d-9b68-088a7825ea48",
         "u_serial_number": "[\"2acd3874\"]"
       }
     ]
   }

