(threshold-management-doc)=

# Threshold Management

By default Hyperview ships with a number of application-defined sensor thresholds. Additionally, Administrators can define sensor thresholds to trigger related application events and event notifications.

For example, you can define a sensor threshold to throw a warning whenever a server’s temperature exceeds 85°F or goes below 50°F. If the threshold is reached, Hyperview will create an alarm event. Depending on the event severity and event notification rules, a notification email will also get sent.

```{image} /settings/media/sensors_2.png
:class: border-black
```

:::{tip}
You can review an asset's Sensors page (browse to asset → *Information → Sensors*) to see what sensors it has. Asset-specific events appear in the asset's Events page (browse to asset → *Events*).
:::

## Adding a sensor threshold

To prevent duplication, we recommend searching for existing thresholds before adding a new one. The Source value for application-defined thresholds in the Thresholds grid (*Settings → Sensors → Thresholds*) is "Application". The Source value for admin-defined thresholds is "User".

1. Go to *Settings → Sensors → Thresholds → Add*.

2. Provide values for:

   > - Enabled (checked by default)
   > - Asset Type
   > - Sensor Type (available values will depend on the Asset Type)
   > - Severity (the severity of the alarm event that will be generated if the threshold is reached)
   > - Comparison Type (the threshold can be evaluated against a constant value, an asset property value, or a percentage of an asset property value)
   > - Condition (the comparison condition)
   > - Value (will appear once you select a Comparison Type)
   > - Percentage of Value (if you select "Compare To Asset Property Value Percentage" as the Comparison Type)

3. If needed, add an AND condition for the sensor type to provide an additional Comparison Type, Condition, Value, and Percentage of Value (if applicable).

4. Click *Add*.

A success message will appear, and the sensor threshold will be listed in the grid. Repeat the steps to more thresholds, as needed.

## Enabling/disabling a sensor threshold

- Click the corresponding toggle button in the Thresholds grid (*Settings → Sensors → Thresholds* → toggle switch).
- Alternatively, if the threshold is user-defined, click the *Edit* button in the grid → uncheck Enabled → *Save*.

A success message will appear, and the change will be reflected in the grid.

## Updating a sensor threshold

:::{note}
You cannot update an application-defined sensor threshold. However, you can disable or re-enable it.
:::

1. Go to *Settings → Sensors → Thresholds → Edit*.
2. Update values as required.
3. Add or remove values for the AND condition fields as needed.
4. Click *Save*.

```{image} /settings/media/sensors_3.png
:class: border-black
```

A success message will appear, and the page will refresh to reflect your changes.

## Deleting a sensor threshold

:::{note}
You cannot delete an application-defined sensor threshold.
:::

1. Go to *Settings → Sensors → Thresholds*.
2. Click *Delete → Delete*.

A success message will appear, and the page will refresh to reflect your changes.
