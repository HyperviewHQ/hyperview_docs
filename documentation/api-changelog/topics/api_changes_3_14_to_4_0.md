# API Changelog 3.14 to 4.0

## What's New

### `PUT` /api/asset/alarmEvents/close/{alarmEventId}

> Closes an active alarm event.


### `PUT` /api/asset/alarmEvents/bulkClose

> Closes active alarm events.


### `PUT` /api/asset/alarmEvents/bulkAcknowledgementStates

> Acknowledge or unacknowledge a list of alarm events.


### `GET` /api/asset/assetPropertyValues/strings/{assetPropertyKey}

> Retrieves an ordered list of all string values for the provided asset property key.


### `GET` /api/asset/circuitConnections/{id}

> Returns all physical connections associated with a circuit.


### `POST` /api/asset/circuitConnections

> Adds physical connections to a circuit.


### `DELETE` /api/asset/circuitConnections/{circuitId}/connections/{connectionId}

> Removes a connection from a circuit.


### `POST` /api/asset/circuits

> Creates a circuit and returns its ID.


### `GET` /api/asset/circuits/{id}

> Returns an individual circuit.


### `PUT` /api/asset/circuits/{id}

> Updates a circuit.


### `DELETE` /api/asset/circuits/{id}

> Deletes a circuit.


### `GET` /api/setting/credentials/{credentialId}/showPassword

> Returns credential passwords.


### `POST` /api/asset/outletsControl

> Performs a bulk control operation on outlets.


### `GET` /api/asset/sensors/simpleDirect/{assetId}

> Returns a simple collection of direct asset sensors.


### `GET` /api/user/userInboxNotifications/status

> Returns the user inbox status.


### `PUT` /api/user/userInboxNotifications

> Update user inbox notifications to Read or Unread.


### `DELETE` /api/user/userInboxNotifications

> Deletes a set of user inbox notifications.


### `GET` /api/user/userInboxNotifications/{userInboxNotificationId}

> Returns the user inbox notification content. Also updates the user inbox notification status
> to Read when markAsRead is true.


### `PUT` /api/setting/assetTypeDashboardSettings/{assetType}

> Updates an asset type dashboard override setting and returns the updated dashboard override setting.


### `DELETE` /api/setting/assetTypeDashboardSettings/{assetType}

> Deletes an asset type dashboard override setting.


## What's Deleted

### `GET` /api/asset/alarmEvents

> Returns a list of events for a specific asset.


### `POST` /api/asset/alarmEvents

> Closes an active alarm event.


### `GET` /api/asset/assetTrackerAlarmEvents

> Returns a list of events for a specific AssetTracker asset.


### `GET` /api/asset/assetTrackerMasterModuleData

> Retrieves all AssetTracker master module data.


### `PUT` /api/setting/assetTypeDashboardSettings

> Updates a dashboard setting and returns the updated dashboard setting.


### `PUT` /api/setting/assetTypeDashboardSettings/{assetType}

> Updates an asset type dashboard override setting and returns the updated dashboard override setting.


### `DELETE` /api/setting/assetTypeDashboardSettings/{assetType}

> Deletes an asset type dashboard override setting.


### `GET` /api/asset/assetsByType

> Returns a list of assets for a specific asset type.


### `GET` /api/asset/containedAssets/general/{assetId}

> Returns a list of assets that are contained inside the given parent.


### `POST` /api/asset/controlCredentialAssociation

> Creates an association between an asset and a control credential.


### `DELETE` /api/asset/controlCredentialAssociation

> Updates an association between an asset and a control credential.


### `PUT` /api/asset/controlCredentialAssociation/{id}

> Updates an association between an asset and a control credential.


### `GET` /api/asset/controlCredentialAssociation/{assetId}

> Returns a control credential for an asset.


### `POST` /api/asset/customAssetProperties

> Creates a new custom asset property value and returns the new custom property.


### `POST` /api/asset/outletControl

> Performs an control operation on an outlet.


### `GET` /api/setting/serviceNowCmdbConfiguration

> Returns the ServiceNow configuration.


### `PUT` /api/setting/serviceNowCmdbConfiguration

> Saves the ServiceNow configuration changes.


### `GET` /api/setting/assetTypeDashboardSettings/{assetType}

> Returns a dashboard setting for a specific asset type.


### `GET` /api/asset/customComponents

> Returns a list of custom components for a specific asset.


### `POST` /api/asset/pduBreakers

> Updates a PDU breaker.


## What's Changed

### `DELETE` /api/asset/assetTrackerMasterModuleData/{id}


### `GET` /api/layout/backgroundImages/{id}


### `DELETE` /api/layout/backgroundImages/{id}


### `GET` /api/asset/controlDataCollector/{assetId}


### `POST` /api/setting/dataCollectorToken


### `DELETE` /api/setting/discoveryProtocolSettings/ports/{portId}


### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials/{protocolCredentialId}


### `DELETE` /api/setting/discoveryProtocolSettings/protocolCredentials/{protocolCredentialId}


### `POST` /api/setting/discoveryRunner/{discoveryId}


### `POST` /api/setting/discoveryRunner/{discoveryId}/abort


### `GET` /api/setting/documentAccessPolicies/{documentId}


### `PUT` /api/setting/documentAccessPolicies/{documentId}


### `DELETE` /api/asset/documentAssociations/{assetDocumentAssociationId}


### `GET` /api/product/firmwareDownload/installFile/{firmwareVersionId}


### `GET` /api/product/firmwareDownload/releaseNote/{firmwareVersionId}


### `GET` /api/layout/floorPlanLayout/racksInRow/{rackId}


### `DELETE` /api/asset/indirectSensors/{sensorId}


### `PUT` /api/asset/manualSensors/numericSensor/{sensorId}/value


### `POST` /api/asset/monitorOnlyCommunicationSetting/{assetId}/refreshSensors


### `PUT` /api/asset/pduBreakers/breakerStatus/{pduBreakerId}


### `DELETE` /api/asset/powerSourceAssociations/{id}


### `GET` /api/layout/rackSearch


### `DELETE` /api/asset/savedSearches/user/{id}


### `DELETE` /api/asset/savedSearches/global/{id}


### `DELETE` /api/asset/sensors/{id}


### `PUT` /api/setting/serviceNowCmdbIntegration/resetLastSyncDate


### `PUT` /api/setting/serviceNowCmdbIntegration/initiateSync


### `DELETE` /api/product/userProductImages/{id}


### `DELETE` /api/asset/workNoteDocuments/{workNoteDocumentId}


### `POST` /api/asset/workOrderItemStatuses/manuallyComplete


### `DELETE` /api/asset/workOrders/completed


### `GET` /api/setting/accessPolicies


### `POST` /api/setting/accessPolicies


### `DELETE` /api/setting/accessPolicies/{accessPolicyId}


### `PUT` /api/setting/accessPolicies/{accessPolicyId}


### `GET` /api/asset/accessPolicies/{assetId}


### `PUT` /api/asset/accessPolicies/{assetId}


#### Parameters:

Deleted: `updateChildren` in `query`
> A optional flag to enable cascading access policy changes to children assets.


### `GET` /api/setting/accessPolicyGroups


### `GET` /api/setting/accessPolicyGroups/{accessPolicyId}


### `PUT` /api/asset/alarmEvents/acknowledgementState/{alarmEventId}


### `POST` /api/asset/assetFirmware


### `GET` /api/asset/availableFirmwareVersions/{assetId}


### `GET` /api/asset/availablePowerSources/outlets/{id}


### `GET` /api/asset/availablePowerSources/pduBreakers/{id}


### `GET` /api/asset/availablePowerSources/buswayTapOffs/{id}


### `GET` /api/asset/availableRackSpace/{id}


### `GET` /api/asset/availableRackSpace/{id}/sensors/{sensorId}


### `POST` /api/asset/bulk/assets/delete


#### Request:
> An object containing the IDs of the assets to delete and whether or not the current user
> should receive a notification when the deletion job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/addDocumentAssociation


#### Request:
> An object containing the IDs of the assets to associate with the document ID, and whether or
> not the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/removeDocumentAssociation


#### Request:
> An object containing the IDs of the assets associated with the document ID, and whether or
> not the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/createEventNotificationRecipient


#### Request:
> An object containing the IDs of assets to be watched by the current user and whether or not
> the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/removeEventNotificationRecipient


#### Request:
> An object containing the IDs of assets to be unwatched by the current user and whether or
> not the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/disableMonitoring


#### Request:
> An object containing the IDs of assets to disable monitoring and whether or not the current
> user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/enableMonitoring


#### Request:
> An object containing the IDs of assets to enable monitoring and whether or not the current
> user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/updateControlCredentials


#### Request:
> An object containing the IDs of assets to either remove or update the association with the
> control credential ID and whether or not the current user should receive a notification when
> the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/updateAccessPolicy


#### Request:
> An object containing the IDs of the assets to associate with the access policy ID, and
> whether or not the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/updateProduct


#### Request:
> An object containing the IDs of the assets to associate with the product ID, and whether or
> not the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/updateFirmwareControlCredentials


#### Request:
> An object containing the IDs of assets to either remove or update the association with the
> firmware credential ID and whether or not the current user should receive a notification
> when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/updateAssetsControlDataCollectorAssociation


#### Request:
> An object containing the IDs of assets to be updated with a new data collector ID for
> control operations and whether or not the current user should receive a notification when
> the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/updateDescendantsAccessPolicies


#### Request:
> An object containing asset id and access policy id for updating the asset descendants'
> access policies and whether the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/buswayTapOff


### `DELETE` /api/asset/buswayTapOff/{buswayTapOffId}


### `PUT` /api/asset/buswayTapOff/{buswayTapOffId}


### `PUT` /api/asset/controlOperations


### `GET` /api/asset/customComponents/assetPropertyValueStrings


#### Parameters:

Changed: `assetPropertyKey` in `query`
> An asset property key.


### `GET` /api/setting/customPropertyGroup


### `POST` /api/setting/customPropertyGroup


### `DELETE` /api/setting/customPropertyGroup/{customPropertyGroupId}


### `PUT` /api/setting/customPropertyGroup/{customPropertyGroupId}


### `GET` /api/setting/dataCollector


### `POST` /api/setting/dataCollector/retire


### `GET` /api/asset/dataCollectors/{assetId}


### `POST` /api/asset/documentAssociations


### `GET` /api/asset/documentAssociations/assets/{documentId}


### `GET` /api/setting/documents/{documentId}


### `DELETE` /api/setting/documents/{documentId}


### `PUT` /api/setting/documents/{documentId}


#### Request:

Changed content type : `multipart/form-data`

* Changed property `DocumentDetails.DocumentType` (string)

    Added enum value:

    * `notification`
### `POST` /api/setting/documents


#### Request:

Changed content type : `multipart/form-data`

* Changed property `DocumentDetails.DocumentType` (string)

    Added enum value:

    * `notification`
### `GET` /api/asset/enumAssetProperties/{id}


#### Parameters:

Changed: `id` in `path`
> The ID of an enum.


### `GET` /api/setting/enumCustomAssetProperties/{customAssetPropertyKeyId}


### `POST` /api/asset/eventNotificationRecipient/{assetId}


### `DELETE` /api/asset/eventNotificationRecipient/{assetId}


### `GET` /api/asset/eventNotificationRecipient/{assetId}


### `GET` /api/product/firmwareVersions/{firmwareVersionId}


### `GET` /api/product/firmwareVersions/firmware/{firmwareId}


### `GET` /api/product/image


### `POST` /api/asset/manualSensors


### `GET` /api/product/manufacturers


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type ID.


### `POST` /api/product/manufacturers


### `DELETE` /api/product/manufacturers/{id}


### `GET` /api/product/manufacturers/{id}


### `PUT` /api/product/manufacturers/{id}


### `POST` /api/asset/merge


### `PUT` /api/asset/pduBreakers/{pduBreakerId}


### `POST` /api/asset/physicalPorts


### `POST` /api/asset/physicalPorts/patchPanel


### `POST` /api/asset/physicalPorts/multiple


### `POST` /api/asset/physicalPorts/patchPanel/multiple


### `DELETE` /api/asset/physicalPorts/{id}


### `GET` /api/asset/physicalPorts/{id}


### `PUT` /api/asset/physicalPorts/{id}


### `PUT` /api/asset/physicalPorts/patchPanel/{id}


### `GET` /api/product/productProperties/{productId}


### `POST` /api/product/productProperties/{productId}


### `DELETE` /api/product/productProperties/{id}


### `PUT` /api/product/productProperties/{id}


### `GET` /api/product/productTypes


### `GET` /api/asset/search/aggregations


#### Parameters:

Changed: `assetType` in `query`
> An asset type.


### `GET` /api/setting/serviceNowCmdbConfigurationOverview


### `PUT` /api/setting/serviceNowCmdbConfigurationOverview


### `PUT` /api/setting/serviceNowCmdbIntegration/verifyAuthenticationConfiguration


### `GET` /api/asset/software/{id}


### `GET` /api/user/users


### `GET` /api/user/users/accessPolicyUsers/{accessPolicyId}


### `GET` /api/user/users/access/{accessPolicyId}


### `GET` /api/asset/widget/assetPropertyListWidget/{assetId}


### `GET` /api/asset/widget/assetLifecycleWidget/{assetId}


### `GET` /api/asset/widget/assetsByTypeWidget/{locationId}


### `GET` /api/asset/widget/assetSummaryWidget/{assetId}


### `GET` /api/setting/alarmEventPolicies


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
### `POST` /api/setting/alarmEventPolicies


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `circuit`
### `DELETE` /api/setting/alarmEventPolicies/{id}


### `PUT` /api/setting/alarmEventPolicies/{id}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `circuit`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
### `GET` /api/asset/ancestors/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `DELETE` /api/asset/assetDashboardSettings/{assetId}


### `PUT` /api/asset/assetDashboardSettings/{assetId}


### `GET` /api/asset/assetDashboardSettings/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
### `DELETE` /api/asset/assetProperties/{id}


### `GET` /api/asset/assetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `type` (string)

        Added enum values:

        * `mediaType`
        * `circuitType`
        * `circuitProvisioningStatus`
        Removed enum value:

        * `physicalConnectionType`
### `PUT` /api/asset/assetProperties/{id}


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum values:

    * `mediaType`
    * `circuitType`
    * `circuitProvisioningStatus`
    Removed enum value:

    * `physicalConnectionType`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum values:

        * `mediaType`
        * `circuitType`
        * `circuitProvisioningStatus`
        Removed enum value:

        * `physicalConnectionType`
### `POST` /api/asset/assetProperties


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum values:

    * `mediaType`
    * `circuitType`
    * `circuitProvisioningStatus`
    Removed enum value:

    * `physicalConnectionType`
#### Return Type:

Changed response : **201 Created**
> Created


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum values:

        * `mediaType`
        * `circuitType`
        * `circuitProvisioningStatus`
        Removed enum value:

        * `physicalConnectionType`
### `GET` /api/setting/assetPropertyKeys


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum values:

        * `mediaType`
        * `circuitType`
        * `circuitProvisioningStatus`
        Removed enum value:

        * `physicalConnectionType`
    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum value:

        * `circuit`
### `GET` /api/asset/assetTree/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
### `GET` /api/asset/assetTypeCount


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
### `POST` /api/layout/backgroundImages


### `GET` /api/layout/backgroundImages


### `GET` /api/setting/bacnetIpDefinitions


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type to filter the results.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
### `POST` /api/setting/bacnetIpDefinitions


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum value:

    * `circuit`
### `DELETE` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `GET` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
### `PUT` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum value:

    * `circuit`
### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


### `POST` /api/asset/bulk/assets/updateCustomProperty


#### Request:
> An object containing the IDs of assets to be updated with a new custom property value and
> whether or not the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/updateLifecycle


#### Request:
> An object containing the IDs of assets to be updated with new life cycle property values and
> whether or not the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

### `POST` /api/asset/bulk/assets/updateAssetProperty


#### Request:
> An object containing the IDs of assets to be updated with a new asset property value and
> whether or not the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `shouldReceiveResultNotification` (boolean)

* Deleted property `shouldReceiveResultEmail` (boolean)

* Changed property `assetPropertyKeyId` (string)

    Added enum values:

    * `mediaType`
    * `circuitType`
    * `circuitProvisioningStatus`
    Removed enum value:

    * `physicalConnectionType`
### `GET` /api/asset/buswayTapOff/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `POST` /api/asset/control/rackDoorElectronicLock


### `DELETE` /api/asset/customAssetProperties/{id}


### `GET` /api/asset/customAssetProperties/{id}


### `PUT` /api/asset/customAssetProperties/{id}


### `POST` /api/asset/customComponents


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum value:

    * `circuit`
### `DELETE` /api/asset/customComponents/{id}


### `PUT` /api/asset/customComponents/{id}


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum value:

    * `circuit`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum value:

        * `circuit`
### `GET` /api/setting/customPropertySetting


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum value:

        * `circuit`
### `POST` /api/setting/customPropertySetting


#### Request:

Changed content type : `application/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum value:

    * `circuit`
### `DELETE` /api/setting/customPropertySetting/{customPropertySettingId}


### `PUT` /api/setting/customPropertySetting/{customPropertySettingId}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum value:

    * `circuit`
Changed content type : `text/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum value:

    * `circuit`
Changed content type : `application/*+json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum value:

    * `circuit`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum value:

        * `circuit`
### `GET` /api/setting/discoveries


### `POST` /api/setting/discoveries


### `GET` /api/setting/discoveries/{id}


### `DELETE` /api/setting/discoveries/{discoveryId}


### `PUT` /api/setting/discoveries/{discoveryId}


### `GET` /api/setting/discoveries/{discoveryId}/schedule


### `GET` /api/setting/discoveryAssetHistories/{discoveryHistoryId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
### `GET` /api/setting/discoveryHistories


### `GET` /api/setting/discoveryHistories/{discoveryHistoryId}


### `GET` /api/setting/discoveryProtocolSettings/ports


### `POST` /api/setting/discoveryProtocolSettings/ports


### `GET` /api/setting/discoveryProtocolSettings/protocols


### `PUT` /api/setting/discoveryProtocolSettings/protocols


### `GET` /api/setting/discoveryProtocolSettings/protocols/{protocolId}


### `GET` /api/setting/discoveryRanges


### `POST` /api/setting/discoveryRanges


### `DELETE` /api/setting/discoveryRanges/{id}


### `PUT` /api/setting/discoveryRanges/{id}


### `POST` /api/setting/discoverySchedules


### `DELETE` /api/setting/discoverySchedules/{discoveryScheduleId}


### `PUT` /api/setting/discoverySchedules/{discoveryScheduleId}


### `GET` /api/asset/documentAssociations/documentDetails/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `documentType` (string)

        Added enum value:

        * `notification`
### `GET` /api/setting/documentDetails/{documentDetailsId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `documentType` (string)

        Added enum value:

        * `notification`
### `GET` /api/setting/documentDetails


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `documentType` (string)

        Added enum value:

        * `notification`
### `GET` /api/layout/floorPlanLayout/childrenState/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `GET` /api/layout/floorPlanLayoutGridInformation/{locationId}


### `GET` /api/asset/hierarchy


#### Parameters:

Changed: `assetType` in `query`
> An optional list of asset types to filter what assets are returned.


Changed: `hasChildrenAssetType` in `query`
> An optional list of asset types to filter what assets are used when determining if an asset
> has children.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `POST` /api/asset/indirectSensors


### `GET` /api/layout/layoutModeSetting/{locationId}


### `PUT` /api/layout/layoutModeSetting


### `POST` /api/layout/layoutModeSetting


### `GET` /api/setting/license


### `GET` /api/asset/lifecycleProperties/{assetId}


### `PUT` /api/asset/lifecycleProperties/{assetId}


### `PUT` /api/asset/location/{id}


### `GET` /api/layout/mapLocations/{locationId}


### `GET` /api/setting/modbusTcpDefinitions


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type to filter the results.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
### `POST` /api/setting/modbusTcpDefinitions


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum value:

    * `circuit`
### `DELETE` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


### `GET` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
### `PUT` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum value:

    * `circuit`
### `GET` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}


### `POST` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}


### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNonNumericSensorId}


### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNonNumericSensorId}


### `GET` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}


### `POST` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}


### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNumericSensorId}


### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNumericSensorId}


### `GET` /api/asset/outlets


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `GET` /api/asset/pduBreakers


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `GET` /api/asset/powerPath/{assetId}/children


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `POST` /api/asset/powerSourceAssociations


### `GET` /api/asset/powerSourceAssociations


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Added property `providingSourceDeviceDiscoveryState` (string)

        Enum values:

        * `manuallyCreated`
        * `discovered`
        * `applicationCreated`
    * Added property `providingSourceOutletStatusSensorValue` (string)

    * Added property `providingSourceOutputTotalLoadSensorValue` (number)

    * Added property `providingSourceOutputTotalPowerSensorValue` (number)

    * Changed property `providingSourceDeviceAssetType` (string)

        Added enum value:

        * `circuit`
### `GET` /api/product/productPropertyKeys/{productTypeId}


### `GET` /api/product/products


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type ID.


### `POST` /api/product/products


### `GET` /api/product/products/smartMatch


#### Parameters:

Changed: `assetType` in `query`
> An asset type.


### `DELETE` /api/product/products/{id}


### `PUT` /api/product/products/{id}


### `GET` /api/product/products/{id}


### `GET` /api/asset/rackSecurity/{assetId}


### `GET` /api/asset/rackSecurity/{locationId}/racks


### `GET` /api/asset/savedSearches


### `POST` /api/asset/savedSearches


### `GET` /api/asset/savedSearches/global


### `GET` /api/setting/sensorThreshold


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
    * Changed property `comparisonAssetPropertyKey1` (string)

        Added enum values:

        * `mediaType`
        * `circuitType`
        * `circuitProvisioningStatus`
        Removed enum value:

        * `physicalConnectionType`
### `POST` /api/setting/sensorThreshold


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `circuit`
* Changed property `comparisonAssetPropertyKey1` (string)

    Added enum values:

    * `mediaType`
    * `circuitType`
    * `circuitProvisioningStatus`
    Removed enum value:

    * `physicalConnectionType`
### `DELETE` /api/setting/sensorThreshold/{sensorThresholdId}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `circuit`
* Changed property `comparisonAssetPropertyKey1` (string)

    Added enum values:

    * `mediaType`
    * `circuitType`
    * `circuitProvisioningStatus`
    Removed enum value:

    * `physicalConnectionType`
### `GET` /api/setting/sensorTypeAssetType


#### Parameters:

Changed: `assetTypeId` in `query`
> Optional asset type to filter what sensor type maps are returned.


### `GET` /api/asset/sensors/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `destinationAssetAccessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `GET` /api/asset/sensorsDailySummaries/numeric


### `GET` /api/asset/sensorsDailySummaries/numeric/{timeRange}


### `GET` /api/asset/sensorsDailySummaries/string


### `GET` /api/asset/sensorsDailySummaries/string/{timeRange}


### `GET` /api/asset/sensorsDataPoints/numeric


### `GET` /api/asset/sensorsDataPoints/numeric/{timeRange}


### `GET` /api/asset/sensorsDataPoints/string


### `GET` /api/asset/sensorsDataPoints/string/{timeRange}


### `GET` /api/setting/serviceNowCmdbConfigurationSchedule


### `PUT` /api/setting/serviceNowCmdbConfigurationSchedule


### `GET` /api/setting/serviceNowCmdbIntegrationAssetType


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeIds` (array)

        Changed items (string):

        Added enum value:

        * `circuit`
### `PUT` /api/setting/serviceNowCmdbIntegrationAssetType


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeIds` (array)

    Changed items (string):

    Added enum value:

    * `circuit`
### `GET` /api/setting/serviceNowCmdbIntegrationFacts


### `PUT` /api/setting/serviceNowCmdbIntegrationFacts


### `GET` /api/setting/systemSettings


### `PUT` /api/setting/systemSettings


### `GET` /api/setting/systemSettings/{systemSettingId}


### `GET` /api/setting/systemSettings/dataCollector/{dataCollectorSetting}


### `PUT` /api/setting/systemSettings/dataCollector


### `POST` /api/product/userProductImages/{productId}


### `GET` /api/product/userProductImages/{productId}


### `GET` /api/asset/watchedAssets


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
### `POST` /api/asset/workNotes


### `GET` /api/setting/applicationEventLogs


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `circuitAdded`
        * `circuitSideAUpdated`
        * `circuitSideZUpdated`
        * `circuitNameUpdated`
        * `circuitDeleted`
        * `circuitConnectionAssociationRemoved`
        * `circuitConnectionAssociationAdded`
        * `apiClientDescriptionUpdated`
        * `apiClientRoleUpdated`
        * `apiClientAccessPoliciesUpdated`
        * `userInboxNotificationDeleted`
        * `credentialPasswordViewed`
### `GET` /api/asset/assetChangeEventLogs


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `circuitAdded`
        * `circuitSideAUpdated`
        * `circuitSideZUpdated`
        * `circuitNameUpdated`
        * `circuitDeleted`
        * `circuitConnectionAssociationRemoved`
        * `circuitConnectionAssociationAdded`
        * `apiClientDescriptionUpdated`
        * `apiClientRoleUpdated`
        * `apiClientAccessPoliciesUpdated`
        * `userInboxNotificationDeleted`
        * `credentialPasswordViewed`
### `GET` /api/asset/assetTrackerContainedAssets


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `DELETE` /api/asset/assets/{id}


### `GET` /api/asset/assets/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `PUT` /api/asset/assets/{id}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `circuit`
* Changed property `accessState` (string)

    Added enum value:

    * `circuitSideAssetPlaceholder`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `GET` /api/asset/componentAssets/{assetId}


#### Parameters:

Changed: `includeAssetTypes` in `query`
> Optional list of included asset types.


Changed: `excludeAssetTypes` in `query`
> Optional list of excluded asset types.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `mediaType`
            * `circuitType`
            * `circuitProvisioningStatus`
            Removed enum value:

            * `physicalConnectionType`
### `GET` /api/asset/componentAssets/{assetId}/virtualComponents


#### Parameters:

Changed: `includeAssetTypes` in `query`
> Optional list of included asset types.


Changed: `excludeAssetTypes` in `query`
> Optional list of excluded asset types.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `mediaType`
            * `circuitType`
            * `circuitProvisioningStatus`
            Removed enum value:

            * `physicalConnectionType`
### `GET` /api/asset/componentAssets/{assetId}/networkComponents


#### Parameters:

Changed: `includeAssetTypes` in `query`
> Optional list of included asset types.


Changed: `excludeAssetTypes` in `query`
> Optional list of excluded asset types.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `mediaType`
            * `circuitType`
            * `circuitProvisioningStatus`
            Removed enum value:

            * `physicalConnectionType`
### `GET` /api/asset/containedAssets/elevation/{parentId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `GET` /api/setting/credentials


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Deleted property `password` (string)

    * Deleted property `communityString` (string)

    * Changed property `snmpV3Credential` (object)

        * Deleted property `privacyPassword` (string)

        * Changed property `authenticationAlgorithm` (string)

            Added enum values:

            * `sha256`
            * `sha384`
            * `sha512`
### `POST` /api/setting/credentials


#### Request:

Changed content type : `application/json`

* Added property `snmpPrivacyPassword` (string)

* Added property `shouldEditPassword` (boolean)

* Added property `shouldEditSnmpPrivacyPassword` (boolean)

* Deleted property `communityString` (string)

* Changed property `snmpV3Credential` (object)

    * Deleted property `privacyPassword` (string)

    * Changed property `authenticationAlgorithm` (string)

        Added enum values:

        * `sha256`
        * `sha384`
        * `sha512`
### `DELETE` /api/setting/credentials/{credentialId}


### `GET` /api/setting/credentials/{credentialId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Deleted property `password` (string)

    * Deleted property `communityString` (string)

    * Changed property `snmpV3Credential` (object)

        * Deleted property `privacyPassword` (string)

        * Changed property `authenticationAlgorithm` (string)

            Added enum values:

            * `sha256`
            * `sha384`
            * `sha512`
### `PUT` /api/setting/credentials/{credentialId}


#### Request:

Changed content type : `application/json`

* Added property `snmpPrivacyPassword` (string)

* Added property `shouldEditPassword` (boolean)

* Added property `shouldEditSnmpPrivacyPassword` (boolean)

* Deleted property `communityString` (string)

* Changed property `snmpV3Credential` (object)

    * Deleted property `privacyPassword` (string)

    * Changed property `authenticationAlgorithm` (string)

        Added enum values:

        * `sha256`
        * `sha384`
        * `sha512`
### `GET` /api/asset/discoveryReport/{assetId}


### `GET` /api/layout/floorPlanLayout/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assets` (array)

        Changed items (object):

        * Changed property `assetType` (string)

            Added enum value:

            * `circuit`
        * Changed property `accessState` (string)

            Added enum value:

            * `circuitSideAssetPlaceholder`
### `PUT` /api/layout/floorPlanLayout


#### Request:

Changed content type : `application/json`

* Changed property `assets` (array)

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `circuit`
    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `GET` /api/asset/monitorOnlyCommunicationSetting/{assetId}


### `PUT` /api/asset/monitorOnlyCommunicationSetting/{assetId}


### `POST` /api/asset/physicalConnections


#### Request:

Changed content type : `application/json`

* Added property `mediaTypeValueId` (string)

* Deleted property `connectionTypeValueId` (string)

### `DELETE` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalConnections/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Added property `mediaTypeValueId` (string)

    * Added property `mediaTypeValue` (string)

    * Deleted property `connectionTypeValueId` (string)

    * Deleted property `connectionTypeValue` (string)

    * Changed property `terminationADeviceAssetTypeId` (string)

        Added enum value:

        * `circuit`
    * Changed property `terminationADeviceAssetAccessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `PUT` /api/asset/physicalConnections/{id}


#### Request:

Changed content type : `application/json`

* Added property `mediaTypeValueId` (string)

* Deleted property `connectionTypeValueId` (string)

#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Added property `mediaTypeValueId` (string)

    * Deleted property `connectionTypeValueId` (string)

### `GET` /api/asset/physicalPorts/detailed/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `physicalPortConnections` (array)

        Changed items (object):

        * Added property `mediaTypeValueId` (string)

        * Added property `mediaTypeValue` (string)

        * Deleted property `connectionTypeValueId` (string)

        * Deleted property `connectionTypeValue` (string)

        * Changed property `terminationAAssetAccessState` (string)

            Added enum value:

            * `circuitSideAssetPlaceholder`
        * Changed property `terminationAAssetTypeId` (string)

            Added enum value:

            * `circuit`
### `GET` /api/asset/powerPath/{assetId}/ancestry


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `powerPathDeviceAssets` (array)

        Changed items (object):

        * Changed property `accessState` (string)

            Added enum value:

            * `circuitSideAssetPlaceholder`
### `PUT` /api/asset/rackShelf/{id}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `circuit`
* Changed property `accessState` (string)

    Added enum value:

    * `circuitSideAssetPlaceholder`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `POST` /api/asset/search


### `GET` /api/asset/shelvedAssets/{rackId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `GET` /api/asset/workNotes/asset/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `workNoteDocuments` (array)

        Changed items (object):

        * Changed property `documentType` (string)

            Added enum value:

            * `notification`
### `DELETE` /api/asset/workNotes/{workNoteId}


### `PUT` /api/asset/workNotes/{workNoteId}


### `GET` /api/asset/workNotes/{workNoteId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `workNoteDocuments` (array)

        Changed items (object):

        * Changed property `documentType` (string)

            Added enum value:

            * `notification`
### `DELETE` /api/asset/workOrders/{workOrderId}


### `GET` /api/asset/workOrders/{workOrderId}


### `GET` /api/asset/workOrders/serviceNowCmdbSyncNow/{workOrderId}


### `GET` /api/asset/workOrders/serviceNowCmdbScheduledSync/{workOrderId}


### `GET` /api/asset/assets


#### Parameters:

Changed: `assetType` in `query`
> An optional list of asset types to filter what assets are returned.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `circuit`
    * Changed property `accessState` (string)

        Added enum value:

        * `circuitSideAssetPlaceholder`
### `POST` /api/asset/assets


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `circuit`
* Changed property `accessState` (string)

    Added enum value:

    * `circuitSideAssetPlaceholder`
* Changed property `creatableAssetProperties` (array)

    Changed items (object):

    * Changed property `type` (string)

        Added enum values:

        * `mediaType`
        * `circuitType`
        * `circuitProvisioningStatus`
        Removed enum value:

        * `physicalConnectionType`
### `GET` /api/asset/controlOperations/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `controlCredential` (object)

        * Deleted property `password` (string)

        * Deleted property `communityString` (string)

        * Changed property `snmpV3Credential` (object)

            * Deleted property `privacyPassword` (string)

            * Changed property `authenticationAlgorithm` (string)

                Added enum values:

                * `sha256`
                * `sha384`
                * `sha512`
### `GET` /api/setting/discoveryProtocolSettings/protocolCredentials


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Deleted property `password` (string)

    * Deleted property `communityString` (string)

    * Changed property `snmpV3Credential` (object)

        * Deleted property `privacyPassword` (string)

        * Changed property `authenticationAlgorithm` (string)

            Added enum values:

            * `sha256`
            * `sha384`
            * `sha512`
### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials


#### Request:

Changed content type : `application/json`

* Changed property `credential` (object)

    * Added property `snmpPrivacyPassword` (string)

    * Added property `shouldEditPassword` (boolean)

    * Added property `shouldEditSnmpPrivacyPassword` (boolean)

    * Deleted property `communityString` (string)

    * Changed property `snmpV3Credential` (object)

        * Deleted property `privacyPassword` (string)

        * Changed property `authenticationAlgorithm` (string)

            Added enum values:

            * `sha256`
            * `sha384`
            * `sha512`
