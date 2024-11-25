(catalog-management-doc)=

# Catalog Management

Hyperview provides an extensive product catalog that is actively updated and maintained. The catalog supplies device dimensions, power consumption range, model images, and other metadata during discoveries and manual asset creation. Customers can complement catalog records with user-defined ones. For instance, you can upload custom model images that will be displayed instead of default images in Rack Elevation views.

You can access the product catalog from Hyperview using the Catalog menu, which has dedicated pages for product models (*Catalog → Models*) and manufacturers (*Catalog → Manufacturers*). Both pages feature a searchable grid that lets you find records by Name. You can also sort and filter rows by specific column values.

Power Users and above can add new manufacturers and models (including model properties and images). You can also {ref}`bulk update<Bulk-actions-doc>` assets' model and manufacturer values.

```{image} /product/catalog-management/media/catalog_manu.png
:class: border-black
```

## Catalog sources and usages

Catalog records have three possible sources:

- Application (retrieved from the product catalog)
- Discovery (discovered locally as an interim record when no Application or User-added record exists)
- User (added and managed manually)

For discovery-added and bulk-imported assets, Application records are prioritized over User-added records, which in turn are prioritized over Discovery-added records. In other words, while discovering or bulk importing new assets *Application > User-added > Discovery-added*.

Note that this is true for future scenarios as well: if an Application model was initially missing but later added to the product catalog, it will overwrite the previously applied User-added or Discovery-added model in the asset record during re-discovery. However, if a user manually sets an asset's Model value while manually adding or updating the asset, the value will *always* be retained regardless of the catalog source, even if a more recent Application model exists.

## Viewing model information

You can review a model's metadata and (if available or relevant) images to assess if they meet your business needs.

1. Open the Models page (*Catalog → Models*).
2. Select a model row in the grid and click Model Info.

The Model Info panel will open, showing model information (including model images).

```{image} /product/catalog-management/media/catalog_modelinfo.png
:class: border-black
```

## Adding catalog records

You may want to add a new model or manufacturer for any of the following reasons:

- A corresponding Application record does not exist.
- A corresponding Application record exists but is outdated or missing metadata that you can provide.
- A corresponding Discovery-added record exists but is inadequate.

### Adding a new manufacturer

1. Open the Manufacturers page (*Catalog → Manufacturers*) as a Power User or above.
2. Click Add.
3. Enter a manufacturer name and click Save.

A success message will appear. Proceed to add models for the new manufacturer.

### Adding a new model

1. Open the Models page (*Catalog → Models*) as a Power User or above.

2. Click Add.

3. Enter Type, Name, Manufacturer, and other mandatory values (required property fields appear when you select a Type). For example:

   - To create a Server model, you must provide Type, Name, Manufacturer, Rack Units, and Template Power (W) values.
   - To create a Transfer Switch model, you must provide Type, Name, Manufacturer, and Rated Power (W) values, and either a Rack Units value or Depth (in), Height (in), and Width (in) values.

4. Click Save. A success message will appear.

```{image} /product/catalog-management/media/catalog_addmod.png
:class: border-black
```

**To specify optional model property values:**

1. Click the Properties tab.
2. Enter values and click Save. A success message will appear.

**To add model images:**

1. Click the Images tab.
2. Click Add or "Add new image". The Add New Image modal will appear.
3. Select an Image Position (Front or Rear).
4. Use the Select Image button to select the intended image file. You can use the Image File tooltip to look up optimal image dimensions for Rack Elevation views.
5. Click Add to upload and add the new image. A success message will appear.

:::{note}
The Images tab is only available for supported asset types.
:::

## Updating catalog records

You cannot update Application or Discovery catalog records. If you need to update an existing model or manufacturer, currently the recommended workflow is to create a new User catalog record with the intended information and associate it with relevant devices (by bulk updating the model of the devices, or by updating the model values of the devices manually).

Power Users and above can update User-added catalog records.

### Updating a manufacturer

1. Open the Manufacturers page (*Catalog → Manufacturers*) as a Power User or above.
2. Browse to the intended record and click Edit.
3. Update the manufacturer name and click Save. A success message will appear.

### Updating a model

1. Open the Models page (*Catalog → Models*) as a Power User or above.
2. Browse to the intended record and click Edit.
3. Update values under the General tab as required, and click Save. A success message will appear.
4. Add or update values under the Properties tab as required, and click Save. A success message will appear.
5. Add or remove model images under the Images tab (assuming the asset type supports images), and click Save. A success message will appear.

### Bulk updating models for asset records

You can {ref}`bulk update<Bulk-actions-doc>` the Model and Manufacturer values for assets from the Advanced Search, Assets By Type, and Assets By Location pages (*supported page → Bulk Actions → Update Model*).

## Deleting catalog records

You cannot delete Application records as they belong to the master product catalog, which is managed by Hyperview. Data Center Managers and above can delete Discovery and User catalog records, assuming there are no associated models (if you are attempting to delete a manufacturer) or devices (if you are attempting to delete a model).

Currently the recommended workflow for deleting Discovery catalog records is to first create a new User catalog record to replace it, then associate the new User record with relevant devices (using the Update Model bulk action or by manually updating the assets), and finally delete the Discovery catalog record.

### Deleting a manufacturer

1. Open the Manufacturers page (*Catalog → Manufacturers*) as a Data Center Manager or above.

2. Browse to the intended record and click Delete. Note that the Delete button will only be active if there are no associated models.

   - To dissociate the manufacturer, browse to the model record (*Catalog → Models*) and update the Manufacturer value.

3. Click Delete to confirm the deletion. A success message will appear.

### Deleting a model

1. Open the Models page (*Catalog → Models*) as a Data Center Manager or above.

2. Browse to the intended record and click Delete. Note that the Delete button will only be active if there are no associated devices.

   - To dissociate a device, browse to its Properties page (*asset → Information → Properties*) and update the Model and Manufacturer values. Alternatively, you can perform an Update Model bulk action.

3. Click Delete to confirm the deletion. A success message will appear.

## Catalog log entries

- Catalog changes are logged in the Application Log (*Logs → Application Log*; Administrator-only).
- Relevant asset updates (such as a model change upon rediscovery) are logged in the asset's Change Log (*asset → Information → Change Log*).
