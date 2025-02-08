# Version 4

## Hyperview 4.8 (TBD)

This section covers significant changes and bug fixes in Hyperview 4.8.x since version 4.7.x

:::{important}
1. This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data
   Collectors to the latest version to maintain an optimal monitoring and discovery experience.

2. Support for the *Windows* version of the Data Collector has ended on *January 31, 2025*. Customers must switch
   to the Linux version of the Data Collector. Detailed {ref}`installation instructions <Setting-up-data-collectors-doc>`
   are in the product documentation.

3. The communication provider for email alarm event notifications has been changed from Twilio SendGrid to Microsoft Azure
   Communication Services.
:::

### Enhanced Feature: Microsoft Teams Notification Channels

Microsoft has [announced](https://devblogs.microsoft.com/microsoft365dev/retirement-of-office-365-connectors-within-microsoft-teams/)
the sudden and quick retirement of the Webhook interface within Microsoft Teams. With this change we have updated the
functionality to support the new recommended approach.

The functionality will still use webhooks, albeit, the webhook will need to be created using a Workflow instead of a Connector.
More information is in the [Microsoft documentation](https://support.microsoft.com/en-us/office/create-incoming-webhooks-with-workflows-for-microsoft-teams-8ae491c7-0394-4861-ba59-055e33f75498).

:::{important}
If you have set up notifications using the deprecated Webhook interface, please convert to the new method to avoid an
interruption in notifications. Contact Hyperview support if you need any assistance or advice on the matter.
:::

### Enhanced Feature: Layout editor

1. A new "Multi Select" menu has been added to the layout header action item group to allow for group select of various layout components.
   Capabilities have been added for select all, select all shapes, select all Racks, and select all assets as well as a rectangular
   selection box that can be drawn on the layout. Once selected, items can be removed or group edited depending on context.

2. The view filter for rack total power has been improved to dynamically read the rack design value from the parent location and adjust
   the color schema based on the setting.

### Enhanced Feature: Rack power widget

To allow for better power planning, The Rack Power widget has been enhanced to show total template power for devices in the rack and
planned power.

The extra information will appear as constant lines in the graph and uses asset model information.

### Enhanced Feature: Bulk actions

The Bulk Actions -> Update Asset Property bulk action has been updated to add Template Power.

### Enhanced Feature: Rack layout

The rack layout has been enhanced to allow customers to place assets in the front and rear of the rack in the same rack unit.

### Enhanced Feature: Asset power sensors

The power analyzer will now take into consideration other available power information such as metered outlets connected to the asset
and will calculate power metrics where applicable.

:::{note}
This will add new computed sensors to track this data.
:::

### Enhanced Feature: Discovery

The discovery engine has been enhanced to support more asset variations from vendors like Vertiv/Liebert, Schneider Electric/APC and others. Customers are required to have the latest version of the Linux Data Collector to take advantage of these improvements.

### Other notable changes and improvements

- The Camera asset type can now be added manually. Prior to this, the Camera asset type could only be discovered.
- The Circuit Name property within connectivity has been renamed to Circuit ID to be more inline with industry conventions.
- The Template Power asset property can now be edited by users regardless of the source.
- The notification event template has been updated to provide more information.
- Bulk import validation has been improved with more extensive data validation, and more clear error messages.
- Improved access policy checks when using layout editor.
- Improved access policy checks when using the Carbon Footprint report.
- Improved the Date/time picker in the mute notifications modal to work better on smaller mobile device screens.

### Notable bug fixes

- **AS-15776** Fixed a bug that caused type specific custom properties to not be created if an asset changes type.
- **AS-16450** Fixed a bug that caused the outlet location to not appear in the power path PDU/RPP Asset info grid.
- **AS-16561** Fixed a bug that caused discoveries to fail if the discovery name is very long.
- **AS-15759** Fixed a bug that caused the weight to not show properly in advanced search.
- **AS-16358** Fixed a bug that caused the output total power sensor to not be computed after the Bank Power Sensors.

## Hyperview 4.7 (November 25, 2024)

This section covers significant changes and bug fixes in Hyperview 4.7.x since version 4.6.x

:::{important}
1. This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.
2. Support for the *Windows* version of the Data Collector will end on *January 31, 2025*. Customers are encouraged to switch to the Linux version before then. Detailed {ref}`installation instructions <Setting-up-data-collectors-doc>` are in the product documentation.
3. Microsoft has [announced](https://devblogs.microsoft.com/microsoft365dev/retirement-of-office-365-connectors-within-microsoft-teams/) the sudden and quick retirement of the Webhook interface within Microsoft Teams. This impacts the Notifications Channels functionality. We are evaluating options and will be addressing this in an upcoming release.
:::

### Enhanced Feature: Device Discovery

Discovery for Cisco switches has been enhanced to auto-detect and track power information. If detected, new sensors will be created to track the power data.

Discovery for Rittal CMC III monitoring system has been improved to detect more environmental sensors.

:::{important}
These enhancements require the latest Linux version of the Data Collector.
:::

## Hyperview 4.6 (September 26, 2024)

This section covers significant changes and bug fixes in Hyperview 4.6.x since version 4.5.x

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/1018042708?h=7bff7ad020&color=6ca6ed&title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div>
```

:::{important}
1. This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.
2. Support for the *Windows* version of the Data Collector will end on *January 31, 2025*. Customers are encouraged to switch to the Linux version before then. Detailed {ref}`installation instructions <Setting-up-data-collectors-doc>` are in the product documentation.
3. Microsoft has [announced](https://devblogs.microsoft.com/microsoft365dev/retirement-of-office-365-connectors-within-microsoft-teams/) the sudden and quick retirement of the Webhook interface within Microsoft Teams. This impacts the Notifications Channels functionality. We are evaluating options and will be addressing this in an upcoming release.
:::

### Enhanced Feature: Alarm event management

The alarm grid has been improved to show the alarm event category.

### Enhanced Feature: Alarm event notification policies

Alarm event categories have been added as a criteria for alarm events. A Hyperview administrator is now able to select a specific alarm event category or all categories when defining a policy.

Alarm event category options are:

- All Categories
- AssetTracker Status
- Data Collector Status
- Firmware Status
- Host Unreachable
- Sensor Threshold Check
- SNMP Trap
- Unknown Trap

Existing notification policies will have the "All Categories" option selected by default. This can be changed by editing the policy.

### Enhanced Feature: Asset alarm event notification muting

Assets undergoing maintenance or causing excessive notifications can now be muted for a specific period of time. The functionality is available under the **Actions -> Mute Notifications** menu.

A Mute action can be cancelled from the **Actions -> Cancel Mute Notifications** menu.

### Enhanced Feature: Bulk actions -> Mute/Cancel Mute Notifications

Mute and Cancel Mute Notifications can also be performed as a bulk action on a list of assets. The bulk action is available from:

- Advanced Search
- Information -> Assets
- Business Entity -> Associations -> Assets
- Assets By Type

### Enhanced Feature: Dashboard widgets

A widget was added to display asset documents and links.

### Other notable changes and improvements

- The asset Actions menu has been enhanced to group related actions.
- Server asset types can now be changed into Storage types and ViceVersa.
- Various minor improvements to the Carbon Footprint report have been done.
- Enhanced the Add New page of Assets, Connections and Circuits to detect unsaved changes and warn the user if they try to navigate to another page before saving.
- Enhanced the Rack asset type to have Lifecycle information.
- String Type custom properties will be made clickable if the user enters a valid URL.

### Notable bug fixes

- **AS-15377** Fixed a bug that caused the Business Entity field to disappear when resizing the Add New page between desktop and mobile resolution.
- **AS-15770** Fixed a bug that under certain circumstances caused the Business Entity association of an asset to be deleted if the Sensor Monitoring Profile is changed.
- **AS-14681** Fixed a bug that caused the user to be redirected to a 404 page when double clicking on a tile in 3D view.

## Hyperview 4.5 (July 23, 2024)

This section covers significant changes and bug fixes in Hyperview 4.5.x since version 4.4.x

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/994173410?h=7bff7ad020&color=6ca6ed&title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div>
```

:::{important}
1. This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.
2. Support for the *Windows* version of the Data Collector will end on *January 31, 2025*. Customers are encouraged to switch to the Linux version before then. Detailed {ref}`installation instructions <Setting-up-data-collectors-doc>` are in the product documentation.
3. Microsoft has [announced](https://devblogs.microsoft.com/microsoft365dev/retirement-of-office-365-connectors-within-microsoft-teams/) the sudden and quick retirement of the Webhook interface within Microsoft Teams. This impacts the Notifications Channels functionality. We are evaluating options and will be addressing this in an upcoming release.
:::

### New Licensed Feature - Reporting/Carbon footprint reporting

This release introduces a Reports section into the Hyperview application. The first report we are introducing is the Carbon Footprint report. With this release, you will be able to track a location's carbon footprint. Track the carbon footprint of rack workloads and assess the impact of the average offset percentage on your carbon footprint in aggregate and per location.

To support this report:
\- Workload Type has been added to all asset types.
\- Workload Type is settable in bulk.
\- Average Scope 2 Carbon Offset % has been added as a property on locations.
\- PUE Setting has been added as a property for locations.

More enhancements and reports are planned in the coming releases of Hyperview this year and beyond.

:::{note}
Please contact the Hyperview sales or support teams for more information.
:::

### New Feature - Dark mode

This release introduces a dark mode GUI theme. The Hyperview GUI will by default set the theme automatically based on the user system preferences. The theme can also be specifically set by the user from the **Account -> Appearance** menu.

### New Feature - In-app help bubble

With this release, we are introducing a new in-app help system powered by [Userflow](https://userflow.com/). Where applicable, we are planning a phased roll-out to customers.

### Enhanced Feature: Business Entities

Business Entity has been added as an optional column in the following grids:

1. Location -> Information -> Assets
2. Assets by type
3. Connectivity -> Connections
4. Connectivity -> Circuits

An "Open in Advanced Search" button has been added to the Business Entity Asset Associations GUI.

### Enhanced Feature: Dashboard widgets

- Network dashboard widget. This will display the discovered and monitored IP address for the device.
- Model information widget. This will display product images and device properties.

Where applicable these two widgets will be in the default asset dashboard. If the dashboard has been customized, then the widgets can be selected and placed on the dashboard.

### Enhanced Feature: Custom Components

The following new custom components have been added to allow customers to log peripherals and components that may not be possible to detect with auto-discovery:

- Tool
- Chassis Component
- PCI Card
- Heat Sink
- Tracking Hardware
- Generic Component

### Enhanced Feature: Computed sensors

The Location asset type will have the following new computed sensors:

- PUE. This is an explicit sensor in addition to the current three PUE computed sensors. This sensor is configured from the location Properties page.
- Carbon emission equivalent.
- Carbon emission equivalent with offset. The offset percentage is configured from the Location Properties page.

The Rack asset type will have the following new computed sensors added:

- Carbon emission equivalent.
- Carbon emission equivalent with offset. The offset percentage is configured from the Rack Properties page.

### Enhanced Licensed Feature: Firmware update

- Support for the Panduit Gen6 rack PDU products has been added.

### Other notable changes and improvements

- USB has been added to the list of port types.
- The Host Name property can now be deleted.
- Discovery State is now available in Advanced Search filters.
- Temperature and Humidity can now be added to manual sensors.

### Known issues

- **AS-15227** The All location carbon footprint report is accessible by all users if the Reporting license is enabled.

### Notable bug fixes

- **AS-14510** Fixed a bug that caused some invalid email address formats to be accepted as valid.
- **AS-14532** Fixed a bug that caused the Asset Type field to be marked as optional when adding custom properties.
- **AS-14543** Fixed a bug that made it not possible to delete a numeric custom property if a default value is not set.
- **AS-14568** Fixed a bug that caused the Camera asset type to not be selectable in Advanced Search filters.
- **AS-14598** Fixed a bug that caused an error message to not be displayed after attempting to link a manual sensor to an asset that already has a sensor of the same type.

### Changes in version 4.5.1

- **AS-15280** Fixed a bug that under certain conditions could cause the carbon footprint report not to load.
- **AS-15325** Fixed a bug that could cause the rack elevation asset labels to not show properly in light mode.

## Hyperview 4.4 (May 13, 2024)

This section covers significant changes and bug fixes in Hyperview 4.4.x since version 4.3.x

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/949690619?h=5f26efd38a&color=6ca6ed&title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div>
```

:::{important}
1. This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.
2. Support for the *Windows* version of the Data Collector will end on *January 31, 2025*. Customers are encouraged to switch to the Linux version before then. Detailed {ref}`installation instructions <Setting-up-data-collectors-doc>` are in the product documentation.
3. [CentOS Linux 7 End of Life, is June 30, 2024,](https://blog.centos.org/2023/04/end-dates-are-coming-for-centos-stream-8-and-centos-linux-7/). With that, installing the Data Collector will not be supported on this version of CentOS. If you are using this version of Linux, you must update to a {ref}`supported version <linux-prerequisites>` to use the latest version of the Data Collector.
:::

### New Feature - Business Entities

Business Entities allow customers to track customers, partners, and department associations to assets, connections and circuits. Business Entities can have contacts and addresses as well as:

- Access Control
- Change Log
- Custom Properties
- Documents
- Work Notes

### Enhanced Licensed Feature: Transfer switch outlet control & layout page

This release adds two enhancements to transfer switch power devices:

- Layout page: This allows customers to create power associations to detected outlets.
- Outlet control: If available and there is an existing control definition, Data center managers will be able to perform outlet control operations detected outlets.

### Enhanced Feature: New Bulk Actions

The bulk actions system has been updated to allow Business Entities to be associated in bulk with assets.

### Enhanced Feature: Connection and Circuit import

The Connections and Circuits import system has been updated to allow for updating and setting of Business Entities.

### Enhanced Feature: Advanced Search

Advanced Search has been updated to allow users to search and filter by Business Entity.

### Notable bug fixes

- **AS-13547** Fixed a bug that allowed administrators, under certain conditions, to save SNMPv3 credentials without a password even if one is required.
- **AS-14366** Fixed a bug that allowed administrators, under certain conditions, to delete a credential that is in use for control operations.

### Changes in version 4.4.1

- **AS-14694** Update database driver

## Hyperview 4.3 (March 11, 2024)

This section covers significant changes and bug fixes in Hyperview 4.3.x since version 4.2.x

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/924652434?h=ea659bea42&color=6ca6ed&title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div>
```

:::{important}
1. This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.
2. Support for the *Windows* version of the Data Collector will end on *January 31, 2025*. Customers are encouraged to switch to the Linux version before then. Detailed {ref}`installation instructions <Setting-up-data-collectors-doc>` are in the product documentation.
3. [CentOS Linux 7 End of Life, is June 30, 2024,](https://blog.centos.org/2023/04/end-dates-are-coming-for-centos-stream-8-and-centos-linux-7/). With that, installing the Data Collector will not be supported on this version of CentOS. If you are using this version of Linux, you must update to a {ref}`supported version <linux-prerequisites>` to use the latest version of the Data Collector.
:::

### Enhanced Licensed Feature: Connectivity

- Connections and Circuits have been enhanced to allow users to attach documents, images, and links.
- You can also now add Work Notes to Connections and Circuits.

### Enhanced Feature: Alarm Event Management

- A new *Assets -> Events* page was added to the application to allow for consolidated events management. The events displayed will be a global view of all events on assets the user can access.
- Users can export, filter, and sort the events list by various criteria.
- Events can be acknowledged or closed individually and in bulk.

### Enhanced Feature: Notifications -> Alarm Policies

- The notification template has been updated to aggregate multiple events in one email. This enhancement will reduce email noise in the case of event spikes.
- Administrators can now select All or multiple asset types from the same Alarm Policy. Previously, users were allowed to choose a single asset type for policy.
- Administrators can now select a notification channel for an Alarm Policy; more information on Notification Channels is below.

### Enhanced Feature: Notifications -> Notification Channels

- This feature allows administrators to create an Alarm Policy to channel notifications to an external system such as Microsoft Teams.
- This release adds the integration with Microsoft Teams. Administrators can configure a link to a specific Microsoft Teams channel. Administrators can add multiple channels and target them with different Alarm Policies.

### Enhanced Feature: Linux & Windows Data Collector

- VMware protocol has been enhanced to add a monitoring pipeline for discovered sensors. To use this enhancement, customers must update to the latest version of the Data Collector and rediscover the assets.
- Rocky Linux 9 was tested with the Linux version of the Data Collector.

### Other notable changes and improvements

- Data grids will save column selection and sorting order by default.
- Launch Web Interface has been added as a primary action button on device asset types.
- Volume Unit has been added as a {ref}`locale setting <Locale-settings-doc>` in the application.
- The Documents section has been moved to be a primary navigation menu item. Previously, it was under the Assets section.
- The location layout editor now supports adding triangular shapes.
- Multi-value asset properties like serial numbers, IP addresses, and MAC addresses have been updated to have consistent sorting order in search results and other display contexts, where applicable.
- Tape Drive can now be added as a custom component on device asset types.
- We added a shortcut to the asset sensors list from the Information menu: *Information -> Sensors List*.

### Known issues

- **AS-14401** Custom property columns may not appear in alphabetical order when added to a data grid.

### Notable bug fixes

- **AS-11359** Fixed a bug in the Debian Linux SSH protocol definition that caused storage capacity sensors not to be updated during the monitoring cycle.
- **AS-13941** Fixed a bug that, under certain conditions, caused the page not to render with search results when navigating from the asset summary widget to Advanced Search.
- **AS-14086** Fixed a bug that caused user password resets to fail under certain conditions.
- **AS-14107** Fixed a bug that, under certain conditions, caused the breaker information of certain Eaton Large PDUs to be discovered incorrectly.
- **AS-14252** Fixed a bug that caused authentication to fail when discovering IxOS-based devices.
- **AS-14306** Fixed a bug that, under certain conditions, caused a sensor threshold alarm event to be closed and opened. While the result was the same, it caused extra logging and, in some cases, extra notifications. The bug fix will close any open sensor threshold alarm events where applicable. The system will re-evaluate and open new alarm events where needed with the next monitoring cycle.

### Changes in version 4.3.1

- **AS-14434** Fixed a bug in the Linux version of the Data Collector that could cause the discovery or the monitoring service to run out of available UDP sockets under load.

### Changes in version 4.3.2

- **AS-14448** Fixed a bug that, if triggered, could cause data grids not to display correctly.

## Hyperview 4.2 (December 12, 2023)

This section covers significant changes and bug fixes in Hyperview 4.2.x since version 4.1.x

:::{important}
This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.
:::

### Enhanced Licensed Feature: Connectivity

Port management has been greatly improved:

- The port name template is editable when adding new ports from the Information -> Network Ports page
- The port name template is editable when adding new ports from the Layout page of network devices and patch panels
- Port names are now editable in bulk from the Information -> Network Ports page and the Layout page of network devices and patch panels. This will allow for better alignment with internal or manufacturer port naming conventions
- Ports can now be deleted in bulk from the Layout page of network devices, patch panels, and the Information -> Network Ports page of applicable assets

### Enhanced Feature: New Bulk Actions

Bulk actions have been added to:

- Add network ports
- Edit/update network ports

### Enhanced Feature: Linux Data Collector

- The Linux version of the Data Collector has been improved to enhance compatibility with AES256 for SNMPv3 discovery and monitoring
- Various internal optimizations have been added to improve performance and resource usage

### Other notable changes and improvements

- Discovery state has been added to the Information -> Properties page. This will allow users to tell if an asset has been discovered or manually added
- Dell iDRAC9 SNMP discovery will add sensors for system run time, power supply current and power supply redundancy
- BIOS version has been added to standard asset properties and will be automatically populated if the asset is discovered

### Notable bug fixes

- **AS-13845** Fixed a bug that allowed users to edit shelves with incorrect start and end rack-u location
- **AS-13969** Fixed a bug that caused an API error when setting the connector type of a patch panel port
- **AS-13409** Fixed a bug that caused the browser alert to not be displayed when closing a tab with unsaved changes

### Changes in version 4.2.1

- **AS-14114** Fixed an issue that caused invalid device merges while discovering Nutanix hardware using the VMware protocol

## Hyperview 4.1 (November 8, 2023)

This section covers significant changes and bug fixes in Hyperview 4.1.x since version 4.0.X

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/888833956?h=1f86b7e17a&color=6ca6ed&title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div>
```

:::{important}
This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.
:::

### New Licensed Feature - Equinix Smart View integration

- This integration is a data synchronization service that allows Hyperview customers to get information about the infrastructure products they have with Equinix. The service will automatically synchronize and map the location hierarchy, available power and environmental sensors
- Once configured, the location hierarchy from IBX to racks will be created. Sensors exposed through the Equinix Smart View API will be created, mapped to the right asset and tracked
- The integration requires an Equinix Smart View account. Please contact your Equinix representative for more information

### New Feature - Autodetection of web management address

- A new property was added and will be automatically filled by the discovery process for the device web interface address
- A new action was added to allow users to launch the interface of an asset
- The address will use the SNMP communication IP address for rack PDUs and small UPSs and the IPMI/BMC for servers
- The property can be manually set by users with a Power User and above role access

### Enhanced Licensed Feature: Firmware Update

- Panduit Gen5 rack power distribution units are now supported by the firmware update system
- nVent Enlogic EN2.0 rack power distribution units are now supported by the firmware update system

### Enhanced Licensed Feature: ServiceNow CMDB Sync

- The sync process now factors indirect changes to asset hierarchy during incremental updates

### Enhanced Feature: Location Layout

- Floor plan layout has been improved to show the temperature and humidity values on hover
- Export functionality to PDF, PNG, and JPEG has been added to the location layout

### Enhanced Feature: Linux Data Collector

- The Linux version of the Data Collector has been improved to support IxOS and WMI

### Other notable changes and improvements

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

### Notable bug fixes

- **AS-13108** Fixed a bug in the Assets By Type dashboard widget that could make it unclear which bar belongs to what asset type
- **AS-13638** Fixed a bug where under certain conditions, the asset lifecycle state would be set to active when updating the monitoring state
- **AS-13779** Fixed a bug where under certain conditions, racks with environmental sensors from assets with a different access policy can cause the "no access" pages to be shown instead of the device dashboard
- **AS-13790** Fixed a bug that could cause assets to show outside of the rack in 3D view
- **AS-13865** Fixed a bug that could cause the events page grid to not auto-adjust size to the browser content area

### Changes in version 4.1.1

- **AS-13907** Updated the base operating system container for Linux Data Collector services to the latest patch level

## Hyperview 4.0 (August 15, 2023)

This section covers significant changes and bug fixes in Hyperview 4.0.x since version 3.14.x.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/856952277?h=db346fc3e3&color=6ca6ed&title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen></iframe></div>
```

:::{important}
This release has changes and improvements to the Data Collector software. We strongly recommend updating your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery experience.
:::

### Enhanced Licensed Feature: Connectivity - Circuit Management

Circuit management is a new component of the Connectivity add-on feature. It adds to the existing work done for connection management and documentation and extends that to give customers the ability to group multiple connections into an end-to-end circuit. Some of the capabilities in this feature include:

- Set and manage different circuit types and statuses
- Extend circuit properties with custom properties
- Manage access control on different circuits
- Manage sort and search associated connection segments and set side A and Z termination points
- Bulk import data

:::{note}
Please contact the Hyperview sales or support teams for more information.
:::

### Enhanced Licensed Feature: Outlet Control

Outlet Control has been enhanced to allow administrators to control multiple outlets at the same time.

The rack PDU layout has been enhanced to allow the selection of multiple outlets at once and then initiate an action to control turning on, off, or cycling selected outlets.

For power-consuming devices, such as servers, the Information -> Power page has been improved to allow for outlet control actions on multiple power sources. The page was further enhanced to display the latest available output total power and load for connected power providers if that data is available.

:::{note}
Please contact the Hyperview sales or support teams for more information.
:::

### New Feature - User Inbox

User Inbox is a new standard feature in Hyperview. It allows users to view all the notifications they have received from the system. For example:

- Work note mentions
- Notifications from bulk actions
- Alarm events from notification policies and watched assets

### Enhanced Feature - SNMPv3 authentication and privacy

- The **Linux Data Collector** SNMPv3 system has been improved to support SHA256, SHA384 and SHA512 for authentication and AES192 and AES256 for Privacy
- SNMPv3 authentication and privacy password length is now enforced to be at least eight characters to comply with RFC-3414

### Enhanced Feature - API Clients

- Previously, API client permissions such as Role and Access Policies were not editable. With this version, API user permissions can be modified by an Administrator

### Enhanced Feature - Power Path Visualization

- Power path visualization will allow you to double-click and explore various nodes in the power path
- Power path can now be exported to PDF and various image formats

### Enhanced Feature - Credentials Management

- Credentials management will not allow you to view multiple passwords at once
- Credentials management has been enhanced to create an application log when an Administrator views the password within a credential record
- Credentials management API has been enhanced to not allow an Administrator to view multiple passwords within a credentials collection

### Enhanced Feature - New Troubleshooting Tools

- Net-SNMP docker container
- SNMP Get troubleshooting tool
- The BacnetIpWalkerCli diagnostic tool has been improved to allow binding to different ports

### Other notable changes and improvements

- Any API route that has been deprecated before this release has been removed
- The Hyperview API link under the Help navigation menu has been renamed to "API Explorer"
- Within the Connectivity add-on feature, Connection Type has been renamed to Media Type
- The Rack PDU layout can now be exported to MS Excel
- The document storage calculation will take into account user inbox message space usage
- The License page has been improved to show Licensed and consumed connections
- Various improvements to the sensor card visualization
- Various improvements to the discovery subsystem that should improve speed
- Various additional improvements to manual discovery and discovery abort controls in the Linux version of the Data Collector

### Known issues

- **AS-13409** When there is a pending edit, the browser doesn't display the unsaved changes alert when closing a tab, reloading, or navigating to a new URL

### Notable bug fixes

- **AS-12012** Fixed a bug that caused a discovery CIDR range details to not display when adding an address range to a discovery
- **AS-13088** Fixed a bug that caused shape type edits to not work after a floor plan layout shape is saved
- **AS-13157** Fixed a bug that caused certain component-level sensors not to trigger thresholds
- **AS-13257** Fixed a bug that caused the 3D layout popover information to not be localized
- **AS-13360** Fixed a bug in the asset discovery report, where under certain conditions, the "Credential Description" remained empty if the asset failed to discover with SNMPv3
- **AS-13435** Fixed a bug that could cause a delete operation to deadlock when deleting a large number of assets

### Changes in version 4.0.1

- **AS-13772** Added a feature to limit the number of concurrent discoveries per Data Collector to ten or less
