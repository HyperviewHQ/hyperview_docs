#########
Version 2
#########

*****************************
Hyperview 2.6 (July 26, 2021)
*****************************
This section covers significant changes and bug fixes in Hyperview 2.6.x since version 2.5.x.

.. raw:: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/580811013" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

.. note:: Please ensure you have the latest Data Collector installed for optimal device monitoring and discovery.

===========================
New floor plan layout views
===========================
Locations now have two new floor plan layout views for racks: Average Temperature Front and Average Temperature Rear. Temperature thresholds are color-coded, allowing you to easily identify racks that are possibly overheating.

==========================
Miscellaneous improvements
==========================
* The Retire button is no longer active if you only have one Data Collector.
* The Retire Data Collector modal text has been improved.
* Tooltips have been added to disabled buttons on the Bulk Import page for clarity.
* For increased accuracy, Power Draw (W) values on rack PDU layout pages are now set to blank instead of 0 for outlets that have no outlet-level power sensors.

============
Known issues
============
* **AS-6983** You can add the same credential multiple times to a discovery.
* **AS-9539** Quickly navigating to and from a dashboard results in a browser console error.
* **AS-9723** For discovered PDUs (with discovered breaker sensors) and discovered rack PDUs (with discovered outlet sensors), sensor change log entries are added to the wrong source asset.
* **AS-9761** The bar gauge for the Rack Space Availability widget (on location dashboards) is always based on a maximum value of 100 instead of the actual number of positions.
* **AS-9777** (For Document Management licensees only) Clicking Save on the *asset → Information → Documents* page multiple times before the content area reloads results in multiple duplicate documents being created.
* **AS-9830** If you rename the All location, some places (such as the bulk import location dropdown) still show All instead of the new name.
* **AS-9846** When a physical sensor is unlinked from a location, the change log message shows incorrect coordinates.
* **AS-9850** Manual sensor names are set to the sensor type even if you rename them.

*****

*****************************
Hyperview 2.5 (July 14, 2021)
*****************************
This section covers significant changes and bug fixes in Hyperview 2.5.x since version 2.4.x.

.. raw:: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/574699786" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

.. note:: Please ensure you have the latest Data Collector installed for optimal device monitoring and discovery.

=====================
New Dashboard widgets
=====================
The following Dashboard widgets have been added to Hyperview. They appear by default for the corresponding asset types.

* The **Power** widget is available for busways, generators, PDU/RPPs, power meters, rack PDUs, transfer switches, small UPSes, UPSes, and utility breakers. It depicts the asset's total output power over time.
* The **Power** widget for locations shows the Total Facility Power (kW), IT Energy (kW), and PUE (Total Facility Power divided by non-zero IT Energy).
* The **Rack Humidity** widget is available for racks. It shows rack humidity over time.
* The **Rack Power** widget is available for racks. It depicts rack total power over time.
* The **Rack Temperature** widget for racks shows front and rear temperatures over time.
* The **Total Rack Units** widget is available for locations. It presents the total rack units and total occupied rack units over time.
* The **Weather** widget is available for locations. It shows weather forecasts and relevant data.

=========================
License page improvements
=========================
The License page has been overhauled for a streamlined user experience. It now features:

* Floor Mounted Assets, Sensors, and Max Storage Size (GB) charts showing usage and license thresholds.
* A Features grid showing which feature licenses you are licensed for.
* General and Additional Thresholds sections for relevant fields.

.. note:: Only Administrators can access the License page. Monitored IP addresses have been removed in favor of sensors as a licensing threshold. Max Storage Size (GB) indicates the maximum document storage size and is only relevant to Document Management licensees.

==========================
Miscellaneous improvements
==========================
* The Access Policies grid (*Settings → Access Policies*) now features an Associated API Clients column, which indicates the number of API clients associated with a particular access policy.
* You can now generate sensor graphs for the last one hour (*asset → Information → Sensors → Graph → Time Range (UTC) → Last Hour*), starting from the time you generate the graph.
* Dashboard editing privileges have been updated to Administrator-only.
* Location pickers have been improved to automatically open the asset location while selecting a power source.
* Watch notification emails now show the asset location path.
* The Refresh button has been added to the following pages: Assets by Type pages, Assets by Location pages, the Watched Assets page, and the Discovery Report page for assets (*asset → Information → Discovery Report*).

===========
API changes
===========

.. tip:: All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu.

New /asset/sensorsDailySummaries endpoints
------------------------------------------
The following routes have been added to the Hyperview API:

+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                               | **Description**                                                                                            |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/v2/asset/sensorsDailySummaries/numeric``             | Returns a list of numeric sensor daily summaries for each provided sensor ID for a specific UTC time range |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/v2/asset/sensorsDailySummaries/numeric/{timeRange}`` | Returns a list of numeric sensor daily summaries for each provided sensor ID for a given time range option |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/v2/asset/sensorsDailySummaries/string``              | Returns a list of string sensor daily summaries for each provided sensor ID for a specific UTC time range  |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/v2/asset/sensorsDailySummaries/string/{timeRange}``  | Returns a list of string sensor daily summaries for each provided sensor ID for a given time range option  |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New /asset/sensorsDataPoints endpoints
--------------------------------------
The following routes have been added to the Hyperview API:

+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                               | **Description**                                                                                            |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/v2/asset/sensorsDataPoints/numeric``                 | Returns a list of numeric sensor data points for each provided sensor ID for a specific UTC time range     |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/v2/asset/sensorsDataPoints/numeric/{timeRange}``     | Returns a list of numeric sensor data points for each provided sensor ID for a given time range option     |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/v2/asset/sensorsDataPoints/string``                  | Returns a list of string sensor data points for each provided sensor ID for a specific UTC time range      |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/v2/asset/sensorsDataPoints/string/{timeRange}``      | Returns a list of string sensor data points for each provided sensor ID for a given time range option      |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New /setting/assetTypeDashboardSettings endpoints
-------------------------------------------------
The following routes have been added to the Hyperview API:

+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                               | **Description**                                                                                            |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/v2/setting/assetTypeDashboardSettings/{assetTypeId}``| Returns a dashboard setting for a specific asset type                                                      |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``PUT /api/v2/setting/assetTypeDashboardSettings``              | Updates a dashboard setting and returns the updated dashboard setting                                      |
+-----------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

Other notable changes
---------------------
``/api/v2/setting/accessPolicies`` routes (``GET``, ``POST``, ``PUT``) now include an ``associatedApiClientCount`` field to indicate the number of API clients associated with an access policy.

Deprecations
------------

.. note:: Do not write new integrations for deprecated routes. If you have already integrated against a route that is currently deprecated (or is slated for deprecation), please update the existing integration accordingly.

The following endpoints have been deprecated and will be removed in a future release (corresponding functionality is handled by the aforementioned new endpoints):

* ``/api/v2/asset/sensorDailySummaries/numeric/{sensorId}``
* ``/api/v2/asset/sensorDailySummaries/numeric/{sensorId}/{timeRange}``
* ``/api/v2/asset/sensorDailySummaries/string/{sensorId}``
* ``/api/v2/asset/sensorDailySummaries/string/{sensorId}/{timeRange}``
* ``/api/v2/asset/sensorDataPoints/numeric/{sensorId}``
* ``/api/v2/asset/sensorDataPoints/numeric/{sensorId}/{timeRange}``
* ``/api/v2/asset/sensorDataPoints/string/{sensorId}``
* ``/api/v2/asset/sensorDataPoints/string/{sensorId}/{timeRange}``
* ``/api/v2/asset/assetTypeDashboardSettings/{assetTypeId}``
* ``/api/v2/asset/assetTypeDashboardSettings``

=================
Notable bug fixes
=================
* **AS-5781** Devices in the “Juniper EX Stacked Switch” definition stack were merging incorrectly. This has been fixed.
* **AS-8787** The Add button in the Add Custom Property modal would often require multiple clicks and result in an empty dialog box. This has been fixed.
* **AS-9281** Change log event details generated for updating PDU/RPP breaker sizes were incorrect. This has been addressed.
* **AS-9323** Clicking the Refresh button on the Data Collectors page immediately after registering a Data Collector would not refresh the grid. This has been fixed.
* **AS-9366** Sorting by Monitoring Status on Assets by Type grids would sort rows randomly. This has been addressed.
* **AS-9367** Sensor polling would create application log entries even if the value did not change. This has been addressed.
* **AS-9369** Sensor thresholds with AND condition(s) cause incorrect Application Logs entries. This has been fixed.
* **AS-9400** Saving a layout without making changes caused a Change Log entry to be created. This has been fixed.
* **AS-9402** The Add Document Association command (which is only relevant for Document Management licensees) was incorrectly enabled for Unknown assets. This has been addressed.
* **AS-9474** Changing an asset's sensor monitoring profile did not delete sensors associated with the previous profile, nor raise a relevant warning. This has been fixed.
* **AS-9615** Clicking the Add button in the Add New modal would sometimes disable it, resulting in the form not getting submitted. This has been fixed.

============
Known issues
============
* **AS-9761** The Rack Space Availability widget on location dashboards always uses a maximum value of 100 for its bar gauges, regardless of the actual total rack space.

*****

*****************************
Hyperview 2.4 (June 18, 2021)
*****************************
This section covers significant changes and bug fixes in Hyperview 2.4.x since version 2.3.x.

.. raw:: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/564296210" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

.. note:: Please ensure you have the latest Data Collector installed for optimal device monitoring and discovery.

==========================
Miscellaneous improvements
==========================
* The License page (*Settings → License*) has two new fields, "Sensor Daily Summary (Days)" and "Raw Sensor Data (Days)", indicating corresponding sensor data retention thresholds.
* The Assets grid for Blade Enclosures (*Information → Assets*) now features a Bay Location column.
* The application load time has been optimized.
* The email template for Reset Password emails has been improved.

=================
Notable bug fixes
=================
* **AS-8954** The Refresh button was over-calling the API in multi-rack views. This has been fixed.
* **AS-9387** The error message for adding groups with unsupported characters in the group name was incorrect. This has been addressed.

============
Known issues
============
* **AS-9281** Change log event details generated for updating PDU/RPP breaker sizes are incorrect.
* **AS-9366** On Assets by Type grids, the sort order is incorrect if you sort by Monitoring Status values.
* **AS-9369** Sensor thresholds with AND condition(s) cause incorrect Application Logs entries.
* **AS-9474** Changing an asset's sensor monitoring profile often does not delete sensors associated with the previous profile or generate relevant warnings.

*****

****************************
Hyperview 2.3 (May 21, 2021)
****************************
This section covers significant changes and bug fixes in Hyperview 2.3.x since version 2.2.x.

.. raw:: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/553112832" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

.. note:: Please ensure you have the latest Data Collector installed for optimal device monitoring and discovery.

==========================
Miscellaneous improvements
==========================
* The *Information → Assets* page now features a checkbox that lets you hide or show nested assets in the grid.
* The Data Center and Locations columns in Assets by Type grids have been removed in favor of a single Asset Location column that shows the full asset path.
* To reduce visual clutter, sensor graph points now only appear upon hover.
* User group name validation has been enhanced to allow ``#``, ``%``, ``^``, ``*``, ``+``, ``=``, ``/``, and ``\`` characters.
* Documents pages (*Assets → Documents* and *Information → Documents*) now feature a Refresh button. Note that this only applies to Document Management licensees.
* The Assets by Type grid for rack assets has been streamlined: it no longer shows the Front Door, Front Electronic Lock, Front Mechanical Lock, Rear Door, Rear Electronic Lock, and Rear Mechanical Lock sensor columns.
* Arista 7060CX network switches are now supported.
* Various translations have been added for Spanish locale pages.

===========
API changes
===========

.. tip:: All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu.

Deprecations
------------

.. note:: Do not write new integrations for deprecated routes. If you have already integrated against a route that is currently deprecated (or is slated for deprecation), please update the existing integration accordingly.

The ``​/api​/v2​/asset​/assetsByType​/racks`` endpoint in the Hyperview API has been deprecated. It will be removed in a future release. Furthermore, the ParentName and ParentLocationName fields in the ``​/api​/v2​/asset​/assetsByType`` endpoint have been deprecated, and will be removed.

Other changes
-------------
The ``/api/v2/asset/containedAssets/general/{assetId}`` now features a boolean ``includeAllDescendants`` query parameter that allows you to include or exclude descendent device assets.

=================
Notable bug fixes
=================
* **AS-8979** A newly created discovery would initially appear as the last entry in the *Discoveries → Overview* grid. This has been fixed.
* **AS-9191** Users could access Custom Properties, Custom Components, Documents, and Power Path pages for assets of Unknown type, which is incorrect since those pages are not relevant. This has been addressed.

============
Known issues
============
* **AS-9245** Dropdown arrows for grouped rows can sometimes appear on the right side of the grid instead of the left, and reveal an empty row.
* **AS-9281** Change log event details generated for updating breaker sizes for PDU/RPPs.
* **AS-9366** On Assets by Type grids, the sort order is incorrect if you sort by Monitoring Status values.
* **AS-9369** Sensor thresholds with AND condition(s) cause incorrect Application Logs entries.

*****

******************************
Hyperview 2.2 (April 28, 2021)
******************************
This section covers significant changes and bug fixes in Hyperview 2.2.x since version 2.1.x.

.. raw:: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/544745950" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

.. note:: Please ensure you have the latest Data Collector installed for optimal device discovery.

===========================
Document Management feature
===========================
Document Management is a new, separately licensed feature that lets you create and maintain asset-document associations. For example, you can associate device documentation for a particular rack PDU model with relevant rack PDU records. A document association can be a document file (such as a PDF), or a hyperlink. The default maximum storage for documents is 5 GB.

Licensed instances will have an *Assets → Documents* link in the sidebar and an *Information → Documents* link that can be accessed from asset Dashboard pages. You can search, download documents, and visit document links.

Furthermore, Power Users and above can manage documents, update asset associations per document, apply access control, and even bulk-add or bulk-remove document associations (note: Power Users cannot delete documents).

To purchase a Document Management license, please contact Hyperview Support or your Hyperview account manager.

==========================
Support for manual sensors
==========================
Depending on your Hyperview user role and access privileges, you can now manage, link/unlink, graph, and export data for manual sensors. An "Add Manual Sensors(s)" link appears on the *Information → Sensors* page for relevant assets. You can use the *Information → Sensor Monitoring* page of a given asset to set the Sensor Monitoring Profile to "Manual".

============================================
Alerts for outdated or stale Data Collectors
============================================
Starting with Hyperview 2.2, distinct event messages will be generated for the All location (*Asset Hierarchy → All → Events*) if:

* a non-retired Data Collector is stale (i.e. has not communicated with your instance within 2x the polling frequency); or
* the Data Collector version is out of date.

.. tip:: You can download the latest Data Collector for your instance from *Discoveries → Data Collectors → Download Data Collector*.

===============================
PDU breaker status improvements
===============================
The Layout page for PDU/RPP asset types now lets you toggle or update breaker statuses (provided you are a Power User or above). The current breaker status is automatically retrieved during asset discovery. Exporting the current Layout grid will also export the Breaker Status column.

==========================
Miscellaneous improvements
==========================
* Asset names are now ranked higher in search results, improving overall findability.
* Grid height is now set dynamically to fit the UI content area.
* Layout grids have been simplified to show "No Access" in the Connected Asset column for assets you don't have access to.
* Data Center Managers can now delete sensors.
* Change logs for PDU breakers and custom components have been improved to be consistent with other change logs triggered by discovery/monitoring.

===========
API changes
===========

.. tip:: All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu.

New document management endpoints
---------------------------------
The following document management routes have been added to the Hyperview API:

+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| **New API Route**                                                          | **Description**                                                             |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``POST /api/v2/asset/bulk/assets/addDocumentAssociation``                  | Sends a bulk request to associate a single document with one or more assets |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``POST /api/v2/asset/bulk/assets/removeDocumentAssociation``               | Sends a bulk request to remove an existing document association             |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``GET /api/v2/setting/documentAccessPolicies/{documentId}``                | Returns the access policy ID associated with a document                     |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``PUT /api/v2/setting/documentAccessPolicies/{documentId}``                | Updates the access policy ID associated with a document                     |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``POST /api/v2/asset/documentAssociations``                                | Creates an association between an asset and a document                      |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``DELETE /api/v2/asset/documentAssociations/{assetDocumentAssociationId}`` | Deletes the access policy ID associated with a document                     |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``GET /api/v2/asset/documentAssociations/documentDetails/{assetId}``       | Returns a list of associated document details for an asset                  |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``GET /api/v2/asset/documentAssociations/assets/{documentId}``             | Returns a list of associated assets for a document                          |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``GET /api/v2/setting/documentDetails/{documentDetailsId}``                | Returns details for a single document                                       |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``GET /api/v2/setting/documentDetails``                                    | Returns a collection of document details                                    |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``GET /api/v2/setting/documentManagement/storageSize``                     | Returns the used and maximum storage size (in gigabytes)                    |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``GET /api/v2/setting/documents/{documentId}``                             | Downloads a document                                                        |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``PUT /api/v2/setting/documents/{documentId}``                             | Updates a document                                                          |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``DELETE /api/v2/setting/documents/{documentId}``                          | Deletes a document                                                          |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+
| ``POST /api/v2/setting/documents``                                         | Uploads a document and saves its details                                    |
+----------------------------------------------------------------------------+-----------------------------------------------------------------------------+

New manual sensor endpoints
---------------------------
The following manual sensor routes have been added to the Hyperview API:

+--------------------------------------------------------------------+---------------------------------------+
| **New API Route**                                                  | **Description**                       |
+--------------------------------------------------------------------+---------------------------------------+
| ``POST /api/v2/asset/manualSensors``                               | Creates one or more manual sensors    |
+--------------------------------------------------------------------+---------------------------------------+
| ``PUT /api/v2/asset/manualSensors/numericSensor/{sensorId}/value`` | Updates a numeric manual sensor value |
+--------------------------------------------------------------------+---------------------------------------+

Deprecations
------------

.. note:: Do not write new integrations for deprecated routes. If you have already integrated against a route that is currently deprecated (or is slated for deprecation), please update the existing integration accordingly.

The ``/api/v2/setting/accessPolicies/{accessPolicyId}`` endpoint in the Hyperview API has been deprecated. It is currently not used anywhere in the application and will be removed in a future release.

All URL-versioned data collector endpoints (``/api/v1/dataCollector/``) in the Data Collector API have been deprecated in favor of header-versioned endpoints (``/api/dataCollector/`` with ``api-version`` header parameter), which are designed to make version updates less intrusive. The ``/api/v1/dataCollector/`` endpoints will be removed in an upcoming release. Please note that all URL-versioned endpoints in the Hyperview API will **also** be removed in favor of header-versioned endpoints in the future.

Possible breaking change: updated fields
----------------------------------------
The following properties have been updated across the Hyperview API. Depending on how you have integrated against the relevant endpoints, you may need to update existing integrations.

+------------------------------------------------+---------------------------+-----------------------------------------+
| **API Route**                                  | **Old Property Name**     | **New Property Name**                   |
+------------------------------------------------+---------------------------+-----------------------------------------+
| ``POST /asset/assets``                         | ``monitoringProfile``     | ``sensorMonitoringProfile``             |
+------------------------------------------------+---------------------------+-----------------------------------------+
| ``GET /asset/assets``                          | ``monitoringProfileType`` | ``sensorMonitoringProfileType``         |
+------------------------------------------------+---------------------------+-----------------------------------------+
| ``GET /asset/assets/id``                       | ``monitoringProfileType`` | ``sensorMonitoringProfileType``         |
+------------------------------------------------+---------------------------+-----------------------------------------+
| ``PUT /asset/monitorOnlyCommunicationSetting`` | ``monitoringProfileType`` | ``sensorMonitoringProfileType``         |
+------------------------------------------------+---------------------------+-----------------------------------------+
| ``GET /asset/shelvedAssets/rackId``            | ``monitoringProfileType`` | ``sensorMonitoringProfileType``         |
+------------------------------------------------+---------------------------+-----------------------------------------+
| ``GET /setting/license``                       | ``floorMountedDevices``   | None (now appears under ``thresholds``) |
+------------------------------------------------+---------------------------+-----------------------------------------+
| ``GET /setting/license``                       | ``monitoredIpAddresses``  | None (now appears under ``thresholds``) |
+------------------------------------------------+---------------------------+-----------------------------------------+

=================
Notable bug fixes
=================
* **AS-5489** The "Show Selected Racks" button was active even when there were no racks to select in a layout. This has been fixed.
* **AS-8630** Custom property deletion events in the Change Log mentioned "nothing" instead of the actual property value. This has been fixed.
* **AS-8701** Some UI text was not getting translated to Spanish upon updating the Locale settings. This has been fixed.
* **AS-8953** For sensors, the state of the Unlink button would not respect access policies. (Please note that this only affected the button state, and not the underlying functionality.) This has been addressed.
* **AS-9178** In some cases, temperature sensors returned Celsius values even when Locale settings were set to use Fahrenheit. This has been fixed.

============
Known issues
============
* **AS-8979** Newly created discoveries initially appear as the last row of the Discoveries → Overview grid.
* **AS-9191** Users can access Custom Properties, Custom Components, Documents, and Power Path pages for assets of Unknown type, which are not relevant.
* **AS-9228** Locations in the hierarchy tree do not become expandable for Data Center Managers and Power Users when the location gets its first child asset. As a workaround, please refresh the Asset Hierarchy.

*****

******************************
Hyperview 2.1 (March 16, 2021)
******************************
This section covers significant changes and bug fixes in Hyperview 2.1.x since version 2.0.x.

.. raw:: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/524566298" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

.. note:: Please ensure you have the latest Data Collector installed for optimal device discovery.

============================
Power Path page enhancements
============================
The Power Path page now features an Asset Info panel (asset → *Information → Power Path* → select node → *Asset Info*). For all asset types, the Asset Info panel includes an Overview tab showing asset details, a Sensors tab featuring the Sensors grid, and a View Asset button that lets you open the asset's Dashboard page. For PDU/RPP assets, the Asset Info panel also includes a Breakers tab which shows the Breakers grid. Clicking on the ellipses button (three dots) for a PDU/RPP node surfaces links to view the PDU/RPP layout and sensors.

Additionally, asset nodes in the Power Path page now show the asset location, down to the Rack U and side (if applicable).

===========
API changes
===========
The ``AssetSensorDto`` data transfer object has been improved to include a ``destinationAssetAccessState`` field. Although not a breaking change, please note that this field is used to annotate the asset’s permission level for the current user.

.. tip:: All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu.

==========================
Miscellaneous improvements
==========================
* Added the IEC 60309 PDU breaker outlet type, which can be used for PDU/RPPs.

=================
Notable bug fixes
=================
* **AS-8626** Pressing the Enter key while adding a custom property would clear out form values. This has been fixed.
* **AS-8737** Power-providing devices could be associated with unknown devices. This has been fixed.
* **AS-8924** On the Power Path page, double-clicking on an asset that you don't have access to would open the No Access page. This has been fixed.

============
Known issues
============
* **AS-8953** For sensors, the state of the Unlink button does not respect access policies. Please note that this only affects the button state, and not the underlying functionality.

*****

*********************************
Hyperview 2.0 (February 25, 2021)
*********************************
This section covers significant changes and bug fixes in Hyperview 2.0.x since version 1.6.x.

.. note:: Please ensure you have the latest Data Collector installed for optimal device discovery.

===========
API changes
===========
All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu.

Breaking change: endpoints renamed
----------------------------------
The following endpoints have been renamed to align with planned features.

* ``/api​/v2​/setting​/discoveryRunner`` is now ``​/api​/v2​/setting​/discoveryRunner/{discoveryId}``.
* ``/api/v2/setting/discoveryRunner/abort`` has been renamed to ``/api/v2/setting/discoveryRunner/{discoveryId}/abort``.

Breaking change: endpoints removed
----------------------------------
The following deprecated routes have been removed from the Hyperview API:

* ``/api​/v2​/asset​/containedAssets​/{parentId}``
* ``/api/v2/asset/search/quickSearch``
* ``/api/v2/setting/localeSettings``

Additional changes
------------------
Various object definitions were improved for the Hyperview and Data Collector APIs.

==========================
Miscellaneous improvements
==========================

* The Role and Groups columns in the User Provisioning grid have been renamed to "Default Role" and "Default Groups" respectively for clarity.
* For ease of use, asset types associated with BACnet/IP and Modbus TCP definitions can no longer be updated once the definition has been created.
* Sensor types that are currently not used by the application have been removed.
* Asset Change Log messages related to refreshing BACnet/IP and Modbus TCP definitions have been improved to mention the definition.
* Busway tap-off names are now unique.
* Grid export performance has been improved.
* Google Maps API and map rendering support have been improved.
* Various significant backend improvements have been made to enhance the stability, responsiveness, and scalability of the application.

=================
Notable bug fixes
=================

* **AS-7186** APC AP8961 rack PDUs were incorrectly showing a Rated Voltage value of -1. This has been fixed.
* **AS-7333** The application would not refresh while resizing vertically. This has been addressed.
* **AS-7630** Addressed a race condition related to SSH discoveries.
* **AS-7879** The All location in the Asset Hierarchy would not always expand by default. This has been fixed.
* **AS-8144** Scheduled discoveries were not translating to the correct timezone. This has been addressed. Note that relevant grids and modals now explicitly mention that the timezone used is UTC.
* **AS-8180** Some menu items were not getting translated into Spanish upon updating the locale. This has been fixed.
* **AS-8180** Users could incorrectly set the RackU size of a rack to 0. This has been fixed.
* **AS-8408** Discoveries would not retrieve software information for FreeBSD servers. This has been fixed.
* **AS-8427** Placing a small UPS in a rack and subsequently changing the small UPS to a UPS caused the location picker to stop working. This has been fixed.
* **AS-8442** Once saved, Asset Lifecycle fields could not be cleared. This has been addressed.
* **AS-8583** Change log entries related to custom component property changes would not identify the custom component itself. This has been fixed.
* **AS-8588** PDU breakers, busway tap-offs, and component assets were not reindexed upon connecting to assets, causing those power associations to not appear in relevant Power Path views. This has been fixed.

============
Known issues
============

* **AS-8626** Pressing the Enter key while adding a custom property results in the form values getting cleared.
* **AS-8630** Custom property deletion events in the Change Log state "nothing" instead of the actual property value.
* **AS-8737** Power-providing devices with a layout can be associated with unknown devices.
