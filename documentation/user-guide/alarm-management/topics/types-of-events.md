# Types of Events

Hyperview provides multiple different alarm event source methods such as reachability, SNMP traps, and sensor thresholds. This section outlines the differences between these methods, how they work, and what to expect from them.

## Data Collector Reachability Alarms

```{image} /user-guide/alarm-management/media/types-of-events/image1.jpeg
:class: border-black
```

The Hyperview Data Collector periodically pings assets for reachability.
If the asset does not respond in a timely manner, then a reachability
event will be generated for the asset.
Reachability events are of critical severity and will automatically
close themselves once the connection between the Data Collector and the
asset is reestablished.

```{note}
Typical causes of the "not reachable" event are as follows:
- Network security such as firewalls prohibiting the communication
  between the Data Collector and the assets.
- The asset has been powered off.
- The Data Collector has been powered off.
- The asset has been reconfigured with a different IP address.
```

## SNMP Trap Events

```{image} /user-guide/alarm-management/media/types-of-events/image2.jpeg
:class: border-black
```

The Hyperview Data Collector contains an SNMP Trap Listener service
which can receive and translate SNMP traps from assets to their events
pages in Hyperview.

In order to leverage SNMP Traps, the assets must be configured to send
those traps to the Hyperview Data Collector. Typically those
configuration options can be set on the web interface of the device.

Look for an SNMP Trap configuration page and set the destination
(sometimes referred to as host, recipient, or NMS) as the IP address of
the Data Collector.

In most cases SNMP Trap events will automatically handle their Active /
Closed statuses meaning they can close themselves with Clear traps.

## Hyperview Sensor Threshold Events

```{image} /user-guide/alarm-management/media/types-of-events/image3.jpeg
:class: border-black
```

Hyperview is capable of comparing monitored and calculated sensor values
from assets against a set threshold to generate alarm events for them.
Sensor Threshold alarm events automatically manage their states, meaning
that they will activate upon reaching the threshold, and close
themselves upon resolution.

```{note}
See the {ref}`Sensor Threshold Management <sensor-threshold-management-doc>` documentation for detailed
configuration options.
```
