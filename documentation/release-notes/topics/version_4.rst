#########
Version 4
#########

*******************
Hyperview 4.0 (TBD)
*******************
This section covers significant changes and bug fixes in Hyperview 4.0.x since version 3.14.x.

.. note:: This release has changes and improvements to the Data Collector software. It is strongly recommended to update your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.

============================================================
Enhanced Licensed Feature: Connectivity - Circuit Management
============================================================
Circuit management is a new component of the connectivity feature. It adds to the existing work done for connection management and documentation and extends that to give customers the ability to group multiple connections into an end-to-end circuit. Some of the capabilities in this feature include:

- Set and manage different circuit types and statuses
- Extend circuit properties with custom properties
- Manage access control on different circuits
- Manage sort and search associated connection segments and set side A and Z termination points
- Bulk import data

.. note:: Please contact the Hyperview Sales or Support teams for more information.

=========================================
Enhanced Licensed Feature: Outlet Control
=========================================
Outlet control has been enhanced to allow administrators to control multiple outlets at the same time.

The rack PDU layout has been enhanced to allow the selection of multiple outlets at once and then initiate an action to control turn on, off or cycle selected outlets.

For power-consuming devices, such as servers, the Information -> Power page has been improved to allow for outlet control actions on multiple power sources. The page was further enhanced to display the latest available output total power and load for connected Rack PDUs.

.. note:: Please contact the Hyperview Sales or Support teams for more information.

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
- The **Linux Data Collector** SNMPv3 system has been improved to support SHA256, SHA384 and SHA512 for authentication and AES192 and AES256 for Privacy.
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
- Within the connectivity feature, Connection Type has been renamed to Media Type
- The Rack PDU layout can now be exported to MS Excel
- The document storage calculation will take into account user inbox message space usage
- The License page has been improved to show Licensed and consumed connections
- Various improvements to the sensor card visualization
- Various improvements to the discovery subsystem that should improve speed
- Various additional improvements to manual discovery and discovery abort controls in the Linux version of the data collector

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
- **AS-13360** Fixed a bug in the asset discovery report, where under certain conditions the "Credential Description" remained empty if the asset fails to discover with SNMPv3
- **AS-13435** Fixed a bug that could cause a delete operation to deadlock when deleting a large number of assets
