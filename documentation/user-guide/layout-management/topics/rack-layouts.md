(rack-layouts-doc)=

# Rack layouts

The Rack Layout page is typically used to view and interact with the contents of a rack.

By default the Rack Layout page is populated with the assets that are located within the rack — an Administrator, Data Center Manager, or Power User are able to interact with and manage the rack layouts, while Read Only and Reporting users are only able to view the content.

## Rack Elevation

### Navigating to Assets

Navigate to specific assets from the rack elevation by double-clicking the asset.

:::{tip}
Single-clicking an asset will display a tooltip for the asset.
:::

### Adding Rackable Assets

Adding rackable (non zero-u) assets to racks can be performed in two different methods.

1. Drag the asset from the hierarchy tree onto the rack in the hierarchy tree.
2. Navigate to the asset's Information > Properties page and edit the Location property to set the rack.

:::{note}
Rackable assets will require an RU location and Rack Side value.
- Available RU locations are determined based on the free space within the rack and the size of the asset model being added to the rack.
- Rack Side is determined by which side of the rack the asset is located (Front or Rear).
:::

### Moving Assets

Drag and drop functionality allows you to move one asset from an RU location to another RU location within the same rack. Left-click and drag the asset you are moving to another RU location in the rack elevation to place it into another RU location. This operation can be performed from either the Front view or the Rear view of the rack elevation.

:::{note}
Dragging and dropping an asset mounted on the opposite side of the rack will update its Rack Side mounting property to the corresponding view the action was performed from. Example - dragging a front mounted server from the Rear rack elevation view will update the Rack Side property of the asset to Rear.
:::

### Options Menu

- Front View - Highlights the front mounted assets within the rack elevation. Rear mounted assets are visible but transparent.
- Rear View - Highlights the rear mounted assets within the rack elevation. Front mounted assets are visible but transparent.
- Show Labels - Toggle to show or hide the asset names in the rack elevation view.
- Refresh - Refreshes the rack elevation view while maintaining all view options.

## Zero U and Unplaced Assets

Non-rackable assets that are located or mounted in the rack can still be placed within the rack, but will not appear in the rack elevation view. Instead these assets are allocated to the Zero U and Unplaced Assets section of the layout.

Examples of Zero U and Unplaced Assets:

- Zero U / Vertical Mounted Rack PDUs
- Zero U Cable Managers or Trays
- Vertical Patch Panels
- Tower Servers
- Small / Tower UPS

The Zero U and Unplaced Assets section of the rack layout displays the status, name, type, rack side, and rack position for the given asset.

### Navigating to Assets

Navigate to specific assets from the Zero U and Unplaced Assets section by double-clicking the asset.

### Adding Assets

Adding Zero U and Unplaced assets to racks can be performed in two different methods.

1. Drag the asset from the hierarchy tree onto the rack in the hierarchy tree.
2. Navigate to the asset's Information > Properties page and edit the Location property to set the rack.

:::{note}
Zero U assets will require a Rack Side and Rack Position value.
- Rack Side is determined by which side of the rack the asset is located (Front or Rear).
- Rack Position is determined by the relative position of the Zero U device within or about the rack.

Available Rack Positions:
* Left
* Right
* Top
* Bottom
* Above
* Below
* Unknown
:::

## Shelves

### Adding Shelves

Add a shelf to the rack by clicking the Add Shelf button. The add shelf model will pop-up requesting the Start Location and End Location for the shelf space. The Start Location is the topmost RU space the shelf will consume. The End Location is the bottommost RU space the shelf will consume. The available RU selections are determined by the available contiguous space within the rack. Once created the shelf will be visible in the rack elevation.

:::{note}
Shelves within the rack elevation do not display the front or rear images for assets on the shelf in the rack elevation view.
:::

### Editing Shelves

The allocated space for a shelf can be edited at any time by clicking the Edit button for the shelf. The edit shelf modal will allow you to adjust the Start Location and End Location (RU) of the selected shelf.

### Removing Shelves

Existing shelves can be removed from the rack elevation by clicking the Delete button for the specified shelf.

## View Options

The rack elevation view filters can be adjusted to highlight specified assets within the elevation. The filter colors are applied to the RU number for the assets which match the view filters. Click the View button to open the View Panel. Available view filters include:

- Business Entity - View which Business Entities are associated to each asset.
- Custom Property - View custom property assignments that are associated to each asset.
- Lifecycle State - View the current lifecycle state of each asset.
- Status - View the alarm status of the assets.

:::{note}
Each view filter includes its own color key to describe the associated assets with the selected filter.

The rack itself is also outlined with a color based on the filter if the rack is associated to the preference selected.

Status is the default view filter applied to the rack elevation.
:::

## Exporting Layouts

The Rack Layout page can be exported in JPG, PDF, or PNG format by clicking the Export button and selecting the filetype. All active rack elevation and view filters will be exported. If you need to export a specific filter, enable the view first before exporting.

## Tools Menu

### Blanking Panel - Add / Remove

### Blanking Panel - Fill Empty Space

### Cable Management - Add / Remove

### Cable Management - Fill Empty Space
