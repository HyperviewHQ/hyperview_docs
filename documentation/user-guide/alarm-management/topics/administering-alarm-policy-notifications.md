# Administering Alarm Policy Notifications

Manage alarm policy notifications to ensure the right users receive timely alerts. Allows for tailored notifications based on asset types, severity, and user groups.

1.  Navigate to the Alarm Policies page from the Settings -> Notifications menu. The Alarm Policy page displays a list of existing alarm policies, including Name, Asset Location, Asset Types, Severity, Categories, Users, Groups, and Channels.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image1.jpeg
:class: border-black
```

2.  Create a new Alarm Policy by clicking the Add button.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image2.jpeg
:class: border-black
```

3.  Enter a Name for the alarm policy.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image3.jpeg
:class: border-black
```

4.  Select a Location from the location picker.

:::{note}
The policy will apply to the selected location and any descendants.
:::

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image4.jpeg
:class: border-black
```

5.  Toggle on/off the All Asset Types filter.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image5.jpeg
:class: border-black
```

6.  Select multiple asset types from the picker as needed.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image6.jpeg
:class: border-black
```

7.  Select a Severity.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image7.jpeg
:class: border-black
```

8.  Select applicable alarm categories.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image8.jpeg
:class: border-black
```

If "Sensor Threshold" alarm events are selected, you can further filter the list to specific thresholds that apply to this policy.


9.  Add the users who should receive the alarm notifications.

:::{important}
Non-administrator users will receive alarm events only for the assets they have access to. This may result in a user not receiving notifications for assets whose access policy prevents the user from accessing them. Please ensure that you design your alarm policies with that in mind.
:::

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image9.jpeg
:class: border-black
```

10.  Select the groups who should receive the alarm notifications.

:::{important}
Non-administrator users will receive alarm events only for the assets they have access to. This may result in a user not receiving notifications for assets whose access policy prevents the user from accessing them. Please ensure that you design your alarm policies with that in mind.
:::

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image10.jpeg
:class: border-black
```

11.  Select the channels that should receive the alarm notifications.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image11.jpeg
:class: border-black
```

12.  Click the Add button when done configuring the notification policy.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image12.jpeg
:class: border-black
```

13.  Any existing alarm policy can be configured by clicking the Edit
    button.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image13.jpeg
:class: border-black
```

14.  To remove an existing alarm policy, click the Delete button.

```{image} /user-guide/alarm-management/media/administrating-alarm-policy-notifications/image14.jpeg
:class: border-black
```
