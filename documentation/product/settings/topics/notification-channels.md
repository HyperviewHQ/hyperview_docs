(notification-channels-doc)=

# Notification Channels

Notification Channels are API integrations with external systems to send alarm event notifications. Please provide feedback to Hyperview if you would like to see more integrations.

## Microsoft Teams

To enable the integration, enter the following information.

1. Give the notification channel a name. Use this name to identify the channel when configuring an {ref}`Alarm Policy <Alarm-policies-doc>`.
2. Copy and paste the webhook URL for the target Microsoft Teams channel.

```{image} /product/settings/media/add-notification-channel.png
:class: border-black
```

### Configuring Microsoft Teams

To generate a webhook URL from Microsoft Teams, follow the instructions outlined in Microsoft Docs on how to [Create Incoming Webhooks](https://learn.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/how-to/add-incoming-webhook).
