(sensor-threshold-management-doc)=

# Sensor Threshold Management

Manage sensor thresholds effectively in Hyperview, allowing users to customize alerts by asset and sensor type. Enable or disable default thresholds, add new ones, and configure alarm severity and comparison conditions. Optimize the monitoring systems and enhance responsiveness to critical changes in sensor data.

1.  Open the Sensor Thresholds configuration page from the Settings -> Sensors -> Thresholds menu option.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image1.jpeg
:class: border-black
```

2.  Hyperview has many default thresholds already configured. Users may not edit or delete these thresholds.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image2.jpeg
:class: border-black
```

3.  Default thresholds can be turned on or off by toggling the Enabled setting for the threshold.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image3.jpeg
:class: border-black
```

4.  Start adding a new Sensor Threshold by clicking the Add button.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image4.jpeg
:class: border-black
```

5.  Choose an asset type to configure the threshold for. All supported asset types are available in this list.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image5.jpeg
:class: border-black
```

6.  Choose a sensor type to configure the threshold for. This list of sensor types is limited by the selected asset type.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image6.jpeg
:class: border-black
```

7.  Define the severity of the alarm that should be escalated to the asset when the threshold is met.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image7.jpeg
:class: border-black
```

8.  Select a comparison type. This allows the sensor value of the chosen type to be compared to either a constant static value or a property from the asset.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image8.jpeg
:class: border-black
```

:::{note}
Some sensor types do not have asset property comparison options, as there are no related asset properties to compare the value against.
:::

9.  Set the condition for the comparison. This is typically defined as the upper or lower threshold.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image9.jpeg
:class: border-black
```

10.  Set a comparison value or select the comparison property and click Add to finish configuring a sensor threshold.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image10.jpeg
:class: border-black
```

11.  The new threshold will appear in the sensor thresholds list.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image11.jpeg
:class: border-black
```

12.  Any user-defined sensor threshold options can be reconfigured by clicking the Edit button.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image12.jpeg
:class: border-black
```

13.  User-defined sensor thresholds can also be removed by clicking the Delete button.

```{image} /user-guide/alarm-management/media/sensor-threshold-management/image13.jpeg
:class: border-black
```
