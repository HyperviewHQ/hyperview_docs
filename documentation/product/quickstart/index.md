# Quickstart

Hyperview is a next-generation, cloud-based Data Center Infrastructure Management (DCIM) software with superior monitoring, capacity planning, and administration experience. This document is for a first-time Hyperview user who will set up the application for their organization as an Administrator.

The following high-level diagram depicts the application onboarding process from start to finish.

```{image} media/onboarding.png
:alt: Onboarding process
:width: 1920
```

## Prerequisites

### Supported web browsers

Hyperview is tested with the following browsers:

- [Google Chrome](https://www.google.com/chrome)
- [Microsoft Edge](https://www.microsoft.com/en-us/edge)
- [Mozilla Firefox](https://getfirefox.com)

We recommend using your preferred browser's latest stable version for security and compatibility reasons.

### Hyperview Data Collector

You must {ref}`install and register the Hyperview Data Collector<Setup-data-collectors>` on at least one server that is networked with your devices to be able to monitor and discover them.

(inst-dc)=

### Gathering data

We recommend collecting the following information beforehand to streamline the process.

- A list of web domains used by your company (for example, “example.com”)
- A list of users, including their email addresses and intended application role (Administrator, Data Center Manager, Power User, Read Only, or Reporting)
- Physical addresses and background images (such as floor maps) for all your data center locations
- A list of all your racks, including their location, model, and manufacturer
- A list of all your assets, including their location, model, manufacturer, and serial number
- A list of IP addresses or ranges for devices that you wish to include or exclude from discovery scans

## Setting up domains, groups, and users

A user account in Hyperview corresponds to a real-world user. Individuals can have multiple user accounts to satisfy different job functions (for example, IT Manager and QA). You must create domains, groups, and user accounts. Refer to {ref}`Administering user accounts<User-administration-doc>` for detailed documentation.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/531998847" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
```

## Creating locations

Locations in Hyperview are considered groups for containing assets. The default location is All.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/487009215" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
```

Once you've created a location, it will appear in the Asset Hierarchy (*Assets → Overview → Asset Hierarchy*) under its parent. Proceed to add a location layout and location map.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/519224361" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
```

:::{tip}
You can also create a location from the right-click menu in the Asset Hierarchy (*right-click parent location → Add New Location*). Similarly, you can create non-location assets from the Asset Hierarchy, such as racks, PDUs, and so on (*right-click parent asset → Add New Asset*).
:::

## Adding racks

Racks (and shelves within them) contain rackable assets, such as servers. Like locations, racks and rack shelves cannot be bulk imported or discovered, so you need to create them manually.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/487008704" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
```

### Adding a rack to a location layout

You can surface a rack on its location layout to be able to visually interact with it (provided the location has a layout and a grid, as shown in the location layout video above).

1. Open the Layout page of the location → *Edit*.
2. Drag the rack from the Asset Hierarchy to a grid tile in the location layout.

### Adding shelves

You can add shelves to racks for fine-grained asset placement. (Zero U and unplaced assets will appear in their own category in the rack's Layout page.)

1. Open the Layout page of the rack → *Add Shelf*.
2. Enter details and save.

(assets)=

## Adding assets

An "asset" in Hyperview lingo refers to devices and objects at a given location. These include IT equipment, facility infrastructure, containers, virtual machines, blades, and so on (see {ref}`Supported asset types<Supported-asset-types-doc>` for a complete list).

You can add assets manually, as you did for locations and racks, but typically, you will want to bulk import or discover them. See {ref}`Adding assets<Adding-assets-doc>` for detailed documentation on bulk importing and manually adding assets. Discoveries are covered in the following section.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/913490838" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
```

### Moving an asset to a rack elevation

You can move an asset to a rack (provided there is enough free space).

1. Open the rack layout page.
2. Drag the device from the Asset Hierarchy tree onto a rack unit in the rack elevation.

## Discovering assets

Hyperview lets you automatically discover and monitor networked devices, such as servers, routers, rack PDUs, and so on. Discoveries also populate device metadata (for example, manufacturer-created product images, sensors, etc) and update existing device records to ensure they are up-to-date. For detailed documentation on discoveries, refer to {ref}`Discoveries<Discoveries-doc>` and associated topics.

:::{note}
Before you proceed, please make sure you have {ref}`set up Data Collectors<Setup-data-collectors>`. Only Administrators can perform discovery-related actions.
:::

### Adding and configuring a discovery

You need to create a discovery before you can discover any devices.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/519754764" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
```

While configuring the discovery, refer to the list of IP addresses that you had prepared during the planning stage.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/519754796" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
```

### Running a discovery

You can run a discovery at any time and schedule it to run later (on a one-time or recurring basis). Discovered assets will be generated or updated in your specified location upon discovery. Review the discovery report to confirm that the target devices were discovered and created as intended.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/519754841" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
```

### Viewing a discovery report

A report will be generated once the discovery has finished running. Discovered assets will also have the latest asset-level discovery report at *asset → Information → Discovery Report*.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/519754817" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
```

## What's next?

If you made it this far, congratulations! You've successfully set up the application for your team and mastered the basics. Continue to explore Hyperview documentation to keep learning. To stay informed about the latest features and changes, visit our {ref}`Release notes page<Release-notes-doc>`.
