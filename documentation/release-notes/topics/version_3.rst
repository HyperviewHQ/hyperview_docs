.. include:: /release-notes/media.rst

#########
Version 3
#########

*******************
Hyperview 3.7 (TBD)
*******************
This section covers significant changes and bug fixes in Hyperview 3.7.x since version 3.6.x.

.. note:: Please install the latest Data Collector for optimal device monitoring and discovery.

=======================
New feature: Work Notes
=======================

Work Notes is a new feature that is part of the core application license and is available to allow users. It enables new asset-centric collaboration workflows. For example:

- Write prioritized notes on the asset
- Attach documents and images to Work Notes
- Tag users in Work Notes and receive notifications when tagged in a note

=================================================================
Enhanced licensed feature: Firmware Management -> Update Firmware
=================================================================

Firmware update capability is now enabled on the **Linux** version of the Data Collector on the AMD64 and ARM64 versions.

.. note:: Please contact our Sales team if you are interested in getting a Firmware Management license.

==========================
Other notable improvements
==========================

- The Raspberry Pi version of the Linux Data Collector is now out of beta
- The License page has been improved to show full license information
- The Management of AssetTracker alarms has been improved, with more analytics and automatic resolution of certain alarm events once the issue is detected to be resolved

=================
Notable bug fixes
=================

- **AS-11399:** Sensor graph does not get generated upon switching from a time range that has no data to a time range with data
- **AS-10909:** Unknown Tags alarm event do not get cleared when you remove an Unknown Tag from Master Module
- **AS-11306:** Information dropdown not optimized for lower screens
- **AS-11412:** While editing a floor plan layout, Snap to Grid becomes read-only upon selection
- **AS-11795:** All location status not updated under certain circumstances
- **AS-11908:** Mobile navbar cuts off for lower resolution mobile devices

*****

*****************************
Hyperview 3.6 (July 15, 2022)
*****************************
This section covers significant changes and bug fixes in Hyperview 3.6.x since version 3.5.x.

.. raw :: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/733686558?h=d127d279dc" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div>

.. note:: Please install the latest Data Collector for optimal device monitoring and discovery.

========================
New feature: Work Orders
========================
Work Orders is a new subsystem in Hyperview. It is the information hub to track operations that interact with external systems, for example, a bulk firmware update Job.
The Work Orders feature is part of the standard Hyperview license. Certain features that interact with it may be licensed separately.

==============================================================================
Enhanced licensed feature: Firmware Management -> Unmanaged Firmware Reporting
==============================================================================
Both managed and unmanaged firmware can now be viewed, searched and reported on centrally.

=================================================================
Enhanced licensed feature: Firmware Management -> Update Firmware
=================================================================
Administrators and data center managers can now trigger an update of managed firmware centrally. This is available for individual devices and as a bulk action.

.. note:: Please contact our Sales team if you are interested in getting a Firmware Management license.

==========================================================
New licensed feature: Integrations -> ServiceNow CMDB Sync
==========================================================
Hyperview is now able to dynamically push asset information to ServiceNow CMDB. The integration works with the ServiceNow Import Set API and has been tested with ServiceNow (Rome).

.. note:: Please contact our Sales team if you are interested in getting a ServiceNow CMDB sync license.

==========
3D layouts
==========
3D layouts now have a **focus** mode that allows users to focus on a subset of the assets on display. This is especially useful for larger data centers.

Multi-level heat maps are now available as a layer in 3D layouts for racks that have appropriately linked sensors.

==========================
Other notable improvements
==========================

- Login page design and functionality has been improved.
- User experience for copy-and-paste of labels has been improved.
- AssetTracker data grid filtering, sorting and export features were improved.

===========
API changes
===========
.. tip:: As of version 3.6 API changes are now in the :ref:`API Changelog<Api_changelog-doc>` section of the documentation.

=================
Notable bug fixes
=================

- **AS-11398:** Invalid GUIDs reported by assets during auto-discovery are ignored.

- **AS-11435:** Certain SVG formatted images were not displaying correctly in the 3D layout. This is now fixed.

- **AS-11371:** Placing a tile on a grid after a tile was placed there and deleted was causing an error. This is now fixed.

- **AS-11370:** Loading placeholder remains under asset tree when height is changed. This is now fixed.

- **AS-11556:** Peak/Average kWh sensors were computing every other hour/day. This is now fixed.

- **AS-11550:** Reachability monitoring was setting the last check value in the wrong field. This caused the feature to work too hard for results. This is now fixed.

- **AS-10643:** Users that did not have the Administrator role could not go to Advanced search if they did not have access to the All location. This is now fixed.

============
Known issues
============
* **AS-11759** Advanced Search location picker does not support selecting inaccessible nodes with only non-container, device asset children.

*****

***************************
Hyperview 3.5 (May 3, 2022)
***************************
This section covers significant changes and bug fixes in Hyperview 3.5.x since version 3.4.x.

.. raw :: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/709661189?h=bbbe16c9b7" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div>

.. note:: Please install the latest Data Collector for optimal device monitoring and discovery.

==========
3D layouts
==========
You can now view location floor plan layouts in 3D. The Layout page (location → *Layout*) features a new button that lets you toggle between 3D and 2D views. In addition to details surfaced in 2D view, a location layout's 3D view shows important information such as:

* Assets contained within each rack
* Floor-, underfloor-, and ceiling-mounted assets
* Height of floor-mounted assets, such as racks

If product dimensions are missing in model data, default values are used for 3D visualization. Furthermore, a View Contained Assets button appears in 3D view which lets you select floor-mounted assets to reveal contained assets. Hovering on a floor-mounted or contained asset shows the name of the asset. Clicking the asset shows a pop-up with relevant details, and double-clicking it opens its Dashboard.

.. note:: 3D view is currently read-only and limited to 1000 floor-mounted assets. Only layouts with grids are supported. Shapes, labels, environmental sensor icons, and Rack Security icons currently appear in 2D.

==========================
New widgets: Asset Summary
==========================
Location and Rack Dashboards now feature an Asset Summary widget by default. It shows the number of descendent assets that have Critical, Warning, and Normal alarm event statuses. You can click the View Assets button for a given status to see corresponding assets in the Advanced Search grid.

===========================
Rack Elevation enhancements
===========================
Rack Elevation views (on the rack layout, multi-rack views, and the Rack Elevation dashboard widget) now feature Status and Lifecycle State settings that are preserved and applied across all racks for the current user. Status, which is selected by default, lets you highlight contained assets in the Rack Elevation based on alarm status (Normal, Warning, and Critical). Lifecycle state highlights assets based on their current lifecycle state (Active, Planned, Procurement, Staging, and Retired). Based on your selection, the right edge of an asset in the Rack Elevation will be highlighted to indicate its Status or Lifecycle State value.

============================
Advanced Search improvements
============================
The Type field is now optional in the Advanced Search Filters pane (*Search → Advanced → Filters*) while selecting and filtering on property and sensor filters, Status, and Lifecycle State. Additionally, columns are not filtered for a given asset type.

==========================
Other notable improvements
==========================
While updating an asset's location from the *Information → Properties* page, a warning appears if the new location's access policy differs from that of the current location. If you are an Administrator, the warning message will allow you to select which access policy to apply. For Data Center Managers and Power Users the options in the warning message will be read-only.

===========
API changes
===========
.. tip:: All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu in Hyperview.

New AssetSummaryWidget endpoint
-------------------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/asset/widget/assetSummaryWidget/{assetId}``                | Returns status names and number of contained assets for the AssetSummaryWidget                             |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

Other notable changes
---------------------
The ``AssetDTO`` object now features an ``accessPolicyId`` field.

=================
Notable bug fixes
=================
* **AS-11233** The Rack Space Availability location widget was querying each child rack's sensors instead of using its own computed sensors. This has been addressed. As a result, the Rack Space Availability widget is much more efficient for locations with many racks.
* **AS-11249** While using Google Chrome on iOS or iPadOS version 15.x.x, the background image of a location layout would cover the grid and any assets, labels, and environmental sensors that are included. This has been fixed.

============
Known issues
============
* **AS-11248** Certain products have their Rated Power set to 0 in the Hyperview Catalog, which is incorrect and throwing computed sensor analyzer exceptions.
* **AS-11399** Sensor graphs do not appear if you switch from a time range with no data to a time range that has data. This persists as long as the current graph modal is open.
* **AS-11412** While aligning objects on a floor plan layout, selecting the Snap to Grid option makes it read-only for the remainder of the Edit session.

========================
Changes in version 3.5.1
========================
Enhancements
------------
* Daily sensor summary computation is now much more efficient. Note that daily summary data is calculated after UTC midnight.
* The Help link on the Bulk Import page has been removed in order to reduce visual clutter.

*****

*****************************
Hyperview 3.4 (April 6, 2022)
*****************************
This section covers significant changes and bug fixes in Hyperview 3.4.x since version 3.3.x.

.. raw :: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/698389123" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

.. note:: Please install the latest Data Collector for optimal device monitoring and discovery.

==========================
Product catalog management
==========================
You can now access the product catalog directly from Hyperview. Users can now also add their own models and model images. A new Catalog menu is available as part of the default Infrastructure Management license, which lets all users view and search existing device models (*Catalog → Models*) and manufacturers (*Catalog → Manufacturers*). Both pages are searchable and can be filtered to find the exact set of records you are looking for.

Catalog records have three possible sources: Application (retrieved from the master product catalog), Discovery (discovered locally), and User (added and managed manually by Power Users and above; note that Power Users cannot delete records). Furthermore, you can bulk update the asset model; see "New bulk actions..." section below.

=========================================
New licensed feature: Firmware Management
=========================================
Firmware Management is a separately licensed set of features that lets you view and interact with firmware records. For example, you can:

* Look up assets that have a specific firmware version installed
* Review firmware versions and associated assets
* Download firmware
* View firmware release notes
* Get alerted to outdated firmware

.. note:: Please contact our Sales team if you are interested in getting a Firmware Management license.

=================================
Linux Data Collector enhancements
=================================
Starting with Hyperview 3.4, the Linux Data Collector for AMD64 architectures is formally out of beta. We have also added a new Data Collector for Raspberry Pi devices (RPI ARM64) that is currently in beta. Administrators can download the latest Data Collectors from *Discoveries → Download Data Collector*.

In addition, both Linux Data Collector types have been enhanced as follows:

* Now supports CentOS (version 7 or later) and Red Hat Enterprise Linux (versions 7.x and 8.x).
* Features a new update script (*update-dc.sh*) that lets you preserve your existing configuration.
* AssetTracker support added (only relevant to AssetTracker licensees).
* You can now configure proxies.
* Added support for Modbus TCP protocol.

====================================================
New bulk actions: Update Access Policy, Update Model
====================================================
Hyperview has two new bulk actions:

* Update Access Policy (which lets Administrators update the Access Policy for selected assets), and
* Update Model (which allows Power Users and above to update the asset model for selected assets of interchangeable types).

Both actions are available from the Bulk Actions menu on Assets By Type, Assets By Location, and Advanced Search pages.

=====================================================
New Delta-T and average temperature sensors for racks
=====================================================
The following new computed sensors have been added for racks with linked temperature sensors:

* Average Temperature Front Top (shows the average temperature in the front-top part of the rack)
* Average Temperature Rear Top (shows the average temperature in the rear-top part of the rack)
* Average Temperature Front Middle (shows the average temperature in the front-middle part of the rack)
* Average Temperature Rear Middle (shows the average temperature in the rear-middle part of the rack)
* Average Temperature Front Bottom (shows the average temperature in the front-bottom part of the rack)
* Average Temperature Rear Bottom (shows the average temperature in the rear-bottom part of the rack)
* Delta-T Top (shows the difference between the average front and rear temperatures for the top of the rack)
* Delta-T Middle (shows the difference between the average front and rear temperatures for the middle of the rack)
* Delta-T Bottom (shows the difference between the average front and rear temperatures for the bottom of the rack)

Values will be in Celsius or Fahrenheit, as per your locale settings (*Settings → Locale*; Administrator-only). Note that the availability of these sensors will depend on which rack sides (front or rear) and RUs (in the front, middle, or back) the temperature sensors are linked to. For example, for each side of a 42 RU rack, RUs 1-14 are considered the bottom, 15-28 are considered the middle, and 29-42 are considered the top.

Furthermore, Power Users and above can specify how average temperature values are calculated for Delta-T sensors (i.e. subtract front from rear, or rear from front). A new Cooling section has been added to the Properties page (rack → *Information → Properties*) that features a relevant Rack Delta-T Calculation Orientation property.

==========================
Miscellaneous improvements
==========================
* Assets By Type and Assets By Location pages now feature an "Open in Advanced Search" button that opens the current grid as Advanced Search results.
* The Advanced Search grid features a new default column, Lifecycle State. Furthermore, you can now filter by Status and Lifecycle State values.
* Line Card/Switch Module is now available as a custom component type.
* Location heat maps have been improved to only use recent sensor values (i.e. updated within 30 minutes).
* Monitoring is automatically turned on for discovered devices that were originally manually created (assuming the discovery's "Monitor newly discovered assets by default" setting is turned on).
* The Cost Per Kilowatt location property has been updated to Cost Per Kilowatt Hour, which is typically more relevant.
* Rack Elevation label settings are now automatically saved in your browser and applied to all racks.
* Pop-up text for Location picker search results (for example, while linking sensors) now feature full asset location paths.
* Enhance Geist Rack PDU SNMP definitions now support an additional discoverable serial number.
* The License page (*Settings → License*) now shows installed feature licenses in green and other feature licenses in orange.
* The Information dropdown menu for assets now groups related menu items.

===========
API changes
===========
.. tip:: All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu in Hyperview.

Deprecations
------------
.. note:: Do not write new integrations for deprecated routes as they will be removed in a future release. If you have already integrated against a route that is currently deprecated (or is slated for deprecation), please update the existing integration accordingly.

The following endpoints have been deprecated in Hyperview 3.4:

* ``/api/asset/alarmEvents``
* ``/api/asset/assetsByType``
* ``/api/asset/assetTrackerAlarmEvents``
* ``/api/asset/containedAssets/general/{assetId}``
* ``/api/asset/customComponents``
* ``/api/asset/pduBreakers`` (``POST`` only)

New AvailableFirmwareVersions endpoint (licensed feature)
---------------------------------------------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/asset/availableFirmwareVersions/{assetId}``                | Returns a list of all available firmware versions for a specific asset                                     |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New Bulk endpoints
------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``POST /api/asset/bulk/assets/updateAccessPolicy``                    | Updates associations between a single access policy and one or more assets                                 |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``POST /api/asset/bulk/assets/updateProduct``                         | Updates associations between a single product and one or more assets                                       |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New FirmwareDownload endpoints (licensed feature)
-------------------------------------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/product/firmwareDownload/installFile/{firmwareVersionId}`` | Downloads a specific firmware version                                                                      |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/product/firmwareDownload/releaseNote/{firmwareVersionId}`` | Downloads a firmware version's release notes                                                               |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New FirmwareVersions endpoints (licensed feature)
-------------------------------------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/product/firmwareVersions/{firmwareVersionId}``             | Returns details of a single firmware version                                                               |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/product/firmwareVersions/firmware/{firmwareId}``           | Returns a list of firmware versions for a specific firmware                                                |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New Manufacturers endpoints
---------------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/product/manufacturers``                                    | Returns a list of manufacturers                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``POST /api/product/manufacturers``                                   | Creates a manufacturer                                                                                     |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``DELETE /api/product/manufacturers/{id}``                            | Deletes a specific manufacturer                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``PUT /api/product/manufacturers/{id}``                               | Updates a specific manufacturer                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New PduBreakers endpoint
------------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``PUT /api/asset/pduBreakers/breakerStatus/{pduBreakerId}``           | Updates a PDU breaker status                                                                               |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New ProductProperties endpoints
-------------------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/product/productProperties/{productId}``                    | Returns a list of product properties                                                                       |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``POST /api/product/productProperties/{productId}``                   | Creates a product property                                                                                 |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``DELETE /api/product/productProperties/{id}``                        | Deletes a product property                                                                                 |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``PUT /api/product/productProperties/{id}``                           | Updates a product property                                                                                 |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New ProductPropertyKeys endpoint
--------------------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/product/productPropertyKeys/{productTypeId}``              | Returns all property keys for a product type                                                               |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New Products endpoints
----------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/product/products``                                         | Returns a list of products                                                                                 |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``POST /api/product/products``                                        | Creates a new product                                                                                      |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``DELETE /api/product/products/{id}``                                 | Deletes a product                                                                                          |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``PUT /api/product/products/{id}``                                    | Updates a product                                                                                          |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/product/products/{id}``                                    | Returns a specific product                                                                                 |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

New UserProductImages endpoints
-------------------------------
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| **New API Route**                                                     | **Description**                                                                                            |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``GET /api/product/userProductImages/{productId}``                    | Returns a list of product images                                                                           |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``POST /api/product/userProductImages/{productId}``                   | Uploads a product image and associated data                                                                |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+
| ``DELETE /api/product/userProductImages/{id}``                        | Deletes a product image                                                                                    |
+-----------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------+

=================
Notable bug fixes
=================
* **AS-10898** (Document Management licensees only) Added missing validation for the Add button in the Add Document modal.
* **AS-10899** (Document Management licensees only) It was possible to submit an Add New Document request without selecting a file. This has been addressed.
* **AS-11007** Assets would not get reindexed for search upon deleting an asset property. This has been fixed.
* **AS-11012** Fixed some typos for Spanish locales.

============
Known issues
============
* **AS-10643** Users without access to the All location cannot open the Advanced Search page.
* **AS-11064** If you change an asset's type from "Small UPS" to "UPS" (and assuming the Small UPS was under the rack), the asset's location stays the same.
* **AS-11247** Upon applying Advanced Search filters that do not return any assets, refreshing the page using your browser's Reload/Refresh button shows an incorrect (and redundant) Bootstrap message. The same issue appears for assets without any children if you go to *Information → Assets → Open in Advanced Search*.
* **AS-11249** While using Google Chrome on iOS or iPadOS version 15.x.x, the background image of a location layout covers the grid and any assets, labels, and environmental sensors that are included.

*****

********************************
Hyperview 3.3 (January 17, 2022)
********************************
This section covers significant changes and bug fixes in Hyperview 3.3.x since version 3.2.x.

.. raw :: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/669621536" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

.. note:: Please ensure you have the latest Data Collector installed for optimal device monitoring and discovery.

==================================
New licensed feature: AssetTracker
==================================
AssetTracker is an RFID asset tracking solution for data centers that lets you detect and audit assets at the rack U level in real-time. AssetTracker master modules are physically installed on racks you wish to track, which in turn host RFID tags that are attached to racked assets. Expansion modules can be daisy-chained to master modules as needed. Module and asset tag records can be viewed and managed from the new licensee-only AssetTracker page (*Assets → AssetTracker*).

The Hyperview Data Collector has been enhanced in this version to communicate with AssetTracker modules. Relevant alarm events are generated at the rack or All location level, as appropriate, which makes it convenient to stay on top of changes. Fields for AssetTracker Master Module ID (the unique identifier for a given module) and AssetTracker ID (the unique identifier for a tag) now appear across the Properties page, the Add New page, and modals to add or update asset records. Furthermore, the Advanced Search page has been enhanced to include new Asset Property (String) filters for AssetTracker Master Module ID and AssetTracker ID.

.. note:: Please contact our Sales team if you are interested in getting an AssetTracker license.

=================================================
Linux support for Hyperview Data Collector (beta)
=================================================
This release features a beta version of the Hyperview Data Collector for Linux. It is compatible with Debian 10.xx and 11.xx, and Ubuntu Server LTS 18.04.xx and 20.04.xx. The Download Data Collector modal (*Discoveries → Data Collectors → Download Data Collectors*; Administrator-only) now lets you specify the OS you wish to download the data collector for. Note that at this time the Linux data collector only supports the following protocols: SSH, SNMP, and IPMI. Other than that, from a Hyperview user's standpoint, the overall discovery experience is identical for Windows and Linux data collectors.

==========================
Miscellaneous improvements
==========================
* The Saved Searches feature in Advanced Search now lets any kind of user (including read-only users) save and delete personal searches.
* The Watched Assets grid (*Account → Watched Assets*) has been improved to show up to 100 rows per page.

===========
API changes
===========
.. tip:: All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu in Hyperview.

New endpoints
-------------
The following routes have been added to the Hyperview API (only relevant to AssetTracker licensees):

* ``GET /api/asset/assetTrackerAlarmEvents``: Returns a list of events for a specific AssetTracker asset
* ``GET /api/asset/assetTrackerContainedAssets``: Returns a list of AssetTracker assets or placeholder assets that are contained inside the given AssetTracker parent
* ``GET /api/asset/assetTrackerMasterModuleData``: Retrieves all AssetTracker master module data
* ``DELETE /api/asset/assetTrackerMasterModuleData/{id}``: Deletes a specific AssetTracker master module's data

=================
Notable bug fixes
=================
* **AS-9983** While entering a value for a Date custom property, the date format was occasionally inconsistent and threw a console error. This has been fixed.
* **AS-10449** The Asset Hierarchy would not load for users who do not have access to the All location. This has been fixed.
* **AS-10513** (Document Management licensees only) A false error message and console error would appear upon adding a document of Link type. This has been addressed.
* **AS-10536** (API) As an API client, moving a rackable asset with an Unknown rack side to a rack would not throw an exception. This has been fixed.
* **AS-10540** For rackable devices, updating the Rack Unit property value from 1 or more to 0, and then back to the original value would incorrectly throw an exception. This has been addressed.

============
Known issues
============
* **AS-10643** Users who do not have access to the All location cannot open the Advanced Search page.
* **AS-10874** (AssetTracker licensees only) Using a NETUN Scanner to scan asset tags results in duplicate AssetTracker ID entries and log entries.

========================
Changes in version 3.3.1
========================
Bug fixes
---------
* **AS-10974** Fixed an issue with the linked Sales email for unlicensed features.

========================
Changes in version 3.3.2
========================
Bug fixes
---------
* **AS-11008** Increased the length of Choice custom property values to 256 characters per line in order to accommodate more choices per custom property.

*****

*********************************
Hyperview 3.2 (November 18, 2021)
*********************************
This section covers significant changes and bug fixes in Hyperview 3.2.x since version 3.1.x.

.. raw :: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/646672064" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

.. note:: Please ensure you have the latest Data Collector installed for optimal device monitoring and discovery.

=================================
New bulk action: Update Lifecycle
=================================
You can now update lifecycle values for one or more eligible assets from the Bulk Actions menu, which in turn is available from Advanced Search, Assets By Type, and Assets By Location pages. Eligible assets are all asset types except Location, Rack, and Unknown. The Bulk Update Lifecycle modal allows you to set values for one or more of the following fields: State, Commission Date, Retirement Date, End of Life Date.

========================================================
New Saved Search feature and various search enhancements
========================================================
The Advanced Search page now lets you save searches to be re-run later. There are two new buttons on the page: *Save* (lets you save a search) and *Saved Searches* (opens the Saved Searches panel, which lists existing saved personal and global searches). Any user can perform an Advanced Search, applied via filters, writing a manual query, or both, and then save it. Personal saved searches are only available to the user who created them and are listed under My Searches in the Saved Searches panel. Only Administrators can save and manage global searches, which are available to all users and appear under Global Searches in the Saved Searches panel. To apply a personal or global saved search, simply select it in the panel and click Search.

Furthermore, starting with this version:

* Advanced Search supports two new columns and filters that can be added from the Filters panel: IP Address and Bay Location. If there are multiple IP addresses for a given asset, they will appear as a comma-separated string.
* The Advanced Search page features a new Refresh button.
* You can search by component serial number using Quick Search and Advanced Search.

=====================================================
Rack Side and Rack Position support for zero U assets
=====================================================
You can now set a Rack Side (Unknown, Front, or Rear) and Rack Position (Unknown, Left, Right, Top, Bottom, Above, or Below) for zero U devices. You can specify values while creating, updating, moving, or bulk importing a zero U device, such as a rack PDU. Note that for bulk import you must use the latest Assets template from *Bulk Import → Download Template File → Assets*.

The Rack Layout page has also been enhanced to include Rack Side and Rack Position columns. Furthermore, the Properties page (*Information → Properties*) and Properties widget (on the asset dashboard) both now indicate the rack side and position in the Location field; for example: *Side: Front, Position: Top*.

==========================
Miscellaneous improvements
==========================
* Application page titles are now dynamic: instead of just saying "Hyperview" they reflect the exact context, and are easier to navigate within the browser history.
* The "Default" access policy group has been renamed to "All Users" for clarity.
* All Save buttons now show a spinner when the application is awaiting a server response.
* VMware and SSH discoveries now populate the Enclosure Serial Number field for relevant assets.

===========
API changes
===========
.. tip:: All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu in Hyperview.

New endpoints
-------------
The following routes have been added to the Hyperview API:

* ``POST /api/asset/bulk/assets/updateLifecycle``: Updates lifecycle properties for a set of assets
* ``GET /api/asset/savedSearches``: Returns a list of saved searches for the current user
* ``POST /api/asset/savedSearches``: Creates a saved search and returns its ID
* ``GET /api/asset/savedSearches/global``: Returns a list of global saved searches
* ``DELETE /api/asset/savedSearches/user/{id}``: Deletes a personal saved search for a given user
* ``DELETE /api/asset/savedSearches/global/{id}``: Deletes a saved global search

Enhanced endpoints
------------------
The API documentation for ``POST /api/asset/search`` has been significantly improved (see *Help → Hyperview API*). Empty payload handling has been improved as well. Furthermore, you can search by ``componentSerialNumber``.

=================
Notable bug fixes
=================
* **AS-9609** Creating two busway tap-offs with the same number would throw a console error. This has been fixed.
* **AS-9826** Unknown assets were visible in the linked sensor location picker. This has been fixed.
* **AS-10130** An incorrect success message was being displayed upon adding a new custom property or custom property group. This has been addressed.
* **AS-10193** Discoveries would not run if ports were blocked and the Data Collector was configured to use a proxy URL. This has been fixed.

============
Known issues
============
* **AS-9983** While entering a value for custom property of Date type, the date format isn't always consistent and may throw a console error.
* **AS-10513** (Document Management licensees only) A false error message and console error is shown upon adding a document of Link type; the document still gets created, and appears in the Documents grid.
* **AS-10536** (API) As an API client, moving a rackable asset with an Unknown rack side to a rack should throw an exception, but currently does not.
* **AS-10540** For rackable devices, updating the Rack Unit property value from 1 or more to 0, and then back to the original value currently throws an exception, even though it should not.
* **AS-10573** (API) Negative RU values while creating or updating rack asset properties are allowed despite being invalid.

========================
Changes in version 3.2.1
========================
Bug fixes
---------
* **AS-10637** Addressed a data migration issue related to indirect sensor Rack Side values.

*****

**********************************
Hyperview 3.1 (September 17, 2021)
**********************************
This section covers significant changes and bug fixes in Hyperview 3.1.x since version 3.0.x.

.. raw :: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/610373544" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>

.. note:: Please ensure you have the latest Data Collector installed for optimal device monitoring and discovery.

================
New bulk actions
================
The following bulk actions have been added in this release:

* Enable Monitoring
* Disable Monitoring
* Start Watching
* Stop Watching
* Update Control Credentials
* Update Custom Property

All bulk actions are available from the Bulk Actions menu in Advanced Search, Assets By Type, and Assets By Location pages for eligible assets. The Stop Watching bulk action is also available from the Watched Assets page.

.. note:: Control credentials are currently only used for Rack Security-licensed features. Please contact our Sales team if you are interested in getting a Rack Security license.

================================================
Heat map and environmental sensor visualizations
================================================
Floor Plan layouts now feature Temperature Heat Map and Environmental Sensors layers. You can toggle them from *location → Layout → View*.

Heat maps depict current temperature ranges using different colors, and are generated based on linked sensor values (avererageTemperatureFront and averageTemperatureRear rack sensors, and placedIndirectSensors location sensors). The color scheme used is consistent with other available layers (such as *View → Average Temperature Front*). Note that the heat map is only generated if the layout has a grid.

Environmental sensors (placedIndirectSensors for locations) are represented by a "T" icon for temperature sensors and an "H" icon for humidity sensors.

====================
New computed sensors
====================
The following computed sensors are now available for racks and locations:

* AverageKwhByHour
* PeakKwhByHour
* AverageKwhByDay
* PeakKwhByDay

Values are in kilowatt-hours (kWh).

======================================
New Network Components page for assets
======================================
Assets now have a Network Components page (*asset → Information → Network Components*). It lists IP addresses and network interfaces associated with the asset, if applicable (previously they would appear on the asset's Components page). Furthermore, a new MAC OUI column has been added that indicates the organizationally unique vendor or manufacturer for a given network interface.

=================================
New asset type and asset property
=================================
Hyperview now supports Node Server as an asset type. The user experience of using node servers is similar to using servers, except that unlike servers, node servers are zero U assets and cannot be placed in racks. A relevant asset property, Enclosure Serial Number, is now available on the Properties page for the following asset types: server, node server, blade server, blade storage, blade network. Note that Enclosure Serial Number is a searchable and discoverable field.

=========================
Sensor graph improvements
=========================
Numeric sensor graphs now feature a Show Zero toggle, which indicates if the zero line should be shown or not (selected by default). Furthermore, you can now pan and zoom into numeric sensor graphs (the zoom will be reset if you modify the time range).

============================
Advanced Search improvements
============================
* Type is no longer a mandatory filter (unless you want to add an asset property, custom property, or sensor filter).
* The Location filter now defaults to All to prevent ambiguity.
* Queries now also take child and descendent assets into consideration, and include them in search results (if they match the query).
* The width of the Filters panel has been increased for improved navigation on mobile screens.
* You can now filter by Enclosure Serial Number and Board Serial Number asset properties, as well as add corresponding grid columns.

==========================
Miscellaneous improvements
==========================
* The Weather widget now has ``alt`` attributes for improved accessibility.

===========
API changes
===========

.. tip:: All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu.

New endpoints
-------------
The following routes have been added to the Hyperview API:

* ``POST /api/asset/bulk/assets/createEventNotificationRecipient``: Creates asset notification recipients between the requesting user and a set of assets
* ``POST /api/asset/bulk/assets/removeEventNotificationRecipient``: Removes asset notification recipients between the requesting user and a set of assets
* ``POST /api/asset/bulk/assets/disableMonitoring``: Disables monitoring for a set of assets
* ``POST /api/asset/bulk/assets/enableMonitoring``: Enables monitoring for a set of assets
* ``POST /api/asset/bulk/assets/updateCustomProperty``: Updates a custom property for a set of assets
* ``POST /api/asset/bulk/assets/updateControlCredentials``: Updates the associations between a control credential and a set of assets
* ``GET /api/asset/componentAssets/{assetId}/networkComponents``: Returns a list of network component assets for a given parent asset
* ``PUT /api/asset/pduBreakers/{pduBreakerId}``: Updates a PDU breaker

=================
Notable bug fixes
=================
* **AS-9849** Deleting a linked sensor would not generate a Change Log entry for the linked asset. This has been fixed.
* **AS-9901** Threshold cards (on the License page) would sometimes appear in the wrong order.
* **AS-9916** Bulk importing custom properties would fail if the asset serial number was not included (even though the asset name was included).

============
Known issues
============
* **AS-9983** When entering a date value for a custom property, the date format is inconsistent and sometimes throws a console error.
* **AS-10104** Layout heat maps do not appear on the iPhone and iPad.

========================
Changes in version 3.1.1
========================
Enhancements
------------
Sensor selection in Advanced Search has been improved.

========================
Changes in version 3.1.2
========================
Enhancements
------------
Layout performance has been improved for large data center layouts.

========================
Changes in version 3.1.3
========================
Bug fixes
---------
* **AS-10371** The Location filter on the Advanced Search page was not being respected. This has been fixed.
* **AS-10403** Clicking on the Help link on the Bulk Import page would open an outdated documentation set. This has been fixed.

Enhancements
------------
The outlet detection algorithm for rack PDUs and transfer switches has been enhanced.

========================
Changes in version 3.1.4
========================
Bug fixes
---------
* **AS-10428** Assets with bulk-updated custom properties would not appear in search results if you queried the custom property value. This has been fixed.

*****

*******************************
Hyperview 3.0 (August 24, 2021)
*******************************
This section covers significant changes and bug fixes in Hyperview 3.0.x since version 2.6.x.

.. note:: Data Collectors prior to version 2.2 will cease to function upon upgrade. Please ensure you have the latest Data Collector installed for optimal device monitoring and discovery.

===========
API changes
===========

.. tip:: All API changes are reflected in the corresponding Open API (aka Swagger) interfaces, which can be accessed from the *Help* menu.

Breaking changes
----------------
All URL-versioned endpoints in the Hyperview API and the Data Collector API have been removed in favor of header-versioned endpoints, which are designed to make version updates less intrusive. For example, ``/api/v2/asset/buswayTapOff/{buswayTapOffId}`` has been replaced by ``/api/asset/buswayTapOff/{buswayTapOffId}``; the latter features the optional ``api-version`` header parameter. Note that the minimal supported version will be used if an ``api-version`` value is not provided.

Search endpoints have been overhauled. The ``/api/asset/search`` endpoint features several new fields, and ``/api/v2/asset/search/facets`` has been replaced by a new endpoint, ``/api/asset/search/aggregations``. Refer to *Help → Hyperview API → Search* for details.

Moreover, all endpoints and fields that were previously reported as deprecated (see previous release notes) have been removed.

Other notable changes
---------------------
Some data transfer objects (DTO) associated with the following Hyperview API endpoints have been updated. Please review your integration code to ensure it is working as expected.

* ``/api​/asset​/controlCredentialAssociation``
* ``/api​​/asset​/eventNotificationRecipient​/{assetId}``
* ``/api​​/asset​/powerSourceAssociations``

===========================
Windows Server 2019 support
===========================
In addition to Windows 10 (for testing), and Windows Server 2016 (for production and testing), Hyperview now supports Windows Server 2019 (for production and testing). There is no change to existing hardware or network requirements.

==========================
Miscellaneous improvements
==========================
* Password reset and account lock-out messages have been improved for clarity.
* Hyperview-generated emails now mention the instance URL in the subject line.
* Dashboards now feature a Refresh button that refreshes all the widgets on the page.

=================
Notable bug fixes
=================
* **AS-6983** It was possible to add the same credential multiple times to a discovery. This has been fixed.
* **AS-9539** Quickly navigating to and from a dashboard would result in a browser console error. This has been fixed.
* **AS-9723** For discovered PDUs (with discovered breaker sensors) and discovered rack PDUs (with discovered outlet sensors), sensor change log entries were getting added to the wrong source asset. This has been addressed.
* **AS-9761** The bar gauge for the Rack Space Availability widget (on location dashboards) was always based on a maximum value of 100 instead of the actual number of positions. This has been fixed.
* **AS-9777** (For Document Management licensees only) Clicking *asset → Information → Documents → Save* repeatedly before the content area reloads would result in multiple duplicate documents being created. This has been addressed.
* **AS-9830** While renaming the All location, some places (such as the bulk import location dropdown) would still show All instead of the new name. This has been fixed.
* **AS-9846** When a physical sensor got unlinked from a location, the change log message would show incorrect coordinates. This has been fixed.
* **AS-9850** Manual sensor names would always be set to the sensor type, even if you renamed them. This has been addressed.

============
Known issues
============
* **AS-9826** Unknown assets are visible in the linked sensor location picker.
* **AS-9849** Deleting a linked sensor does not generate a Change Log entry for the linked asset.
