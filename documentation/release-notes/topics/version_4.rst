#########
Version 4
#########

*******************
Hyperview 4.3 (TBD)
*******************
This section covers significant changes and bug fixes in Hyperview 4.3.x since version 4.2.X

.. important::
   1. This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.
   2. Support for the *Windows* version of the Data Collector will end on *January 31, 2025*. Customers are encouraged to switch to the Linux version before then. Detailed :ref:`installation instructions <Setting-up-data-collectors-doc>` are in the product documentation.
   3. `CentOS Linux 7 End of Life, is June 30, 2024 <https://blog.centos.org/2023/04/end-dates-are-coming-for-centos-stream-8-and-centos-linux-7/>`_. With that, installing the Data Collector will not be supported on this version of CentOS. If you are using this version of Linux, you must update to a supported version to use the latest version of the Data Collector.

=======================================
Enhanced Licensed Feature: Connectivity
=======================================
- Connections and Circuits have been enhanced to allow users to attach documents, images, and links.

- You can also now add Work Notes to Connections and Circuits.

========================================
Enhanced Feature: Alarm Event Management
========================================
- A new *Assets -> Events* page was added to the application to allow for consolidated events management. The events displayed will be a global view of all events on assets the user can access.

- Users can export, filter, and sort the events list by various criteria.

- Events can be acknowledged or closed individually and in bulk.

=================================================
Enhanced Feature: Notifications -> Alarm Policies
=================================================
- The notification template has been updated to aggregate multiple events in one email. This enhancement will reduce email noise in the case of event spikes.

- Administrators can now select All or multiple asset types from the same Alarm Policy. Previously, users were allowed to choose a single asset type for policy.

- Administrators can now select a notification channel for an Alarm Policy; more information on Notification Channels is below.

========================================================
Enhanced Feature: Notifications -> Notification Channels
========================================================
- This feature allows Administrators to create an Alarm Policy to channel notifications to an external communication or alerting system such as Microsoft Teams.

- This release adds the integration with Microsoft Teams. Administrators can configure a link to a specific Microsoft Teams channel. Administrators can add multiple channels and target them with different Alarm Policies.

================================================
Enhanced Feature: Linux & Windows Data Collector
================================================
- VMware protocol has been enhanced to add a monitoring pipeline for discovered sensors. To use this enhancement, customers must update to the latest version of the Data Collector and rediscover the assets.

======================================
Other notable changes and improvements
======================================
- Data grids will save column selection and sorting order by default.

- Launch Web Interface has been added as a primary action button on device asset types.

- Volume Unit has been added as a :ref:`locale setting <Locale-settings-doc>` in the application.

- The Documents section has been moved to be a main navigation menu item. Previously, it was under the Assets section.

- The location layout editor now supports adding triangular shapes.

- Multi-value asset properties like serial numbers, IP addresses, and MAC addresses have been updated to have consistent sorting order in search results and other display contexts, where applicable.

=================
Notable bug fixes
=================
- **AS-11359** Fixed a bug in the Debian Linux SSH protocol definition that caused storage capacity sensors not to be updated during the monitoring cycle.

- **AS-13941** Fixed a bug that, under certain conditions, caused the page not to render with search results when navigating from the asset summary widget to Advanced Search.

- **AS-14086** Fixed a bug that caused user password resets to fail under certain conditions.

- **AS-14107** Fixed a bug that, under certain conditions, caused the breaker information of certain Eaton Large PDUs to be discovered incorrectly.

- **AS-14252** Fixed a bug that caused authentication to fail when discovering IxOS-based devices.

- **AS-14306** Fixed a bug that, under certain conditions, caused a sensor threshold alarm event to be closed and opened. While the result was the same, it caused extra logging and, in some cases, extra notifications. The bug fix will close any open sensor threshold alarm events where applicable. The system will re-evaluate and open new alarm events where needed with the next monitoring cycle.

*********************************
Hyperview 4.2 (December 12, 2023)
*********************************
This section covers significant changes and bug fixes in Hyperview 4.2.x since version 4.1.X

.. important::
   This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.

=======================================
Enhanced Licensed Feature: Connectivity
=======================================
Port management has been greatly improved:

- The port name template is editable when adding new ports from the Information -> Network Ports page
- The port name template is editable when adding new ports from the Layout page of network devices and patch panels
- Port names are now editable in bulk from the Information -> Network Ports page and the Layout page of network devices and patch panels. This will allow for better alignment with internal or manufacturer port naming conventions
- Ports can now be deleted in bulk from the Layout page of network devices, patch panels, and the Information -> Network Ports page of applicable assets

==================================
Enhanced Feature: New Bulk Actions
==================================
Bulk actions have been added to:

- Add network ports
- Edit/update network ports

======================================
Enhanced Feature: Linux Data Collector
======================================
- The Linux version of the Data Collector has been improved to enhance compatibility with AES256 for SNMPv3 discovery and monitoring
- Various internal optimizations have been added to improve performance and resource usage

======================================
Other notable changes and improvements
======================================
- Discovery state has been added to the Information -> Properties page. This will allow users to tell if an asset has been discovered or manually added
- Dell iDRAC9 SNMP discovery will add sensors for system run time, power supply current and power supply redundancy
- BIOS version has been added to standard asset properties and will be automatically populated if the asset is discovered

=================
Notable bug fixes
=================
- **AS-13845** Fixed a bug that allowed users to edit shelves with incorrect start and end rack-u location
- **AS-13969** Fixed a bug that caused an API error when setting the connector type of a patch panel port
- **AS-13409** Fixed a bug that caused the browser alert to not be displayed when closing a tab with unsaved changes

========================
Changes in version 4.2.1
========================
- **AS-14114** Fixed an issue that caused invalid device merges while discovering Nutanix hardware using the VMware protocol

********************************
Hyperview 4.1 (November 8, 2023)
********************************
This section covers significant changes and bug fixes in Hyperview 4.1.x since version 4.0.X

.. raw:: html

   <div class="pb-3"><iframe src="https://player.vimeo.com/video/888833956?h=1f86b7e17a&color=6ca6ed&title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div>

.. important::
   This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.

=====================================================
New Licensed Feature - Equinix Smart View integration
=====================================================
- This integration is a data synchronization service that allows Hyperview customers to get information about the infrastructure products they have with Equinix. The service will automatically synchronize and map the location hierarchy, available power and environmental sensors
- Once configured, the location hierarchy from IBX to racks will be created. Sensors exposed through the Equinix Smart View API will be created, mapped to the right asset and tracked
- The integration requires an Equinix Smart View account. Please contact your Equinix representative for more information

=====================================================
New Feature - Autodetection of web management address
=====================================================
- A new property was added and will be automatically filled by the discovery process for the device web interface address
- A new action was added to allow users to launch the interface of an asset
- The address will use the SNMP communication IP address for rack PDUs and small UPSs and the IPMI/BMC for servers
- The property can be manually set by users with a Power User and above role access

==========================================
Enhanced Licensed Feature: Firmware Update
==========================================
- Panduit Gen5 rack power distribution units are now supported by the firmware update system
- nVent Enlogic EN2.0 rack power distribution units are now supported by the firmware update system

===============================================
Enhanced Licensed Feature: ServiceNow CMDB Sync
===============================================
- The sync process now factors indirect changes to asset hierarchy during incremental updates

=================================
Enhanced Feature: Location Layout
=================================
- Floor plan layout has been improved to show the temperature and humidity values on hover
- Export functionality to PDF, PNG, and JPEG has been added to the location layout

======================================
Enhanced Feature: Linux Data Collector
======================================
- The Linux version of the Data Collector has been improved to support IxOS and WMI

======================================
Other notable changes and improvements
======================================
- Debian 12 is supported to run the Linux version of the Data Collector
- Debian 10 is no longer supported to run the Linux version of the Data Collector
- Ubuntu 18.04 is no longer supported to run the Linux version of the Data Collector
- Tripp Lite SNMP trap support has been improved
- Cisco SNMP trap support has been improved
- Cisco SNMP support has been enhanced to detect and monitor more sensors
- General improvements have been added to bulk asset import
- New computed sensors have been added for location average temperature and humidity
- Interface alias/description is now searchable
- Column sort order and selection will be automatically saved for PDU/RPP layout grids
- PDU/RPP max breaker size has been increased to 1000 Amps, and the main breaker size max has been increased to 7500 Amps

=================
Notable bug fixes
=================
- **AS-13108** Fixed a bug in the Assets By Type dashboard widget that could make it unclear which bar belongs to what asset type
- **AS-13638** Fixed a bug where under certain conditions, the asset lifecycle state would be set to active when updating the monitoring state
- **AS-13779** Fixed a bug where under certain conditions, racks with environmental sensors from assets with a different access policy can cause the "no access" pages to be shown instead of the device dashboard
- **AS-13790** Fixed a bug that could cause assets to show outside of the rack in 3D view
- **AS-13865** Fixed a bug that could cause the events page grid to not auto-adjust size to the browser content area

========================
Changes in version 4.1.1
========================
- **AS-13907** Updated the base operating system container for Linux Data Collector services to the latest patch level

*******************************
Hyperview 4.0 (August 15, 2023)
*******************************
This section covers significant changes and bug fixes in Hyperview 4.0.x since version 3.14.x.

.. raw:: html

	<div class="pb-3"><iframe src="https://player.vimeo.com/video/856952277?h=db346fc3e3&color=6ca6ed&title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div>

.. important::
   This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.

============================================================
Enhanced Licensed Feature: Connectivity - Circuit Management
============================================================
Circuit management is a new component of the Connectivity add-on feature. It adds to the existing work done for connection management and documentation and extends that to give customers the ability to group multiple connections into an end-to-end circuit. Some of the capabilities in this feature include:

- Set and manage different circuit types and statuses
- Extend circuit properties with custom properties
- Manage access control on different circuits
- Manage sort and search associated connection segments and set side A and Z termination points
- Bulk import data

.. note:: Please contact the Hyperview sales or support teams for more information.

=========================================
Enhanced Licensed Feature: Outlet Control
=========================================
Outlet Control has been enhanced to allow administrators to control multiple outlets at the same time.

The rack PDU layout has been enhanced to allow the selection of multiple outlets at once and then initiate an action to control turn on, off or cycle selected outlets.

For power-consuming devices, such as servers, the Information -> Power page has been improved to allow for outlet control actions on multiple power sources. The page was further enhanced to display the latest available output total power and load for connected power providers if that data is available.

.. note:: Please contact the Hyperview sales or support teams for more information.

========================
New Feature - User Inbox
========================
User Inbox is a new standard feature in Hyperview. It allows users to view all the notifications they have received from the system. For example:

- Work note mentions
- Notifications from bulk actions
- Alarm events from notification policies and watched assets

====================================================
Enhanced Feature - SNMPv3 authentication and privacy
====================================================
- The **Linux Data Collector** SNMPv3 system has been improved to support SHA256, SHA384 and SHA512 for authentication and AES192 and AES256 for Privacy
- SNMPv3 authentication and privacy password length is now enforced to be at least 8 characters to comply with RFC-3414

==============================
Enhanced Feature - API Clients
==============================
- Previously API client permissions such as Role and Access Policies were not editable. With this version, API user permissions can be modified by an Administrator

===========================================
Enhanced Feature - Power Path Visualization
===========================================
- Power path visualization will allow you to double-click and explore various nodes in the power path
- Power path can now be exported to PDF and various image formats

=========================================
Enhanced Feature - Credentials Management
=========================================
- Credentials management will not allow you to view multiple passwords at once
- Credentials management has been enhanced to create an application log when an Administrator views the password within a credential record
- Credentials management API has been enhanced to not allow an Administrator to view multiple passwords within a credentials collection

============================================
Enhanced Feature - New Troubleshooting Tools
============================================
- Net-SNMP docker container
- SNMP Get troubleshooting tool
- The BacnetIpWalkerCli diagnostic tool has been improved to allow binding to different ports

======================================
Other notable changes and improvements
======================================
- Any API route that has been deprecated before this release has been removed
- The Hyperview API link under the Help navigation menu has been renamed to "API Explorer"
- Within the Connectivity add-on feature, Connection Type has been renamed to Media Type
- The Rack PDU layout can now be exported to MS Excel
- The document storage calculation will take into account user inbox message space usage
- The License page has been improved to show Licensed and consumed connections
- Various improvements to the sensor card visualization
- Various improvements to the discovery subsystem that should improve speed
- Various additional improvements to manual discovery and discovery abort controls in the Linux version of the Data Collector

============
Known issues
============
- **AS-13409** When there is a pending edit, the browser doesn't display the unsaved changes alert when closing a tab, reloading, or navigating to a new URL

=================
Notable bug fixes
=================
- **AS-12012** Fixed a bug that caused a discovery CIDR range details to not display when adding an address range to a discovery
- **AS-13088** Fixed a bug that caused shape type edits to not work after a floor plan layout shape is saved
- **AS-13157** Fixed a bug that caused certain component-level sensors not to trigger thresholds
- **AS-13257** Fixed a bug that caused the 3D layout popover information to not be localized
- **AS-13360** Fixed a bug in the asset discovery report, where under certain conditions, the "Credential Description" remained empty if the asset failed to discover with SNMPv3
- **AS-13435** Fixed a bug that could cause a delete operation to deadlock when deleting a large number of assets

========================
Changes in version 4.0.1
========================
- **AS-13772** Added a feature to limit the number of concurrent discoveries per Data Collector to ten or less

