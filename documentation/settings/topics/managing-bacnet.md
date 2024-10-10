(bacnet)=

# Managing BACnet/IP definitions

BACnet/IP is a communication protocol typically used by facility or building level assets. Hyperview allows the creation of BACnet/IP definitions to handle the monitoring of such equipment separate from auto-discoveries.

A Bacnet/IP definition can be assigned to any number of assets to enable monitoring on that asset if they share the same object mapping, but only one definition can be applied to an individual asset at a time.

## Adding a BACnet/IP definition

1. Go to *Settings → BACnet/IP Definitions*.
2. Click *Add*. Alternatively, if you have no BACnet/IP definitions, click *Add new BACnet/IP definition.*
3. Enter a Name and Asset Type for the definition, and click *Save*.

A success message will appear, and the Overview page of the new BACnet/IP definition will be displayed. Proceed to add sensor definitions.

```{image} /settings/media/monitoring_03.png
:class: border-black
```

:::{tip}
Refer to the "Adding a single asset" section in {ref}`assets` for steps to manually add assets with a BACnet/IP monitoring profile.
:::

### Adding a numeric sensor definition

1. While editing or adding the BACnet/IP definition, click the *Numeric Sensors* tab.
2. Click *Add*. Alternatively, if there are no existing sensor definitions, click *Add Numeric Sensor.*
3. Provide values for Object Instance, Type, Sensor Type, Sensor Name, Sensor Unit, and Multiplier. Note that the Sensor Name and Sensor Unit fields will only appear once you have selected a Sensor Type.
4. Click *Save*.

```{image} /settings/media/monitoring_11.png
:class: border-black
```

A success message will appear, and the numeric sensor definition will be listed in the grid. Repeat the steps to add additional sensor definitions as appropriate.

### Adding a non-numeric sensor definition

1. While editing or adding the BACnet/IP definition, click the *Non-numeric Sensors* tab.
2. Click *Add*. Alternatively, if there are no existing sensor definitions, click *Add Non-numeric Sensor.*
3. Provide values for Object Instance, Type, Sensor Type, Sensor Name. Additionally, you can modify Value mappings (for all types) or add Value mappings (for non-binary types).
4. Click *Save*.

A success message will appear, and the non-numeric sensor definition will be listed in the grid. Repeat the steps to add additional sensor definitions as appropriate.

## Updating a BACnet/IP definition

1. Go to *Settings → BACnet/IP Definitions → Edit.*
2. Update values from the *Overview* or *Numeric Sensors* tab as required, and save your changes.

A success message will appear for each change, and the current page will reload to reflect the change.

### Updating or deleting a sensor definition

While on the Numeric Sensors tab or the Non-numeric Sensors tab for a BACnet/IP definition:

- Click *Edit* to update values for an existing sensor definition. Click *Save* to save the updated sensor definition.
- Click *Delete → Delete* to delete an existing sensor definition.

A success message will appear in each case, and the current page will reload to reflect the change.

```{image} /settings/media/monitoring_13.png
:class: border-black
```

## Deleting a BACnet/IP definition

You cannot delete a BACnet/IP definition that has associated assets. After you have updated associated assets (from each asset's *Information → Monitoring* page):

1. Go to *Settings → BACnet/IP Definitions*.
2. Click *Delete → Delete* for the intended definition.

A success message will appear, and the current page will reload to reflect the change.
