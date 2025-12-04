(alarm-management-doc)=

# Alarm Management

Hyperview has powerful alarm event management capabilities.

The following subsystems can create alarm events and trigger an alarm notification.

1. SNMP trap parsing and aggregation.
2. Configured sensor thresholds.
3. Asset Tracker (RFID asset tracking).
4. Data collector health.
5. Asset firmware updates (for supported vendors).
6. Host reachability.

## Alarm Events

Alarm Events are created on assets and can be viewed from the Events tab of the asset. Furthermore,
Alarm Events can change the status of an asset. The asset will have the status of the most critical
Alarm Event triggered on it.

## Alarm Policies

An Alarm Event can trigger a notification. Notification can be sent to a user, a group or to a {ref}`Notification <notifications-doc>`
Channel.


```{toctree}
:maxdepth: 2

topics/types-of-events
topics/viewing-alarm-events-and-statuses
topics/asset-specific-events
topics/global-events
topics/sensor-threshold-management
topics/administrating-alarm-policy-notifications
```
