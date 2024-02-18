.. include:: /settings/media.rst
.. _Notification-channels-doc:

*********************
Notification Channels
*********************
Notification Channels are API integrations with external systems to send alarm event notifications. Please provide feedback to Hyperview if you would like to see more integrations.

===============
Microsoft Teams
===============
To enable the integration, enter the following information.

#. Give the notification channel a name. This name will be used to identify the channel when you are configuring an Alarm Policy

#. Give copy and paste the webhook url for the target Microsoft Teams channel.

|add-notification-channel|

Configuring a Microsoft Teams
-----------------------------
Follow the following steps to configure Microsoft Teams to receive notifications from Hyperview. [#]_

#. Open the channel in which you want to add the webhook and select ••• from the upper-right corner.

#. Select Connectors from the dropdown menu.

#. Search for Incoming Webhook and select Configure.

#. Provide a name.

#. *Optional* upload an image.

#. Click *Create*

#. Copy and save the unique webhook URL present in the dialog. The URL maps to the channel and you can use it to send information to Teams.

#. Select Done.

.. [#] Reference: Microsoft Docs `Create Incoming Webhooks <https://learn.microsoft.com/en-us/microsoftteams/platform/webhooks-and-connectors/how-to/add-incoming-webhook>`_