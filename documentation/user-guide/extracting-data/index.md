(extracting-data-doc)=

# Extracting Data

You may want to extract data from Hyperview to generate reports, import the data using a different application, or simply as a point of reference for yourself to make more informed business decisions. You can extract data in one of two ways:

- By exporting grid data as a spreadsheet
- By writing an API client that integrates with the Hyperview API

This topic covers exporting grid data. You can explore the Hyperview API in OpenAPI/Swagger format from *Help → Hyperview API* (only recommended for technical audiences).

## Exporting grid data

You can export grid data from any page in Hyperview that has an *Export* link. Examples include Assets by Type pages, Advanced Search results, the Sensors page, and so on. Clicking *Export* exports the current grid as an Excel file (.xlsx), which gets saved to your browser's default download location.

For multi-page grids — that is, grids which are spread across multiple pages — you can click the *Export* link on any grid page to export the entire grid. The exported file will reflect the sort order and any filters that are currently applied.

```{image} /user-guide/extracting-data/media/abt_export.png
:class: border-black
```

```{image} /user-guide/extracting-data/media/excel.png
:class: border-black
```

:::{note}
For {ref}`Advanced Search queries<Search-features>` the maximum export size is 10,000 rows.
:::

:::{tip}
The Sensors page also lets you export raw sensor data and sensor graphs. See {ref}`Managing sensors <Managing-sensors-doc>`.
:::
