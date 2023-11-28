.. include:: /settings/media.rst
.. _Equinix-smart-view-integration-doc:

******************************
Equinix Smart View Integration
******************************

.. note:: The integration is available to Hyperview users who are also Equinix customers and have Smart View access. Please contact your Equinix representative to enable access to Smart View.

This integration is a data synchronization service that allows Hyperview customers to get information about the infrastructure products they have with Equinix. The service will automatically synchronize and map the location hierarchy, available power and environmental sensors.

Once configured, the location hierarchy from IBX to rack will be created. Sensors exposed through the Equinix Smart View API will be created, mapped to the right asset and tracked.

=============
Prerequisites
=============

1. Equinix Smart View is `available for the IBX <https://docs.equinix.com/en-us/Content/Colocation/SmartView/smartview-availability.htm>`_ you are deployed in
2. An Equinix Smart View Account. Please contact your Equinix representative if you do not have access to Smart View
3. `API Credentials <https://developer.equinix.com/docs?page=/dev-docs/smartview/overview>`_ in the form of a Client ID and a Client Secret
4. The `IBX codes <https://www.equinix.com/data-centers>`_ for where the equipment is deployed. For example, the Ottawa Canada IBX code is OT1
5. Your Equinix Account number

=============
Configuration
=============
Enter the Client ID and Client Secret in their corresponding configuration field. It is recommended that the entered credentials be tested using the Test Authentication button before a sync is attempted.

.. image:: /settings/media/equinix_smart_view_settings_overview.png
   :width: 2874px
   :alt: Equinix Smart View integration overview
   :class: border-black

Next, add your IBX and Account number information. If you have infrastructure in multiple IBX locations simply add them to the list and Sync the information. Please take care to confirm the rack make and model before you enter the information or simply add your configuration in the Catalog before adding an IBX.

.. image:: /settings/media/equinix_smart_view_settings_ibx_config.png
   :width: 2874px
   :alt: Equinix Smart View integration IBX configuration
   :class: border-black

An **optional** step is to change the default sensor polling interval. It is recommended to keep that the same as the global sensor polling interval. Both settings default to once every 10 minutes.

=======================
Work Orders integration
=======================

When a sync job is triggered a corresponding Work Order is created that tracks who triggered it, when it was triggered and what assets were synced from the Smart View API.

.. image:: /settings/media/equinix_smart_view_workorder_list.png
   :width: 2874px
   :alt: Equinix Smart View Work Order List
   :class: border-black

The Work Order details will display which assets were received from the Smart View API. If those assets were previously synced, the details page will display if a change has been detected since the last sync.

.. image:: /settings/media/equinix_smart_view_workorder_details.png
   :width: 2874px
   :alt: Equinix Smart View Work Order Details
   :class: border-black

