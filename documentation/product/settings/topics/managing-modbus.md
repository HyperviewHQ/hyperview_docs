(modbus)=

# Managing Modbus TCP definitions

Modbus TCP is a communication protocol typically used by facility or building level assets. Hyperview allows the creation of Modbus TCP definitions to handle the monitoring of such equipment separate from auto-discoveries.

A Modbus TCP definition can be assigned to any number of assets to enable monitoring on that asset if they share the same object mapping, but only one definition can be applied to an individual asset at a time.

## Modbus Register Addresses
Modbus TCP uses the 6-digit address length format to dictate register types and their address. Each register type is defined within a specific location and correlated address as per the table below.

| Register Type     | Reference Range | Prefix | Full Address    | Access    |
| ----------------- | --------------- | ------ | --------------- | --------- |
| Coils             | 00001 - 65536   | 0      | 000001 - 065536 | Read Only |
| Discrete Inputs   | 00001 - 65536   | 1      | 100001 - 265536 | Read Only |
| Input Registers   | 00001 - 65536   | 3      | 300001 - 365536 | Read Only |
| Holding Registers | 00001 - 65536   | 4      | 400001 - 465536 | Read Only |

Hyperview allows you to enter the 5-digit reference range to the address, and will use the register type prefix to identify the full address.

:::{note}
If an example Holding Register resides at address 421026, then it has a reference value of of 21026 without the appended prefix.
:::

More information regarding the Modbus TCP protocol can be found in the following resources.

- [Modbus.org](https://www.modbus.org/)
- [Modbus Wikipedia Page](https://en.wikipedia.org/wiki/Modbus)

:::{tip}
Hyperview uses a starting index of 0 for Modbus TCP addresses. If you are experiencing unexpected behavior with the sensor readings, then the asset you are monitoring may have a starting index of 1. If this is the case then you can increased the address in the Hyperview definition by 1 to validate the results.
:::

## Adding a Modbus TCP definition

1. Go to *Settings → Modbus TCP Definitions*.
2. Click *Add*. Alternatively, if you have no Modbus TCP definitions, click *Add new Modbus TCP definition.*
3. Enter a Name and Asset Type for the definition, and click *Save*.

A success message will appear, and the Overview page of the new Modbus TCP definition will be displayed. Proceed to add sensor definitions.

:::{tip}
Refer to the "Adding a single asset" section in {ref}`assets` for steps to manually add assets with a Modbus TCP monitoring profile.
:::

```{image} /product/settings/media/modbus_1.png
:class: border-black
```

### Adding a numeric sensor definition

1. While editing or adding the Modbus TCP definition, click the *Numeric Sensors* tab.
2. Click *Add*. Alternatively, if there are no existing sensor definitions, click *Add Numeric Sensor.*
3. Provide values for Address, Type, Data Type, Sensor Type, Sensor Name, Sensor Unit, and Multiplier. Note that the Sensor Name and Sensor Unit fields will only appear once you have selected a Sensor Type.
4. Click *Save*.

A success message will appear, and the numeric sensor definition will be listed in the grid. Repeat the steps to add additional sensor definitions as appropriate.

### Adding a non-numeric sensor definition

1. While editing or adding the Modbus TCP definition, click the *Non-numeric Sensors* tab.
2. Click *Add*. Alternatively, if there are no existing sensor definitions, click *Add Non-numeric Sensor.*
3. Provide values for Object Instance, Type, Sensor Type, Sensor Name. Additionally, you can modify Value mappings (for all types) or add Value mappings (for non-binary types).
4. Click *Save*.

```{image} /product/settings/media/modbus_2.png
:class: border-black
```

A success message will appear, and the non-numeric sensor definition will be listed in the grid. Repeat the steps to add additional sensor definitions as appropriate.

## Updating a Modbus TCP definition

1. Go to *Settings → Modbus TCP Definitions → Edit.*
2. Update values from the *Overview* or *Numeric Sensors* tab as required, and save your changes.

A success message will appear for each change, and the current page will reload to reflect the change.

### Updating or deleting a sensor definition

While on the Numeric Sensors tab or the Non-numeric Sensors tab for a Modbus TCP definition:

- Click *Edit* to update values for an existing sensor definition. Click *Save* to save the updated sensor definition.
- Click *Delete → Delete* to delete an existing sensor definition.

A success message will appear in each case, and the current page will reload to reflect the change.

## Deleting a Modbus TCP definition

You cannot delete a Modbus TCP definition that has associated assets. After you have updated associated assets (from each asset's *Information → Monitoring* page):

1. Go to *Settings → Modbus TCP Definitions*.
2. Click *Delete → Delete* for the intended definition.

A success message will appear, and the current page will reload to reflect the change.
