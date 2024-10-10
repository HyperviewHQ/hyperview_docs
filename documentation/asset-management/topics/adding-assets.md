(adding-assets-doc)=

# Adding assets

Assets are typically bulk-imported or discovered. You can also add assets manually, one at a time.

Power Users and above can bulk import and manually add assets. Certain asset types can only be added using a particular method:

- Power Meter and Unknown asset types are discovery-only.
- Location and Rack asset types can only be added manually.

This topic covers bulk importing and manually adding assets. For a complete list of asset types, see {ref}`Supported asset types<Supported-asset-types-doc>`. To discover assets, refer to {ref}`Discoveries<Discoveries-doc>` and related topics.

## Bulk importing assets

You can bulk import assets using a CSV template that you can download from the application.

```{raw} html
<div class="pb-3"><iframe src="https://player.vimeo.com/video/913490838" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
```

:::{note}
You cannot bulk import Location or Rack type assets.
:::

1. Go to *Assets → Bulk Import → Download Template File → Assets*. A CSV template for bulk importing assets will be downloaded to your browser’s default download directory. Rename and move the file to a different folder as needed.

2. Update the file for assets that you wish to import. Available columns are:

   ```{eval-rst}
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | **Column**       | **Description**                                                                                        | **Requirement**                                                      |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | Name             | The name of the asset you are importing                                                                | Required                                                             |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | LifecycleState   | The asset lifecycle state (Active, Planned, Procurement, Staging, or Retired)                          | Optional                                                             |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | AssetType        | The :ref:`asset type<Supported-asset-types-doc>`, such as Server, PDU, etc (but not Rack or Location)  | Required                                                             |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | Manufacturer     | The asset manufacturer name                                                                            | Required                                                             |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | Model            | The asset model name                                                                                   | Required                                                             |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | SerialNumber     | The asset serial number                                                                                | Required for non-rack assets (optional for Rack)                     |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | RackName         | The name of the rack where the asset will be placed                                                    | Optional (only allowed for rackable assets)                          |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | RackUNumber      | The number of the rack unit where the asset will be placed                                             | Optional (only relevant for non-Zero U assets)                       |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | RackSide         | The rack side (Front, Rear, or Unknown) where the asset will be placed                                 | Required for 0+ U assets (not allowed for unplaced rackable assets)  |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   | RackPosition     | The rack position (Left, Right, Top, Bottom, Above, Below, or Unknown) where the asset will be placed  | Required for 0+ U assets (not allowed for unplaced rackable assets)  |
   +------------------+--------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------+
   ```

```{image} /asset-management/media/import_bulkfile.png
:class: border-black
```

1. Save the updated file.

2. Click *Select Location and File*. Provide values as follows:

   - Select the "Assets" template.
   - Select the target location for the assets. The default location is All.
   - Select or drag the updated CSV file to upload.

```{image} /asset-management/media/import_bulkfileselect.png
:class: border-black
```

1. Once the file is uploaded, verify the list of assets. Troubleshoot, update, and re-upload the file as needed.
2. Click *Import*.

```{image} /asset-management/media/import_bulk.png
:class: border-black
```

The import process may take several minutes or more if you are importing a large number of assets. Upon import, the assets will appear in the Asset Hierarchy under your specified location.

______________________________________________________________________

## Manually adding an asset

You can manually add an asset in Hyperview from one of the following places:

- The Add New page (*Assets → Add New*)
- The Asset Hierarchy context menu (right-click → *Add New Asset* or *Add New Location*)
- Asset dashboards (asset → *Actions* → *Add New*)

### Adding an asset from the Add New page

1. Go to *Assets → Add New*.

2. Select a Type. Relevant fields will appear.

   :::{note}
   Available asset types will depend on the parent asset. The asset type in turn primarily dictates what fields are surfaced.
   :::

   ```{raw} html
   <div class="pb-3"><iframe src="https://player.vimeo.com/video/487008704" width="640" height="360" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe></div>
   ```

3. Enter values as appropriate. Depending on your inputs additional fields may appear.

   :::{note}
   While selecting a rack, Rack Side and Rack U are required for rackable assets. For Zero U assets, Rack Side and Rack Position are required.
   :::

   :::{tip}
   Create a Data Collector before adding an asset with a BACnet/IP or Modbus TCP sensor monitoring profile. See {ref}`Setup-data-collectors` for instructions.
   :::

4. Click *Add and Continue* to start with blank fields for subsequent entries, or *Add and Reset* to repeat your entered values (except for Name) for subsequent entries.

```{image} /asset-management/media/manualadd_addandcontinue.png
:class: border-black
```

A success message will be shown. The asset will appear in the Asset Hierarchy under the specified location.

### Adding an asset from the Asset Hierarchy context menu

You can add a location or non-location asset directly from the Asset Hierarchy's right-click context menu. Simply right-click the intended parent location or asset, and select *Add New Asset* or *Add New Location* as appropriate.

```{image} /asset-management/media/manualadd-rightclick-contextmenu.png
:class: border-black
```

```{image} /asset-management/media/manualadd-rightclick-location.png
:class: border-black
```

The rest of the process is identical to what's described in the previous subsection, with one addition: in step 4, you can also click *Add → Add* to finish adding the asset (without having to continue with new or same values).

### Adding an asset from another asset's dashboard

You can also add child assets directly from the parent asset record:

```{image} /asset-management/media/add_childasset.png
:class: border-black
```

From the parent asset's Dashboard, click *Actions → Add New*. Proceed to add an asset as you would from the Asset Hierarchy.
