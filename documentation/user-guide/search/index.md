(search-features)=

# Search

You can perform searches in Hyperview from three different places: Quick Search, Advanced Search, and within specific grids. Regardless of where you are searching from, search results will only reflect assets that you have access to.

## Quick Search and Advanced Search

Quick Search lets you quickly lookup assets from the Search panel (*Search → Quick*). Search results appear as soon as you type a matching character string. Clicking on a search result opens the corresponding asset Dashboard.

```{image} /user-guide/search/media/qs.png
:class: border-black
```

The Advanced Search page is also accessible from the Search panel (*Search → Advanced*). Unlike Quick Search, matches for Advanced Search queries only appear once you press Enter. Search results appear in a grid, allowing to perform relevant actions such as Export and Bulk Delete. Double-clicking a matching asset opens its Dashboard.

```{image} /user-guide/search/media/as.png
:class: border-black
```

:::{note}
This section covers features that are common to both Quick Search and Advanced Search. Advanced Search-only features (such as filters) are described later on this page.
:::

### Searchable fields

Virtually all asset and asset-related fields in Hyperview are searchable, including asset properties, custom properties, and sensors. However, matches for the Name field appear first in search results. Note that there may be a slight delay before search results reflect new assets, asset updates, and access policy changes.

For example, if you search for `critical`, all assets with a Critical status — as well as assets that have the word "Critical" as part of an asset tag, custom property, access policy, or another field — will populate search results.

### Double quotes

You can use double quotes to enforce exact matches for a word or phrase. For example, to only find assets that specifically mention Rack E-1, search `"Rack E-1"`.

All search words and phrases are considered to be case insensitive. For example, `"Server 11"` will match on both "server 11" and "Server 11".

### Finding dates and numbers

You can search for date values in YYYY-MM-DD format. For instance, to find asset records mentioning 9/1/2021, search `2021-09-01`. You can refine your query by specifying additional terms or phrases you are interested in, such as `2021-09-01 HP`.

You can also search for asset records that mention a specific integer or floating point number. For example, searching for `325` will only return records that
mention 325; you do not need to enclose the number with double quotes. Similarly, searching for `325.25` will only return records that mention 325.25.

:::{note}
We recommend using filters to filter by property, custom property, and sensor values. Refer to the "Advanced Search-only features" section below.
:::

### The NOT operator

`-` is the NOT operator.

- `server -HP` will only return records matching "server" that do not include "HP".
___________________________________________

## Advanced Search-only features

Apart from the features described in the previous section, Advanced Search lets you apply filters, add or remove grid columns, save searches, and perform generic grid operations such as exporting records.

:::{note}
A single Advanced Search query can return a maximum of 10,000 rows.
:::

### Using filters

A "filter" is a condition or set of conditions in Advanced Search that will limit returned assets to only those assets that pass the condition(s). You can add filters from the Filters panel for more focused queries, such as finding asset records matching a specific sensor value.

:::{note}
Filters are more structured and efficient compared to manual queries; we recommend using them whenever possible. You can combine as many filters as needed. However, note that filters are AND-ed — in other words, if you have multiple conditions applied in the same search, then the results must match every single condition (conjunctive/AND) and not just one (disjunctive/OR).
:::

#### Available filters

The following filters are available:

- Type
- Location
- Manufacturer
- Model
- Status
- Asset Property (String)
- Asset Property (Numeric)
- Custom Property (String)
- Custom Property (Numeric)
- Custom Property (Date)
- Sensor (String)
- Sensor (Numeric)

Note that the default Location is All.

#### Adding filters

1. Click *Filters* on the Advanced Search page (or the *View Filters* link upon opening the page). The Filters panel will open.
2. Select Type, Location, Manufacturer, Model, Status, and Lifecycle State values as needed.

```{image} /user-guide/search/media/as_filtersp.png
:class: border-black
```

1. Add asset property, custom property, and sensor filters as needed:

   > :::{note}
   > Availability of filter values will depend on existing data. For example, if there are no custom properties of date type defined on your system, the corresponding dropdown will be empty.
   > :::

   1. Click the *Add* button for Property and Sensor Filters. The Add Filter modal will appear.
   2. Select the intended property, custom property, or sensor filter type.
   3. Relevant fields will appear. Provide values as required.
   4. Click *Add*. The filter will appear under Property and Sensor Filters in the panel.

```{image} /user-guide/search/media/as_filter.png
:class: border-black
```

1. Add, remove, or rearrange grid columns as needed (described below).
2. Click *Apply Filters*. Matching records will appear in the grid.

### Adding or removing grid columns

You can specify which columns to surface on the Advanced Search grid. By default the following column are shown: Name, Type, Asset Location, Manufacturer, Model, Status, and Lifecycle State.

To add or remove columns:

1. Open the Filters panel.
2. Click the *Add* button in the Columns area. The Select Columns modal will appear.
3. Click the dropdown arrow to see a list of available columns.
4. Select columns that you want to add, and de-select ones that you want to remove from the grid.
5. Click *Add → Apply Filters*. The page will refresh to reflect your changes.

```{image} /user-guide/search/media/as_columns.png
:class: border-black
```

Additionally, you can remove a column by clicking the corresponding trash icon → *Apply Filters*. Note that you must have at least one column showing in the grid.

To move a column to a different position in the grid, hover your cursor over the wiggly icon in the Columns area → drag up or down → *Apply Filters*.

### Using saved searches

The Advanced Search page lets you save searches to be re-run later. There are two related buttons on the page:

- Save (lets you save a search)
- Saved Searches (opens the Saved Searches panel, which lists existing saved searches).

Any user can perform an Advanced Search by applying filters, writing a manual query, or both, and then save it. Personal saved searches appear under My Searches in the Search panel. They are only available to the user who created them. Administrators can save and manage global searches, which are available to all users and appear under Global Searches in the Saved Searches panel.

```{image} /user-guide/search/media/as_savedsearches.png
:class: border-black
```

#### Saving a search

1. Perform an Advanced Search.
2. Click *Save*. The Save Advanced Search modal will appear.

```{image} /user-guide/search/media/as_savingasearch.png
:class: border-black
```

1. Enter a Name for the saved search.
2. (Admin only) Select the Global Search checkbox if you want this saved search to be available to all other users.
3. Click *Save*. A success message will appear.

The saved search will be listed in the Saved Searches panel under My Searches or Global Searches, as appropriate.

#### Applying a saved search

1. Select a saved search from My Searches or Global Searches in the Saved Searches panel.
2. Click Search.

The saved search will be applied, and matching records will appear in the Advanced Search grid.

:::{tip}
Selecting a saved search populates the Filters panel and/or the Search Assets row in the Advanced Search grid with saved values. You can modify these values and add further conditions or filters to alter your search on the fly.
:::

### Generic grid operations

Like most grids in Hyperview, you can {ref}`export Advanced Search results<Extracting-data-doc>` as a spreadsheet. This can be incredibly useful when you are producing reports or asset inventory records.

You can also {ref}`perform bulk actions<Bulk-actions-doc>` against Advanced Search results. For example, you can bulk delete one or more assets matching your query.

```{image} /user-guide/search/media/as_bulk.png
:class: border-black
```

______________________________________________________________________

## Searching in specific grids

The Advanced Search grid is intended for querying records. However, any grid in Hyperview is searchable. For performance and usability reasons, grid-specific searchability is typically restricted to a few columns and varies on a table-by-table basis.

For example:

- You can search for an asset's Change Log entries (*Information → Change Log*) by User.
- You can search Assets By Type grids (*Types → any asset type*) by Name, Data Center, Location, Manufacturer or Model.

```{image} /user-guide/search/media/changelog_search.png
:class: border-black
```

______________________________________________________________________

## Opening a grid in Advanced Search

For certain kinds of pages, you can open your current grid in Advanced Search by clicking the *Open in Advanced Search* button. This allows you to leverage Advanced Search features to query your current context.

Supported pages are:

- Assets By Type pages (for example, *Types → Rack → Open in Advanced Search* opens the Rack Assets By Type page in Advanced Search)
- Assets By Location pages (for example, browse to a location → *Information → Assets → Open in Advanced Search* opens the location's Assets grid in Advanced Search)

```{image} /user-guide/search/media/location_assets.png
:class: border-black
```

```{image} /user-guide/search/media/location_assets_as.png
:class: border-black
```
