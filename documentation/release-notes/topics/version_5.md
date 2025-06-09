# Version 5

## Hyperview 5.0 (TBD)

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

The search system has been rebuilt in this version of Hyperview. Improvements include an updated interface, keyboard shortcut and speed and performance improvements.

Search UX has been improved by including a docking option to allow customers to interact with the search system, recall previous searches or interact with the AI Assistant as needed without leaving the quick search interface.

:::{important}
If you are using the search API in any custom scripts, please make sure to test and update them if needed to maintain compatibility with this version of the API.
:::

### Enhanced Feature: Business Entities

The Associated Assets list has been improved to include the Lifecycle State.

### Enhanced Feature: Connectivity

Hyperview Users can now set a port side on Network device ports. This is to allow for more precise meta data management while documenting physical network layer infrastructure.

### Enhanced Feature: BACnet Monitoring

The BACnet definitions builder has been enhanced to allow customer to poll for multi-state value object types.

### Enhanced Feature: Modbus & BACnet monitoring

The definitions builder has been enhanced to allow customers to define a multiplier to scale generic sensors.

### Enhanced Feature: Location 2D and 3D Layout

Users can now provide horizontal and vertical offsets on grids to place them more precisely.

### Enhanced Feature: Auto Discovery

- Rittal smart Rack PDU support has been improved.
- Cisco switch and environmental monitor support has been improved to discover and monitor more sensors and device models.
- General improvements have been added to Lenovo, Panduit, APC, HPE, Veriv and Eaton Server, CRAC, PDU and UPS equipment.

### Enhanced Feature: Settings

A **Settings -> General -> Data Sharing** page has been added to allow administrators to control Catalog and Diagnostic data sharing.

:::{note}
- Data sharing is disabled by default.
:::

### Other notable changes and improvements

- The API version has been updated to version 5.0.
- Dashboards widget responsive behavior has been enhanced.
- A Lifecycle page has been added to the Location asset type.
- The Data Collector installer has been updated to allow administrators to skip pre-flight checks before installation.
- Max file size upload has been increased to 20MB across the application.

### Notable bug fixes
