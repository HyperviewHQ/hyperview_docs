# Version 5

## Hyperview 5.2 (October 22, 2025)

This section covers significant changes and bug fixes in Hyperview 5.2.x since version 5.1.x

:::{important}
1. This release has changes and improvements to the Data Collector software. We strongly recommend updating
   your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery
   experience.

2. Customers using Hyperview open-source tools such as hvcli must update to the latest version.
:::

### Enhanced Feature: Connectivity

Carrier has been added as a standard property on Circuits. This field is searchable, sortable and importable via the standard import template.

### Enhanced Feature: Quick Search & Advanced Search

Quick Search has been updated to include discovered asset host name.

Advanced Search filter builder has been updated to include host name as a property filter.

### Enhanced Feature: Data Collector

Various optimizations have been added to enhance monitoring and communication performance with the Hyperview API.

openSUSE Leap 15 and 16 have been tested and are now supported for running the data collector software.

:::{note}
Customers must update to the 5.2.x version of the data collector to take advantage of these improvements.
:::

### Enhanced Feature: Modbus Monitoring

The Modbus definition builder has been enhanced to support 64 bit input and holding registers.

:::{note}
Customers must update to the 5.2.x version of the data collector to take advantage of these improvements.
:::

### Other notable changes and improvements

- Desired Temperature was added as an asset property to the following asset types; CRAC, CRAH, Chiller, In Row Cooling, Environmental Monitor,  Rack PDU, Small UPS, and Location. This is in addition to the Rack asset type. Adding this property will allow customers to create more granular threshold alarm events for these asset types.
- Enumerated sensor readings via the API have been extended to add the raw value. Customers consuming sensor updates via the API can get the string and raw enumerated values using the same API call.
- Improvements have been added to the handling of long user-set names for various entities in the application.

### Notable bug fixes

- **AS-15269** Fixed a bug that could cause an asset location move to be reverted.
- **AS-19118** Fixed a bug that caused the incorrect unit of measure to be displayed in an alarm event message.
- **AS-19119** Fixed a bug that caused the incorrect event message template to be used for some sensor threshold alarm events.
- **AS-18557** Fixed a bug that could cause the mouse wheel zoom functionality to not work properly on Firefox.
- **AS-18952** Fixed a bug that could cause the Business Entity to be missing from Circuit & Connection Info panels.

### Changes in version 5.2.1

- **AS-19160** Fixed a bug the could cause the Connect/Disconnect Asset button to not show on the Rack PDU and Transfer Switch layout page when Outlet Control is not licensed.

## Hyperview 5.1 (August 22, 2025)

```{raw} html
<div class="pb-3">
<div style="padding:56.25% 0 0 0;position:relative;"><iframe src="https://player.vimeo.com/video/1125547131?badge=0&amp;autopause=0&amp;player_id=0&amp;app_id=58479" frameborder="0" allow="autoplay; fullscreen; picture-in-picture; clipboard-write; encrypted-media; web-share" referrerpolicy="strict-origin-when-cross-origin" style="position:absolute;top:0;left:0;width:100%;height:100%;" title="Hyperview DCIM 5.1 Software Release"></iframe></div><script src="https://player.vimeo.com/api/player.js"></script>
</div>
```

This section covers significant changes and bug fixes in Hyperview 5.1.x since version 5.0.x

:::{important}
1. This release has changes and improvements to the Data Collector software. We strongly recommend updating
   your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery
   experience.

2. Customers using Hyperview open-source tools such as hvcli/asset tool must update to the latest version.
:::

### New Licensed Feature: Accelerated Polling

This feature allows administrators to specify sub-five minute polling periods up to once every minute.

:::{note}
Please contact the Hyperview sales or support teams for more information.
:::

### Enhanced Feature: 2D, 3D, Map, Multi-Rack and Rack Layout

The 2D layout editor has been improved to allow for snapping to rack. This will improve the UX of placing multiple racks next to each other by allowing for more precise placement.

The 2D layout editor has been improved to auto-hide the controls while drawing a grid.

A new **Custom Property** filter was added to the **View** menu of the Rack and Location 2D, 3D, Map and Multi-Rack layout section. This will allow Hyperview users to filter and report on various ad-hoc data in the system.

For example, If you have a custom property that classifies assets by network location, such DMZ, Production or Test, and you have that data captured in Hyperview, you will be able to create a report that would quickly visualize the location and distribution of assets that carry these properties.

Please refer to the Hyperview product documentation and user guide for more information.

### Enhanced Feature: Asset Dashboard

This new widget (Associations) displays asset association to business entities, linked sensors, power providers and network connections and circuits. It provides one view to see these dependencies and connections in one place.

### Enhanced Feature: Catalog

This feature improves the usability of the catalog by allowing users that want to customize existing models to easily clone existing data and perform the needed customization, for example, change product images.

### Enhanced Feature: Chart time range selector

The time range selector for charts has been improved to add support for local-time and UTC time ranges. Previously, the time range selector allowed only for UTC based time ranges. Once selected, the chart will show the selected option.

### Enhanced Feature: Data Grids

Grid double click action has been improved to be more consistent and available on more data grids. This will improve the navigation experience within the product.

Grids now support two modes. The first is adaptive mode (the current default), where rows adjust to display applicable data based on the screen width. The second is non-adaptive mode, which enables horizontal scrolling to accommodate extra columns. Switch between modes using the button next to the grid column selector.

### Enhanced Feature: DC Power / Rectifier Support

A new asset type called DC Rectifier has been added to support DC-powered data centers.

The discovery engine has been enhanced to add support for DC rectifier discovery and monitoring.

The power analysis engine for location has also been improved to take DC power in various power analysis pipelines if configured to do so.

### Enhanced Feature: Localization

French language support has been added to the product UI.

### Enhanced Feature: Manual Sensors

Customers that are managing the telemetry from temperature and humidity sensors can now add more than one sensor per device. Prior to this release assets were limited to one manual temperature and humidity sensor.

### Enhanced Feature: Patch Panel Management

Support for patch panels has been enhanced. Modular patch panels can now have extra metadata that would make it easier to manage and report on slot number, module information and other useful attributes.

Port naming has been improved to allow for an extra expansion variable for the slot number.

### Enhanced Feature: Rack Management

Blanking panels and cable management have been added as rack accessories. This will allow Hyperview users to visualize them in rack elevations.

A **Tools** menu has been added to the Rack Layout page to allow Hyperview users to manage the placement of these accessories.

Please refer to the Hyperview product documentation and user guide for more information.

### Other notable changes and improvements

- Occupied units: Racked devices should display the occupied rack unit range for the asset.
- Asset tag for component: Custom components can now have an optional asset tag property.
- Direct rack sensor linking: Directly detected rack sensors can now be linked to a specific position in a rack.
- Work Orders access has been limited to Power Users and above roles.
- The Quick Search panel has been improved to increase speed. Furthermore, help text was added to highlight fuzzy versus exact-match search queries.

### Notable bug fixes

- **AS-18152** Fixed a bug that caused certain data coming from external integration not to appear in advanced search.
- **AS-17991** Fixed a bug that caused the wrong location name to be displayed in the discovery report.
- **AS-17260** Fixed a bug that caused asset bulk import to fail on certain assets.
- **AS-16208** Fixed a bug that caused the data grid in adaptive mode not to display information if the cell data is very long.

### Changes in version 5.1.1

- **AS-18717** Fixed a misconfiguration in one of the default location dashboard widgets.

## Hyperview 5.0 (June 12, 2025)

```{raw} html
<div class="pb-3"><iframe src="https://scribehow.com/embed/Hyperview_50_Release_Features__nroPpUJxTtWeEHoi7Ey3GA?removeLogo=true&as=video" width="100%" height="640" allow="fullscreen" style="aspect-ratio: 16 / 12; border: 0; min-height: 480px"></iframe></div>
```

This section covers significant changes and bug fixes in Hyperview 5.0.x since version 4.9.x

:::{important}
1. This release has changes and improvements to the Data Collector software. We strongly recommend updating
   your installed Data Collectors to the latest version to maintain an optimal monitoring and discovery
   experience.

2. Customers using Hyperview open-source tools such as asset tool must update to the latest version.
:::

### New Feature: AI Assistant Beta

An **opt-in** AI Assistant beta is being introduced in this version of Hyperview. Hyperview Administrators are able to enable this functionality. Once enabled, Hyperview users can use it to get information about the application, navigate, search and perform read only actions.

A **Settings -> General -> AI Assistant** page has been added to allow administrators to enable or disable the AI Assistant. The AI Assistant is disabled by default.

Feedback is welcome as we improve this functionality.

### Enhanced Feature: Quick and Advanced Search

The search system has been rebuilt in this version of Hyperview. Improvements include an updated interface, keyboard shortcuts, speed, and performance improvements.

Search UX has been improved by including a docking option to allow customers to interact with the search system, recall previous searches or interact with the AI Assistant as needed without leaving the quick search interface.

:::{important}
If you are using the search API in any custom scripts, please make sure to test and update them if needed to maintain compatibility with this version of the API.
:::

### Enhanced Feature: Business Entities

The Associated Assets list has been improved to include the Lifecycle State.

### Enhanced Feature: Connectivity

Hyperview Users can now set a port side on network device ports. This is to allow for more precise metadata management while documenting physical network layer infrastructure.

### Enhanced Feature: BACnet Monitoring

The BACnet definition builder has been enhanced to support the multi-state value object type.

### Enhanced Feature: Modbus & BACnet monitoring

The definition builder has been enhanced to support the scaling of generic numeric sensors with a multiplier.

### Enhanced Feature: Location 2D and 3D Layout

Users can now provide horizontal and vertical offsets on grids to place them more precisely.

### Enhanced Feature: Auto Discovery

- Rittal smart Rack PDU support has been improved.
- Cisco switch and environmental monitor support has been improved to discover and monitor more sensors and device models.
- General improvements have been added to Lenovo, Panduit, APC, HPE, Vertiv and Eaton Server, CRAC, PDU and UPS equipment.

### Enhanced Feature: Settings

A **Settings -> General -> Data Sharing** page has been added to allow administrators to control Catalog and Diagnostic data sharing.

:::{note}
- Data sharing is disabled by default.
:::

### Other notable changes and improvements

- The API version has been updated to version 5.0.
- Dashboard widget responsive behavior has been enhanced.
- A Lifecycle page has been added to the Location asset type.
- The Data Collector installer has been updated to allow administrators to skip pre-flight checks before installation.
- Max upload file size has been increased to 20MB across the application.

### Notable bug fixes

- **AS-16918** Fixed a bug that caused an error to be displayed if a user adds a circuit without a circuit ID.
- **AS-16953** Fixed a bug that, under certain conditions, caused a rack elevation asset label to be displayed on the wrong side.
- **AS-16978** Fixed a bug that, under certain conditions, caused an unhandled error when uploading circuits.
- **AS-17380** Fixed a bug that, under certain conditions, caused Memory and Storage components to not be created when performing SSH discovery.
- **AS-17436** Fixed a bug that, under certain conditions, caused memory size to not be calculated correctly when converting to higher capacities.

### Changes in version 5.0.1

- **AS-18075** Fixed a bug that, under certain conditions, caused saved searches not to work properly with the new search system.
