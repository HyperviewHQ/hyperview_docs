(polling-interval-doc)=

# Polling Interval

Administrators can define sensor polling intervals and sensor thresholds across the application.

## Updating sensor polling intervals

The polling interval indicates the time between one successful attempt (or retry) to retrieve sensor data and the next one. However, please note that the exact polling interval can vary due to network latency and saturation, destination device load, data collector load, and device reachability. Traps received for a given asset will also trigger the Data Collector to retrieve the latest asset information, including sensor data.

The default sensor polling interval is 10 minutes, which implies that all sensor data in your Hyperview instance typically refreshes every 10 minutes. The minimum polling interval is 5 minutes. The maximum polling interval is 24 hours.

```{image} /settings/media/sensors_1.png
:class: border-black
```

To update the polling interval:

1. Go to *Settings → Sensors → Polling*.
2. Select the intended interval → *Save*.

A success message will appear.
