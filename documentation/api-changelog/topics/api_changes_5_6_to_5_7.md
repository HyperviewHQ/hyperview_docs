# API Changelog 5.6 to 5.7


## What's New


### `PUT` /api/asset/customSensors

> Update a custom sensor.


### `POST` /api/asset/customSensors

> Creates a custom sensor and returns its ID.


### `POST` /api/asset/customSensors/evaluateFormula

> Evaluates a custom sensor formula against the current values of its sensors without saving it.


### `DELETE` /api/asset/customSensors/{customSensorId}

> Deletes a custom sensor.


## What's Changed


### `PUT` /api/setting/accessPolicies/{accessPolicyId}


#### Request:

Changed content type : `application/json`

### `DELETE` /api/setting/accessPolicies/{accessPolicyId}


### `PUT` /api/asset/alarmEvents/close/{alarmEventId}


### `PUT` /api/asset/alarmEvents/bulkClose


### `PUT` /api/asset/alarmEvents/acknowledgementState/{alarmEventId}


#### Request:

Changed content type : `application/json`

### `PUT` /api/asset/alarmEvents/bulkAcknowledgementStates


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/assetFirmware


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/assetPropertyValues/strings/{assetPropertyKey}


#### Parameters:

Changed: `assetPropertyKey` in `path`
> A asset property key.


### `DELETE` /api/asset/assetTrackerMasterModuleData/{id}


### `GET` /api/layout/backgroundImages/{id}


### `DELETE` /api/layout/backgroundImages/{id}


### `POST` /api/asset/bulk/assets/delete


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/addDocumentAssociation


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/removeDocumentAssociation


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/createEventNotificationRecipient


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/removeEventNotificationRecipient


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/disableMonitoring


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/enableMonitoring


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updateCustomProperty


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updateControlCredentials


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updateLifecycle


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updateAccessPolicy


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/sensors/updateAccessPolicy


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updateProduct


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updateAssetProperty


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updateFirmwareControlCredentials


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updateAssetsControlDataCollectorAssociation


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updateDescendantsAccessPolicies


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updatePhysicalPortNames


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/addPhysicalPorts


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/addPhysicalPort


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/addPatchPanelPhysicalPorts


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/addPatchPanelPhysicalPort


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/updateBusinessEntityAssociation


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/muteAlarmEventNotifications


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/assets/cancelMuteAlarmEventNotifications


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/sensors/delete


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/bulk/sensors/resetAccessPolicy


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/businessEntities


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/businessEntityAddresses


#### Request:

Changed content type : `application/json`

### `DELETE` /api/asset/businessEntityAssociations/asset/{assetId}


### `POST` /api/asset/businessEntityContacts


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/buswayTapOff


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/circuitConnections


#### Request:

Changed content type : `application/json`

### `DELETE` /api/asset/circuitConnections/{circuitId}/connections/{connectionId}


### `POST` /api/asset/circuits


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/control/rackDoorElectronicLock


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/controlDataCollector/{assetId}


### `PUT` /api/asset/controlOperations


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/customComponents/assetPropertyValueStrings


#### Parameters:

Changed: `assetPropertyKey` in `query`
> An asset property key.


### `POST` /api/asset/customComponents


#### Request:

Changed content type : `application/json`

### `POST` /api/setting/dataCollector/retire


#### Request:

Changed content type : `application/json`

### `POST` /api/setting/dataCollectorToken


### `POST` /api/asset/directSensorMap


#### Request:

Changed content type : `application/json`

### `DELETE` /api/asset/directSensorMap/{sensorId}


### `DELETE` /api/setting/discoveryProtocolSettings/ports/{portId}


### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials/{protocolCredentialId}


### `DELETE` /api/setting/discoveryProtocolSettings/protocolCredentials/{protocolCredentialId}


### `POST` /api/setting/discoveryRunner/{discoveryId}


### `POST` /api/setting/discoveryRunner/{discoveryId}/abort


### `POST` /api/setting/discoverySchedules


#### Request:

Changed content type : `application/json`

### `PUT` /api/setting/discoverySchedules/{discoveryScheduleId}


#### Request:

Changed content type : `application/json`

### `DELETE` /api/setting/discoverySchedules/{discoveryScheduleId}


### `GET` /api/setting/documentAccessPolicies/{documentId}


### `PUT` /api/setting/documentAccessPolicies/{documentId}


### `POST` /api/asset/documentAssociations


#### Request:

Changed content type : `application/json`

### `DELETE` /api/asset/documentAssociations/{assetDocumentAssociationId}


### `GET` /api/setting/documents/{documentId}


### `PUT` /api/setting/documents/{documentId}


#### Request:

Changed content type : `multipart/form-data`

* Changed property `DocumentDetails.DocumentType` (string -> string)

### `DELETE` /api/setting/documents/{documentId}


### `POST` /api/setting/documents


#### Request:

Changed content type : `multipart/form-data`

* Changed property `DocumentDetails.DocumentType` (string -> string)

### `PUT` /api/setting/equinixSmartViewConfiguration/verifyAuthenticationConfiguration


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `DELETE` /api/setting/equinixSmartViewIbxConfigurations/{configurationId}


### `PUT` /api/setting/equinixSmartViewIbxConfigurations/{id}


#### Request:

Changed content type : `application/json`

### `PUT` /api/setting/equinixSmartViewIntegration/initiateSync


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `GET` /api/product/firmwareDownload/installFile/{firmwareVersionId}


### `GET` /api/product/firmwareDownload/releaseNote/{firmwareVersionId}


### `PUT` /api/layout/floorPlanLayout


#### Request:

Changed content type : `application/json`

### `GET` /api/layout/floorPlanLayout/racksInRow/{rackId}


### `GET` /api/product/image


#### Parameters:

Changed: `imagePosition` in `query`
> A product image position.


### `POST` /api/asset/indirectSensors


#### Request:

Changed content type : `application/json`

### `DELETE` /api/asset/indirectSensors/{sensorId}


### `POST` /api/asset/manualSensors


#### Request:

Changed content type : `application/json`

### `PUT` /api/asset/manualSensors/numericSensor/{sensorId}/value


### `POST` /api/asset/merge


#### Request:

Changed content type : `application/json`

### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpComponents/{modbusTcpDefinitionId}/{modbusTcpComponentId}


### `POST` /api/asset/monitorOnlyCommunicationSetting/{assetId}/refreshSensors


### `POST` /api/asset/muteAlarmEventNotifications


#### Request:

Changed content type : `application/json`

### `DELETE` /api/asset/muteAlarmEventNotifications/{id}


### `POST` /api/asset/outletsControl


#### Request:

Changed content type : `application/json`

### `PUT` /api/asset/pduBreakers/{pduBreakerId}


#### Request:

Changed content type : `application/json`

### `PUT` /api/asset/pduBreakers/breakerStatus/{pduBreakerId}


### `POST` /api/asset/physicalConnections


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/physicalPorts


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/physicalPorts/patchPanel


#### Request:

Changed content type : `application/json`

### `DELETE` /api/asset/powerSourceAssociations/{id}


### `POST` /api/product/products/{id}/clone


### `POST` /api/asset/rackPanel


#### Request:

Changed content type : `application/json`

### `DELETE` /api/asset/rackPanel/{assetId}/blankingPanels


### `DELETE` /api/asset/rackPanel/{assetId}/cableManagement


### `GET` /api/layout/rackSearch


### `DELETE` /api/asset/savedSearches/user/{id}


### `DELETE` /api/asset/savedSearches/global/{id}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}


#### Request:

Changed content type : `application/json`

### `DELETE` /api/setting/sensorThreshold/{sensorThresholdId}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}/enabledState


### `DELETE` /api/asset/sensors/{id}


### `PUT` /api/asset/sensors


#### Request:

Changed content type : `application/json`

### `PUT` /api/setting/serviceNowCmdbIntegration/resetLastSyncDate


### `PUT` /api/setting/serviceNowCmdbIntegration/initiateSync


### `PUT` /api/setting/serviceNowCmdbIntegration/verifyAuthenticationConfiguration


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `PUT` /api/setting/systemSettings/dataCollector


#### Request:

Changed content type : `application/json`

### `DELETE` /api/user/userConversationHistory/{userConversationHistoryId}


### `PUT` /api/user/userInboxNotifications


#### Request:

Changed content type : `application/json`

### `DELETE` /api/user/userInboxNotifications


### `GET` /api/user/userInboxNotifications/{userInboxNotificationId}


### `GET` /api/product/userProductImages/images/{productImageId}


### `DELETE` /api/product/userProductImages/{id}


### `DELETE` /api/user/userSearchHistory/{userSearchHistoryId}


### `GET` /api/asset/webInterfaceAddress/{assetId}


### `DELETE` /api/asset/workNoteDocuments/{workNoteDocumentId}


### `POST` /api/asset/workNotes


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/workOrderItemStatuses/manuallyComplete


### `DELETE` /api/asset/workOrders/completed


### `POST` /api/asset/workOrders/manuallyCompleteWorkOrder/{workOrderId}


### `POST` /api/setting/accessPolicies


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/accessPolicies


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Added property `totalSensorsCount` (integer)

    * Added property `overriddenSensorsCount` (integer)

### `GET` /api/asset/accessPolicies/{assetId}


### `PUT` /api/asset/accessPolicies/{assetId}


### `GET` /api/setting/accessPolicyGroups


### `GET` /api/setting/accessPolicyGroups/{accessPolicyId}


### `GET` /api/asset/ancestors/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string -> string)

    * Changed property `accessState` (string -> string)

### `DELETE` /api/asset/assetProperties/{id}


### `GET` /api/asset/assetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `type` (string -> string)

    * Changed property `dataType` (string -> string)

    * Changed property `dataSource` (string -> string)

### `PUT` /api/asset/assetProperties/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `type` (string -> string)

    * Changed property `dataType` (string -> string)

    * Changed property `dataSource` (string -> string)

### `GET` /api/asset/assetProperties/{id}/{assetPropertyKey}


#### Parameters:

Changed: `assetPropertyKey` in `path`
> An asset property key.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `type` (string -> string)

    * Changed property `dataType` (string -> string)

### `POST` /api/asset/assetProperties


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **201 Created**
> Created


* Changed content type : `application/json`

    * Changed property `type` (string -> string)

    * Changed property `dataType` (string -> string)

    * Changed property `dataSource` (string -> string)

### `GET` /api/asset/assetTrackerContainedAssets


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `locationData` (object -> object)

    * Changed property `dimension` (object -> object)

    * Changed property `accessState` (string -> string)

### `GET` /api/asset/assetTrackerMasterModuleData


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `status` (string -> string)

### `GET` /api/asset/assetTree/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string -> string)

### `GET` /api/asset/assetTypeCount


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string -> string)

### `DELETE` /api/setting/assetTypeDashboardSettings/{assetType}


#### Parameters:

Changed: `assetType` in `path`
> An asset type.


### `PUT` /api/setting/assetTypeDashboardSettings/{assetType}


#### Parameters:

Changed: `assetType` in `path`
> An asset type.


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string -> string)

### `POST` /api/asset/assets


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/assets


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `status` (string -> string)

    * Changed property `assetTypeId` (string -> string)

    * Changed property `assetTypeCategory` (string -> string)

    * Changed property `dimension` (object -> object)

    * Changed property `assetLifecycleState` (string -> string)

    * Changed property `discoveryState` (string -> string)

    * Changed property `monitoringState` (string -> string)

    * Changed property `sensorMonitoringProfileType` (string -> string)

    * Changed property `muteAlarmEventNotificationsSetting` (object -> object)

    * Changed property `locationData` (object -> object)

    * Changed property `accessState` (string -> string)

    * Changed property `businessEntityAccessState` (string -> string)

### `DELETE` /api/asset/assets/{id}


### `GET` /api/asset/assets/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `status` (string -> string)

    * Changed property `assetTypeId` (string -> string)

    * Changed property `assetTypeCategory` (string -> string)

    * Changed property `dimension` (object -> object)

    * Changed property `assetLifecycleState` (string -> string)

    * Changed property `discoveryState` (string -> string)

    * Changed property `monitoringState` (string -> string)

    * Changed property `sensorMonitoringProfileType` (string -> string)

    * Changed property `muteAlarmEventNotificationsSetting` (object -> object)

    * Changed property `locationData` (object -> object)

    * Changed property `accessState` (string -> string)

    * Changed property `businessEntityAccessState` (string -> string)

### `PUT` /api/asset/assets/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `status` (string -> string)

    * Changed property `assetTypeId` (string -> string)

    * Changed property `assetTypeCategory` (string -> string)

    * Changed property `dimension` (object -> object)

    * Changed property `assetLifecycleState` (string -> string)

    * Changed property `discoveryState` (string -> string)

    * Changed property `monitoringState` (string -> string)

    * Changed property `sensorMonitoringProfileType` (string -> string)

    * Changed property `muteAlarmEventNotificationsSetting` (object -> object)

    * Changed property `locationData` (object -> object)

    * Changed property `accessState` (string -> string)

    * Changed property `businessEntityAccessState` (string -> string)

### `GET` /api/asset/availableFirmwareVersions/{assetId}


### `GET` /api/asset/availablePowerSources/outlets/{id}


### `GET` /api/asset/availablePowerSources/pduBreakers/{id}


### `GET` /api/asset/availablePowerSources/buswayTapOffs/{id}


### `GET` /api/asset/availableRackSpace/{id}


#### Parameters:

Changed: `rackSide` in `query`
> A flag to indicate which side of the rack to get available rack space from.


### `GET` /api/asset/availableRackSpace/{id}/sensors/{sensorId}


#### Parameters:

Changed: `rackSide` in `query`
> A flag to indicate which side of the rack to get grab sensors from.


### `POST` /api/layout/backgroundImages


### `GET` /api/layout/backgroundImages


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `imageFormat` (string -> string)

### `POST` /api/setting/bacnetIpDefinitions


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/bacnetIpDefinitions


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type to filter the results.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string -> string)

### `PUT` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Request:

Changed content type : `application/json`

### `DELETE` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `GET` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetType` (string -> string)

### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `objectType` (string -> string)

    * Changed property `orderOfOperations` (string -> string)

### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `objectType` (string -> string)

    * Changed property `orderOfOperations` (string -> string)

### `DELETE` /api/asset/businessEntities/{id}


### `GET` /api/asset/businessEntities/{id}


### `PUT` /api/asset/businessEntities/{id}


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/businessEntityAddresses/{businessEntityId}


### `DELETE` /api/asset/businessEntityAddresses/{id}


### `PUT` /api/asset/businessEntityAddresses/{id}


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/businessEntityContacts/{businessEntityId}


### `DELETE` /api/asset/businessEntityContacts/{id}


### `PUT` /api/asset/businessEntityContacts/{id}


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/buswayTapOff/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string -> string)

### `DELETE` /api/asset/buswayTapOff/{buswayTapOffId}


### `PUT` /api/asset/buswayTapOff/{buswayTapOffId}


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/containedAssets/elevation/{parentId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `locationData` (object -> object)

    * Changed property `dimension` (object -> object)

    * Changed property `accessState` (string -> string)

### `GET` /api/asset/controlOperations/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `controlCredential` (object -> object)

    * Changed property `controlOperation` (string -> string)

### `GET` /api/setting/credentials/{credentialId}/showPassword


### `DELETE` /api/asset/customAssetProperties/{id}


### `GET` /api/asset/customAssetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataType` (string -> string)

    * Changed property `dataSource` (string -> string)

### `PUT` /api/asset/customAssetProperties/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `dataType` (string -> string)

    * Changed property `dataSource` (string -> string)

### `GET` /api/asset/customAssetProperties/{id}/customPropertyValue


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `dataType` (string -> string)

    * Changed property `dataSource` (string -> string)

### `GET` /api/asset/customAssetProperties/{id}/children/customPropertyValue


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataType` (string -> string)

    * Changed property `dataSource` (string -> string)

### `DELETE` /api/asset/customComponents/{id}


### `PUT` /api/asset/customComponents/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `type` (string -> string)

### `POST` /api/setting/customPropertyGroup


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/customPropertyGroup


### `DELETE` /api/setting/customPropertyGroup/{customPropertyGroupId}


### `PUT` /api/setting/customPropertyGroup/{customPropertyGroupId}


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `GET` /api/setting/dataCollector


### `GET` /api/asset/dataCollectors/{assetId}


### `POST` /api/setting/discoveries


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/discoveries


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `status` (string -> string)

    * Changed property `scheduleType` (string -> string)

    * Changed property `discoveryType` (string -> string)

### `GET` /api/setting/discoveries/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `status` (string -> string)

    * Changed property `scheduleType` (string -> string)

    * Changed property `discoveryType` (string -> string)

### `DELETE` /api/setting/discoveries/{discoveryId}


### `PUT` /api/setting/discoveries/{discoveryId}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `status` (string -> string)

    * Changed property `scheduleType` (string -> string)

    * Changed property `discoveryType` (string -> string)

### `GET` /api/setting/discoveries/{discoveryId}/schedule


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `scheduleType` (string -> string)

### `GET` /api/setting/discoveryAssetHistories/{discoveryHistoryId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string -> string)

    * Changed property `assetTypeCategory` (string -> string)

    * Changed property `discoveredAssetChangedStatus` (string -> string)

### `GET` /api/setting/discoveryHistories


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `status` (string -> string)

### `GET` /api/setting/discoveryHistories/{discoveryHistoryId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `status` (string -> string)

### `POST` /api/setting/discoveryProtocolSettings/ports


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/discoveryProtocolSettings/ports


#### Parameters:

Changed: `protocolId` in `query`
> A protocol ID.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `protocolId` (string -> string)

### `GET` /api/setting/discoveryProtocolSettings/protocols


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string -> string)

### `PUT` /api/setting/discoveryProtocolSettings/protocols


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `id` (string -> string)

### `GET` /api/setting/discoveryProtocolSettings/protocols/{protocolId}


#### Parameters:

Changed: `protocolId` in `path`
> A protocol ID.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `id` (string -> string)

### `POST` /api/setting/discoveryRanges


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/discoveryRanges


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `ipRangeType` (string -> string)

### `DELETE` /api/setting/discoveryRanges/{id}


### `PUT` /api/setting/discoveryRanges/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `ipRangeType` (string -> string)

### `GET` /api/asset/discoveryReport/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `ipAddress` (object -> object)

    * Changed property `protocol` (string -> string)

    * Changed property `result` (string -> string)

### `GET` /api/asset/documentAssociations/documentDetails/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `documentType` (string -> string)

### `GET` /api/asset/documentAssociations/assets/{documentId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string -> string)

### `GET` /api/setting/documentDetails/{documentDetailsId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `documentType` (string -> string)

    * Changed property `fileExtension` (string -> string)

### `GET` /api/setting/documentDetails


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `documentType` (string -> string)

    * Changed property `fileExtension` (string -> string)

### `GET` /api/asset/enumAssetProperties/{id}


#### Parameters:

Changed: `id` in `path`
> The ID of an enum.


### `GET` /api/setting/enumCustomAssetProperties/{customAssetPropertyKeyId}


### `GET` /api/setting/equinixSmartViewConfiguration


### `PUT` /api/setting/equinixSmartViewConfiguration


#### Request:

Changed content type : `application/json`

### `POST` /api/setting/equinixSmartViewIbxConfigurations


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/equinixSmartViewIbxConfigurations


### `POST` /api/asset/eventNotificationRecipient/{assetId}


### `DELETE` /api/asset/eventNotificationRecipient/{assetId}


### `GET` /api/asset/eventNotificationRecipient/{assetId}


### `GET` /api/product/firmwareVersions/{firmwareVersionId}


### `GET` /api/product/firmwareVersions/firmware/{firmwareId}


### `GET` /api/layout/floorPlanLayout/childrenState/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string -> string)

    * Changed property `accessState` (string -> string)

### `GET` /api/layout/floorPlanLayout/{id}/floorAssets/customPropertyValue


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataType` (string -> string)

    * Changed property `dataSource` (string -> string)

### `GET` /api/asset/hierarchy


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string -> string)

    * Changed property `assetTypeCategory` (string -> string)

    * Changed property `accessState` (string -> string)

### `GET` /api/layout/layoutModeSetting/{locationId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `layoutMode` (string -> string)

### `POST` /api/layout/layoutModeSetting


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `PUT` /api/layout/layoutModeSetting


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `text/plain`

    * Changed property `layoutMode` (string -> string)

* Changed content type : `application/json`

    * Changed property `layoutMode` (string -> string)

* Changed content type : `text/json`

    * Changed property `layoutMode` (string -> string)

### `GET` /api/asset/lifecycleProperties/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetLifecycleState` (string -> string)

### `PUT` /api/asset/lifecycleProperties/{assetId}


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetLifecycleState` (string -> string)

### `PUT` /api/asset/location/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `rackSide` (string -> string)

    * Changed property `rackPosition` (string -> string)

### `POST` /api/product/manufacturers


#### Request:

Changed content type : `application/json`

### `GET` /api/product/manufacturers


### `DELETE` /api/product/manufacturers/{id}


### `GET` /api/product/manufacturers/{id}


### `PUT` /api/product/manufacturers/{id}


#### Request:

Changed content type : `application/json`

### `GET` /api/layout/mapLocations/{locationId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `status` (string -> string)

    * Changed property `lifecycleState` (string -> string)

### `GET` /api/layout/mapLocations/{locationId}/customPropertyValues


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataType` (string -> string)

    * Changed property `dataSource` (string -> string)

### `POST` /api/setting/modbusTcpDefinitions/modbusTcpComponents/{modbusTcpDefinitionId}


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/modbusTcpDefinitions/modbusTcpComponents/{modbusTcpDefinitionId}


### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpComponents/{modbusTcpDefinitionId}


#### Request:

Changed content type : `application/json`

### `POST` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `registerType` (string -> string)

    * Changed property `dataSetting` (string -> string)

    * Changed property `orderOfOperations` (string -> string)

### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNumericSensorId}


### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNumericSensorId}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `registerType` (string -> string)

    * Changed property `dataSetting` (string -> string)

    * Changed property `orderOfOperations` (string -> string)

### `GET` /api/asset/networkHosts/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `ipAddress` (object -> object)

    * Changed property `hostType` (string -> string)

### `POST` /api/setting/notificationChannels


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/notificationChannels


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `notificationChannelType` (string -> string)

### `DELETE` /api/setting/notificationChannels/{id}


### `PUT` /api/setting/notificationChannels/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `notificationChannelType` (string -> string)

### `PUT` /api/setting/notificationChannels/test


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `GET` /api/asset/outlets


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string -> string)

### `GET` /api/asset/pduBreakers


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `discoveryState` (string -> string)

    * Changed property `consumingPowerDestinationAssetAccessState` (string -> string)

### `POST` /api/asset/physicalPorts/multiple


#### Request:

Changed content type : `application/json`

### `DELETE` /api/asset/physicalPorts/multiple


#### Request:

Changed content type : `application/json`

### `PUT` /api/asset/physicalPorts/multiple


#### Request:

Changed content type : `application/json`

### `POST` /api/asset/physicalPorts/patchPanel/multiple


#### Request:

Changed content type : `application/json`

### `PUT` /api/asset/physicalPorts/patchPanel/multiple


#### Request:

Changed content type : `application/json`

### `DELETE` /api/asset/physicalPorts/{id}


### `GET` /api/asset/physicalPorts/{id}


### `PUT` /api/asset/physicalPorts/{id}


#### Request:

Changed content type : `application/json`

### `PUT` /api/asset/physicalPorts/patchPanel/{id}


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/powerPath/{assetId}/children


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string -> string)

### `POST` /api/asset/powerSourceAssociations


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/powerSourceAssociations


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `providingSourceDeviceDiscoveryState` (string -> string)

    * Changed property `providingSourceDeviceAssetType` (string -> string)

    * Changed property `providingSourceAssetType` (string -> string)

    * Changed property `consumingDestinationAssetType` (string -> string)

### `GET` /api/product/productProperties/{productId}


### `POST` /api/product/productProperties/{productId}


#### Request:

Changed content type : `application/json`

### `DELETE` /api/product/productProperties/{id}


### `PUT` /api/product/productProperties/{id}


#### Request:

Changed content type : `application/json`

### `GET` /api/product/productTypes


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Added property `assetType` (object)

        Enum values:

        * `unknown`
        * `location`
        * `server`
        * `rack`
        * `rackPdu`
        * `bladeEnclosure`
        * `ups`
        * `networkStorage`
        * `transferSwitch`
        * `bladeServer`
        * `smallUps`
        * `powerMeter`
        * `camera`
        * `busway`
        * `chiller`
        * `crac`
        * `crah`
        * `environmental`
        * `fireControlPanel`
        * `generator`
        * `inRowCooling`
        * `kvmSwitch`
        * `bladeStorage`
        * `monitor`
        * `networkDevice`
        * `otherDevice`
        * `patchPanel`
        * `pduAndRpp`
        * `bladeNetwork`
        * `utilityBreaker`
        * `virtualServer`
        * `processor`
        * `memory`
        * `pduRppBreaker`
        * `nic`
        * `operatingSystem`
        * `powerSupply`
        * `physicalStorage`
        * `ipAddress`
        * `application`
        * `outlet`
        * `rackShelf`
        * `cable`
        * `transceiver`
        * `buswayTapOff`
        * `nodeServer`
        * `lineCardSwitchModule`
        * `physicalConnection`
        * `physicalPort`
        * `circuit`
        * `tapeDrive`
        * `businessEntity`
        * `businessEntityAddress`
        * `businessEntityContact`
        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
        * `cableManagement`
        * `blankingPanel`
        * `dcRectifier`
        * `batteryBank`
        * `switchboard`
        * `switchgear`
### `GET` /api/product/products/smartMatch


#### Parameters:

Changed: `assetType` in `query`
> An asset type.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Added property `productTypeId` (string)

    * Changed property `dataSource` (string -> string)

### `PUT` /api/asset/rackPanel/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `status` (string -> string)

    * Changed property `assetTypeId` (string -> string)

    * Changed property `assetTypeCategory` (string -> string)

    * Changed property `dimension` (object -> object)

    * Changed property `assetLifecycleState` (string -> string)

    * Changed property `discoveryState` (string -> string)

    * Changed property `monitoringState` (string -> string)

    * Changed property `sensorMonitoringProfileType` (string -> string)

    * Changed property `muteAlarmEventNotificationsSetting` (object -> object)

    * Changed property `locationData` (object -> object)

    * Changed property `accessState` (string -> string)

    * Changed property `businessEntityAccessState` (string -> string)

### `GET` /api/asset/rackSecurity/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `destinationAssetRackSide` (string -> string)

### `GET` /api/asset/rackSecurity/{locationId}/racks


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `destinationAssetRackSide` (string -> string)

### `PUT` /api/asset/rackShelf/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `status` (string -> string)

    * Changed property `assetTypeId` (string -> string)

    * Changed property `assetTypeCategory` (string -> string)

    * Changed property `dimension` (object -> object)

    * Changed property `assetLifecycleState` (string -> string)

    * Changed property `discoveryState` (string -> string)

    * Changed property `monitoringState` (string -> string)

    * Changed property `sensorMonitoringProfileType` (string -> string)

    * Changed property `muteAlarmEventNotificationsSetting` (object -> object)

    * Changed property `locationData` (object -> object)

    * Changed property `accessState` (string -> string)

    * Changed property `businessEntityAccessState` (string -> string)

### `GET` /api/reportSetting/reportPages/{section}


#### Parameters:

Changed: `section` in `path`
> The report section.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `displayFilters` (string -> string)

### `POST` /api/asset/savedSearches


#### Request:

Changed content type : `application/json`

### `GET` /api/asset/savedSearches


#### Parameters:

Changed: `type` in `query`
> The saved search type.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `source` (string -> string)

    * Changed property `type` (string -> string)

### `GET` /api/asset/savedSearches/global


#### Parameters:

Changed: `type` in `query`
> The saved search type.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `source` (string -> string)

    * Changed property `type` (string -> string)

### `POST` /api/setting/sensorThreshold


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/sensorThreshold


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string -> string)

    * Changed property `comparisonType1` (string -> string)

    * Changed property `comparisonOperator1` (string -> string)

    * Changed property `comparisonAssetPropertyKey1` (string -> string)

    * Changed property `comparisonType2` (string -> string)

    * Changed property `comparisonOperator2` (string -> string)

    * Changed property `comparisonAssetPropertyKey2` (string -> string)

    * Changed property `severity` (string -> string)

    * Changed property `thresholdSource` (string -> string)

### `GET` /api/setting/sensorTypeAssetType


#### Parameters:

Changed: `assetTypeId` in `query`
> Optional asset type to filter what sensor type maps are returned.


Changed: `sensorTypeValueType` in `query`
> Optional sensor type value to filter what sensor types are returned.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `sensorParentType` (string -> string)

    * Changed property `sensorTypeValueType` (string -> string)

### `GET` /api/asset/sensors/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Added property `customSensorStatus` (object)

        Enum values:

        * `ok`
        * `brokenMappings`
    * Changed property `dataSource` (string -> string)

    * Changed property `destinationAssetAccessState` (string -> string)

    * Changed property `destinationAssetRackSide` (string -> string)

    * Changed property `sourceAssetAccessState` (string -> string)

    * Changed property `canBeIndirect` (string -> string)

    * Changed property `sensorAssociationType` (string -> string)

    * Changed property `sensorLinkDataSource` (string -> string)

    * Changed property `directAssetRackSide` (string -> string)

### `GET` /api/asset/sensors/simpleDirect/{assetId}


### `PUT` /api/setting/serviceNowCmdbConfigurationOverview


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/serviceNowCmdbConfigurationOverview


### `PUT` /api/setting/serviceNowCmdbConfigurationSchedule


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/serviceNowCmdbConfigurationSchedule


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `scheduleType` (string -> string)

### `GET` /api/setting/serviceNowCmdbIntegrationFacts


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `integrationAssetFact` (string -> string)

    * Changed property `integrationSimplifiedDataType` (string -> string)

### `PUT` /api/setting/serviceNowCmdbIntegrationFacts


#### Request:

Changed content type : `application/json`

Changed items (object):

* Changed property `integrationAssetFact` (string -> string)

* Changed property `integrationSimplifiedDataType` (string -> string)

### `GET` /api/asset/shelvedAssets/{rackId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `status` (string -> string)

    * Changed property `assetTypeId` (string -> string)

    * Changed property `assetTypeCategory` (string -> string)

    * Changed property `dimension` (object -> object)

    * Changed property `assetLifecycleState` (string -> string)

    * Changed property `discoveryState` (string -> string)

    * Changed property `monitoringState` (string -> string)

    * Changed property `sensorMonitoringProfileType` (string -> string)

    * Changed property `muteAlarmEventNotificationsSetting` (object -> object)

    * Changed property `locationData` (object -> object)

    * Changed property `accessState` (string -> string)

    * Changed property `businessEntityAccessState` (string -> string)

### `GET` /api/asset/software/{id}


### `GET` /api/setting/systemSettings


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string -> string)

### `PUT` /api/setting/systemSettings


#### Request:

Changed content type : `application/json`

Changed items (object):

* Changed property `id` (string -> string)

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string -> string)

### `GET` /api/setting/systemSettings/{systemSettingId}


#### Parameters:

Changed: `systemSettingId` in `path`
> ID of system setting.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `id` (string -> string)

### `GET` /api/setting/systemSettings/dataCollector/{dataCollectorSetting}


#### Parameters:

Changed: `dataCollectorSetting` in `path`
> Name of data collector setting.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `dataCollectorSetting` (string -> string)

### `PUT` /api/user/userConversationHistory


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `POST` /api/user/userConversationHistory


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `DELETE` /api/user/userConversationHistory


### `GET` /api/user/userConversationHistory


### `GET` /api/user/userInboxNotifications/status


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `userInboxNotificationStatus` (string -> string)

### `POST` /api/product/userProductImages/{productId}


#### Request:

Changed content type : `multipart/form-data`

* Changed property `productImagePosition` (string -> string)
    > A product image position.


### `GET` /api/product/userProductImages/{productId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `imagePosition` (string -> string)

### `POST` /api/user/userSearchHistory


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `DELETE` /api/user/userSearchHistory


### `GET` /api/user/userSearchHistory


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `searchType` (string -> string)

### `GET` /api/user/users


### `GET` /api/user/users/accessPolicyUsers/{accessPolicyId}


### `GET` /api/user/users/access/{accessPolicyId}


### `GET` /api/asset/watchedAssets


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `status` (string -> string)

    * Changed property `assetType` (string -> string)

### `GET` /api/asset/widget/assetPropertyListWidget/{assetId}


### `GET` /api/asset/widget/assetLifecycleWidget/{assetId}


### `GET` /api/asset/widget/assetsByTypeWidget/{locationId}


### `GET` /api/asset/widget/assetStatusWidget/{assetId}


### `GET` /api/asset/widget/assetNetworkWidgetIpAddress/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `ipAddress` (object -> object)

    * Changed property `macAddress` (object -> object)

### `POST` /api/setting/alarmEventPolicies


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/alarmEventPolicies


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `severity` (string -> string)

    * Changed property `notificationChannels` (array)

        Changed items (object):

        * Changed property `notificationChannelType` (string -> string)

    * Changed property `sensorThresholds` (array)

        Changed items (object):

        * Changed property `assetTypeId` (string -> string)

        * Changed property `comparisonType1` (string -> string)

        * Changed property `comparisonOperator1` (string -> string)

        * Changed property `comparisonAssetPropertyKey1` (string -> string)

        * Changed property `comparisonType2` (string -> string)

        * Changed property `comparisonOperator2` (string -> string)

        * Changed property `comparisonAssetPropertyKey2` (string -> string)

        * Changed property `severity` (string -> string)

        * Changed property `thresholdSource` (string -> string)

### `DELETE` /api/setting/alarmEventPolicies/{id}


### `PUT` /api/setting/alarmEventPolicies/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `severity` (string -> string)

### `GET` /api/setting/applicationEventLogs


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `ipAddress` (object -> object)

    * Changed property `eventType` (string -> string)

### `GET` /api/asset/assetChangeEventLogs


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `ipAddress` (object -> object)

    * Changed property `eventType` (string -> string)

### `DELETE` /api/asset/assetDashboardSettings/{assetId}


### `PUT` /api/asset/assetDashboardSettings/{assetId}


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `GET` /api/asset/assetDashboardSettings/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string -> string)

### `GET` /api/setting/assetPropertyKeys


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string -> string)

    * Changed property `propertyValueType` (string -> string)

### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `objectType` (string -> string)

### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `objectType` (string -> string)

### `GET` /api/asset/circuitConnections/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `terminationADeviceAssetTypeId` (string -> string)

    * Changed property `terminationAAssetAccessState` (string -> string)

    * Changed property `terminationBDeviceAssetTypeId` (string -> string)

    * Changed property `terminationBAssetAccessState` (string -> string)

    * Changed property `connectionCustomProperties` (array)

        Changed items (object):

        * Changed property `dataType` (string -> string)

        * Changed property `dataSource` (string -> string)

### `DELETE` /api/asset/circuits/{id}


### `GET` /api/asset/circuits/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `sideAConnectionAssetAccessState` (string -> string)

    * Changed property `sideZConnectionAssetAccessState` (string -> string)

    * Changed property `businessEntityAccessState` (string -> string)

### `PUT` /api/asset/circuits/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `customPropertyValues` (array)

        Changed items (object):

        * Changed property `dataType` (string -> string)

### `GET` /api/asset/componentAssets/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string -> string)

    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string -> string)

        * Changed property `dataType` (string -> string)

### `GET` /api/asset/componentAssets/{assetId}/virtualComponents


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string -> string)

    * Changed property `dataSource` (string -> string)

    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string -> string)

        * Changed property `dataType` (string -> string)

        * Changed property `dataSource` (string -> string)

### `GET` /api/asset/componentAssets/{assetId}/networkComponents


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string -> string)

    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string -> string)

        * Changed property `dataType` (string -> string)

### `GET` /api/asset/controlOperations/configuration/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `controlOperationMaps` (array)

        Changed items (object):

        * Changed property `controlOperation` (string -> string)

### `POST` /api/setting/credentials


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/credentials


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `protocol` (string -> string)

    * Changed property `snmpV3Credential` (object -> object)

### `PUT` /api/setting/credentials/{credentialId}


#### Request:

Changed content type : `application/json`

### `DELETE` /api/setting/credentials/{credentialId}


### `GET` /api/setting/credentials/{credentialId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `protocol` (string -> string)

    * Changed property `snmpV3Credential` (object -> object)

### `POST` /api/setting/customPropertySetting


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/customPropertySetting


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `propertyValueType` (string -> string)

### `DELETE` /api/setting/customPropertySetting/{customPropertySettingId}


### `PUT` /api/setting/customPropertySetting/{customPropertySettingId}


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `propertyValueType` (string -> string)

### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/discoveryProtocolSettings/protocolCredentials


#### Parameters:

Changed: `protocolId` in `query`
> A protocol ID.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `protocol` (string -> string)

    * Changed property `snmpV3Credential` (object -> object)

### `GET` /api/layout/floorPlanLayout/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Added property `columnTemplate` (string)

    * Added property `rowTemplate` (string)

    * Changed property `imageFormat` (string -> string)

    * Changed property `assets` (array)

        Changed items (object):

        * Changed property `mountLocationType` (string -> string)

        * Changed property `assetType` (string -> string)

        * Changed property `direction` (string -> string)

        * Changed property `flip` (string -> string)

        * Changed property `shapeType` (string -> string)

        * Changed property `accessState` (string -> string)

    * Changed property `newRacks` (array)

        Changed items (object):

        * Changed property `mountLocationType` (string -> string)

        * Changed property `assetType` (string -> string)

        * Changed property `direction` (string -> string)

        * Changed property `flip` (string -> string)

        * Changed property `shapeType` (string -> string)

        * Changed property `accessState` (string -> string)

    * Changed property `shapes` (array)

        Changed items (object):

        * Changed property `shapeType` (string -> string)

        * Changed property `direction` (string -> string)

        * Changed property `flip` (string -> string)

        * Changed property `mountLocationType` (string -> string)

    * Changed property `state` (array)

        Changed items (object):

        * Changed property `assetType` (string -> string)

        * Changed property `accessState` (string -> string)

### `GET` /api/layout/floorPlanLayoutGridInformation/{locationId}


### `GET` /api/setting/license


### `POST` /api/setting/modbusTcpDefinitions


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/modbusTcpDefinitions


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type to filter the results.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string -> string)

### `PUT` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Request:

Changed content type : `application/json`

### `DELETE` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


### `GET` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetType` (string -> string)

### `POST` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `registerType` (string -> string)

    * Changed property `dataType` (string -> string)

### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNonNumericSensorId}


### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNonNumericSensorId}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `registerType` (string -> string)

    * Changed property `dataType` (string -> string)

### `GET` /api/asset/monitorOnlyCommunicationSetting/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `sensorMonitoringProfileType` (string -> string)

    * Changed property `monitoringState` (string -> string)

    * Changed property `ipAddress` (object -> object)

### `PUT` /api/asset/monitorOnlyCommunicationSetting/{assetId}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `sensorMonitoringProfileType` (string -> string)

    * Changed property `monitoringState` (string -> string)

    * Changed property `ipAddress` (object -> object)

### `DELETE` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalConnections/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `terminationADeviceAssetTypeId` (string -> string)

    * Changed property `terminationADeviceAssetAccessState` (string -> string)

    * Changed property `terminationBDeviceAssetTypeId` (string -> string)

    * Changed property `terminationBDeviceAssetAccessState` (string -> string)

    * Changed property `businessEntityAccessState` (string -> string)

### `PUT` /api/asset/physicalConnections/{id}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `customPropertyValues` (array)

        Changed items (object):

        * Changed property `dataType` (string -> string)

### `GET` /api/asset/physicalPorts/detailed/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `physicalPortConnections` (array)

        Changed items (object):

        * Changed property `terminationAAssetAccessState` (string -> string)

        * Changed property `terminationAAssetTypeId` (string -> string)

        * Changed property `terminationADeviceAssetTypeId` (string -> string)

        * Changed property `terminationBAssetAccessState` (string -> string)

        * Changed property `terminationBAssetTypeId` (string -> string)

        * Changed property `terminationBDeviceAssetTypeId` (string -> string)

        * Changed property `accessState` (string -> string)

### `GET` /api/asset/powerPath/{assetId}/ancestry


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `powerPathDeviceAssets` (array)

        Changed items (object):

        * Changed property `accessState` (string -> string)

### `GET` /api/product/productPropertyKeys/{productTypeId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `propertyValueType` (string -> string)

### `POST` /api/product/products


#### Request:

Changed content type : `application/json`

### `GET` /api/product/products


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataSource` (string -> string)

### `DELETE` /api/product/products/{id}


### `PUT` /api/product/products/{id}


#### Request:

Changed content type : `application/json`

### `GET` /api/product/products/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `dataSource` (string -> string)

### `POST` /api/asset/search


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `POST` /api/asset/search/sensors


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

### `GET` /api/asset/sensorsDailySummaries/numeric


### `GET` /api/asset/sensorsDailySummaries/numeric/{timeRange}


#### Parameters:

Changed: `timeRange` in `path`
> A time range for the data.


### `GET` /api/asset/sensorsDailySummaries/string


### `GET` /api/asset/sensorsDailySummaries/string/{timeRange}


#### Parameters:

Changed: `timeRange` in `path`
> A time range for the data.


### `GET` /api/asset/sensorsDataPoints/numeric


### `GET` /api/asset/sensorsDataPoints/numeric/{timeRange}


#### Parameters:

Changed: `timeRange` in `path`
> A time range for the data.


### `GET` /api/asset/sensorsDataPoints/string


### `GET` /api/asset/sensorsDataPoints/string/{timeRange}


#### Parameters:

Changed: `timeRange` in `path`
> A time range for the data.


### `PUT` /api/setting/serviceNowCmdbIntegrationAssetType


#### Request:

Changed content type : `application/json`

### `GET` /api/setting/serviceNowCmdbIntegrationAssetType


### `GET` /api/asset/workNotes/asset/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `importance` (string -> string)

    * Changed property `workNoteDocuments` (array)

        Changed items (object):

        * Changed property `documentType` (string -> string)

### `DELETE` /api/asset/workNotes/{workNoteId}


### `PUT` /api/asset/workNotes/{workNoteId}


#### Request:

Changed content type : `application/json`

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `importance` (string -> string)

### `GET` /api/asset/workNotes/{workNoteId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `importance` (string -> string)

    * Changed property `workNoteDocuments` (array)

        Changed items (object):

        * Changed property `documentType` (string -> string)

### `DELETE` /api/asset/workOrders/{workOrderId}


### `GET` /api/asset/workOrders/{workOrderId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `workOrderTypeId` (string -> string)

    * Changed property `status` (string -> string)

    * Changed property `result` (array)

        Changed items (object):

        * Changed property `status` (string -> string)

### `GET` /api/asset/workOrders/serviceNowCmdbSyncNow/{workOrderId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `workOrderTypeId` (string -> string)

    * Changed property `status` (string -> string)

    * Changed property `serviceNowCmdbIntegrationWorkOrderStatus` (string -> string)

    * Changed property `result` (array)

        Changed items (object):

        * Changed property `status` (string -> string)

### `GET` /api/asset/workOrders/serviceNowCmdbScheduledSync/{workOrderId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `workOrderTypeId` (string -> string)

    * Changed property `status` (string -> string)

    * Changed property `serviceNowCmdbIntegrationWorkOrderStatus` (string -> string)

    * Changed property `result` (array)

        Changed items (object):

        * Changed property `status` (string -> string)

### `POST` /api/asset/search/multiple


#### Request:

Changed content type : `application/json`

Changed content type : `text/json`

Changed content type : `application/*+json`

## Result


API changes broke backward compatibility

