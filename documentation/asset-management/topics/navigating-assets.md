(navigating-assets-doc)=

# Navigating assets

You can navigate to a certain asset from several places in Hyperview. All assets have a Dashboard page that leads to related pages.

:::{note}
You can only navigate to assets that you {ref}`have access to<Who-can-access-doc>`.
:::

## Using the Asset Types tree

The Asset Types tree shows asset types (along with the device count per type) that you have access privileges to.

1. Go to *Assets → Overview → Asset Types* to open the Asset Types tree.
2. Click an asset type to open its Assets by Type page. For example, if you click Network Device, the Network Devices Assets By Type page will open.
3. Click an asset to open its Dashboard.

:::{note}
Locations appear in the Asset Hierarchy. They are not shown in the Asset Types tree.
:::

:::{tip}
For a list of supported asset types in Hyperview, see {ref}`Supported asset types<Supported-asset-types-doc>`.
:::

```{image} /asset-management/media/types_tree.png
:class: border-black
```

## Using the Asset Hierarchy tree

The Asset Hierarchy tree presents assets within a hierarchical tree structure. The All location acts as the root node for all assets. Organizations typically create locations and sub-locations corresponding to their data centers, which in turn have other kinds of assets.

1. Go to *Assets → Overview → Asset Hierarchy* to open the Asset Hierarchy.
2. Expand nodes until arrive at your intended asset.
3. Click the asset to open its Dashboard.

:::{note}
Partially discovered assets appear as the Unknown asset type in the Asset Types tree. They do not appear in the Asset Hierarchy.
:::

```{image} /asset-management/media/asset_hierarchy.png
:class: border-black
```

## Browsing assets from elsewhere in Hyperview

Besides the Asset Types and Asset Hierarchy trees, you can navigate to an asset from several other places in the application.

You can {ref}`search for an asset<Search-features>` using Quick Search or Advanced Search. Additionally, you can directly open an asset's Dashboard page by clicking or double-clicking a corresponding row. Eligible grids include, but are not limited to:

- {ref}`Discovery reports<Discovery-reports-doc>`
- The Assets page of the parent asset (*Information → Assets*)
- The Watched Assets page (*Account → Watched Assets*), provided you are watching the asset

Moreover, certain panels — such as the Asset Info panel of the Power Path page (*Information → Power Path → Asset Info → View Asset*) — can be used to navigate to a relevant asset.

In short, Hyperview attempts to contextualize asset navigation wherever possible.
