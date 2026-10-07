(custom-sensors-doc)=

# Custom sensors

A custom sensor is a numeric sensor whose value is calculated from a formula that uses other sensors as inputs. For example, you can create a custom sensor that averages several temperature sensors, or that calculates the difference between a return temperature sensor and a supply temperature sensor.

Each custom sensor belongs to a *source asset*. Once created, it appears on the source asset's Sensors page (*Sensors*) under the Custom Sensors category, and can be graphed and linked like other sensors. See {ref}`Managing sensors<managing-sensors-doc>` for more information.

Assuming you have {ref}`access privileges<who-can-access-doc>`, you can manage all custom sensors from the Custom Sensors page (*Assets → Custom Sensors*).

```{image} /product/asset-management/media/customsensors_page.png
:class: border-black
```

## The Custom Sensors page

The Custom Sensors grid lists the following information for each custom sensor:

- **Sensor ID**: the unique sensor ID. This column is __hidden by default__.
- **Sensor Name**: the name of the custom sensor
- **Sensor Type**: the sensor type, such as Temperature or Power
- **Formula**: the formula used to calculate the sensor value, such as `A - B`
- **Source Asset**: the asset that the custom sensor belongs to (click the asset name to open it)
- **Source Asset Location**: the location of the source asset
- **Access Policy**: the access policy applied to the custom sensor
- **Status**: the status of the custom sensor

Use the search box to find custom sensors, and the column filters to narrow down the list.

## Adding a custom sensor

You can add a custom sensor from either of the following places:

- The Custom Sensors page (*Assets → Custom Sensors*): click Add.
- An asset's Sensors page: click Add Custom Sensor. The asset is used as the source asset, so the Source Asset field is not shown.

To add a custom sensor:

1. Select the Source Asset (only shown when adding from the Custom Sensors page).
2. Select a Type. Only numeric sensor types that apply to the source asset are available. The calculated value is displayed using the unit of the selected type.
3. Enter a Name for the custom sensor.
4. Define the formula using one of the following tabs (described in the sections below):

   - **Simple**: apply a common operation, such as Average or Sum, to sensors on the source asset.
   - **Advanced**: write your own formula using sensors from one or more assets.
   - **Import**: paste a formula that references sensors by asset ID and sensor name.

5. Click Test Formula to evaluate the formula against current sensor values. The Result is displayed below the formula.
6. Select an Access Policy as needed (the default is "Inherit from Parent").
7. Click Add.

The custom sensor will be listed in the Custom Sensors grid.

:::{note}
Each sensor used in a formula is assigned a variable letter (A, B, C, and so on) in the order it is selected. The variable mapping, including each sensor's current value, is shown below the formula.
:::

### Simple

Use the Simple tab to apply one of the following operations to sensors on the source asset:

:::{list-table}
:header-rows: 1
:align: left

* - Operation
  - Generated formula (two sensors)
* - Average
  - `(A + B) / 2`
* - Sum
  - `A + B`
* - Difference
  - `A - B`
* - Ratio
  - `A / B`
* - Minimum
  - `min(A, B)`
* - Maximum
  - `max(A, B)`
:::

1. Select an Operation.
2. Select the Sensors to use. You can filter the sensor list by Name, Type, and Value.

The Generated Formula is shown below the sensor list.

```{image} /product/asset-management/media/customsensor_simple.png
:class: border-black
```

### Advanced

Use the Advanced tab to write your own formula, optionally using sensors from more than one asset.

1. Select the Sensors to use from the source asset.
2. To use sensors from another asset, click Add Asset Source, select the asset, and then select its sensors. Repeat as needed.
3. Enter the Formula using the variable letters shown in the variable mapping. You can use the following functions (click a function button to insert it):

   - `if()`
   - `abs()`
   - `round()`
   - `min()`
   - `max()`
   - `sqrt()`
   - `pow()`
   - `log()`

```{image} /product/asset-management/media/customsensor_advanced.png
:class: border-black
```

For example, the following formula averages a processor temperature sensor on the source asset (A) with two processor temperature sensors on another asset (B and C), rounded to one decimal place:

```
round((A + B + C) / 3, 1)
```

:::{note}
If the formula cannot be evaluated (for example, because it uses a variable that is not mapped to a sensor), Test Formula displays "Evaluation failed".
:::

### Import

Use the Import tab to paste an existing formula. Sensors are referenced using `[(assetId).(sensorName)]` syntax, where `(0)` refers to the source asset. For example:

```
[(0).(Return Temperature)] - [(0).(Supply Temperature)]
```

1. Paste the Formula.
2. Review the Sensor Mapping:

   - Sensors on the source asset (`(0)`) are automatically matched by name where possible. Click the Edit button next to a sensor to change it.
   - For each other asset ID, click the button to select the corresponding Hyperview asset, and then select the matching sensor for each reference.

Once all references are mapped, the Rewritten Formula (using variable letters) is shown below the sensor mapping.

```{image} /product/asset-management/media/customsensor_import.png
:class: border-black
```

## Editing a custom sensor

1. Click the Edit button for the custom sensor in the Custom Sensors grid.
2. Update the custom sensor as needed. Note that the Source Asset cannot be changed.
3. Click Save.

## Deleting custom sensors

To delete a custom sensor:

1. Click the Delete button for the custom sensor in the Custom Sensors grid.
2. Click Delete to confirm.

To delete multiple custom sensors, select them in the grid and use *Bulk Actions → Delete*.

## Updating access policies

You can update the access policy of multiple custom sensors at once:

1. Select the custom sensors in the Custom Sensors grid.
2. Click *Bulk Actions* and select one of the following:

   - **Update Access Policy**: applies the selected access policy to the custom sensors.
   - **Reset Access Policy**: resets the custom sensors' access policy.

## Exporting and importing custom sensors

The *Export* menu on the Custom Sensors page has the following options:

- **Export Grid**: exports the Custom Sensors grid.
- **Export for Import**: exports custom sensors as a CSV file in the format used for bulk importing custom sensors.

To bulk import custom sensors:

1. Go to *Assets → Import → Download Template File → Custom Sensors*. A CSV template for bulk importing custom sensors will be downloaded to your browser's default download directory.
2. Update the file for the custom sensors that you wish to import. Available columns are:

:::{list-table}
:header-rows: 1
:align: left
:widths: 30, 70

* - Column
  - Description
* - Sensor ID
  - The custom sensor ID. Leave blank when adding a new custom sensor.
* - Sensor Name
  - The name of the custom sensor
* - Sensor Type
  - The sensor type, such as Temperature
* - Formula
  - The formula, using variable letters (for example, `A + B`)
* - Source Asset ID
  - The ID of the source asset
* - Access Policy
  - The access policy name, or "Inherit from Parent"
* - Variable A Sensor ID, Variable B Sensor ID, …
  - The ID of the sensor mapped to each variable in the formula
:::

3. Save the updated file.
4. On the Import page (*Assets → Import*), click *Select Location and File*. Select the "Custom Sensors" template and a Location, and then select or drag the updated CSV file to upload.
5. Once the file is uploaded, verify the list of custom sensors. Troubleshoot, update, and re-upload the file as needed.
6. Click *Import*.

See {ref}`Adding assets<adding-assets-doc>` for more information on bulk importing.
