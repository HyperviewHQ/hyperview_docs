# API Changelog 5.3 to 5.4

## What's New

### `POST` /api/asset/bulk/sensors/updateAccessPolicy

> Updates associations between a single access policy and many sensors.


### `POST` /api/asset/bulk/sensors/delete

> Deletes multiple sensors.


### `POST` /api/asset/bulk/sensors/resetAccessPolicy

> Resets access policy for multiple sensors.


### `GET` /api/asset/controlOperations/configuration/{assetId}

> Returns an asset's control operation configuration.


## What's Changed

### `PUT` /api/asset/alarmEvents/close/{alarmEventId}


### `PUT` /api/asset/alarmEvents/bulkClose


### `DELETE` /api/asset/assetTrackerMasterModuleData/{id}


### `GET` /api/layout/backgroundImages/{id}


### `DELETE` /api/layout/backgroundImages/{id}


### `DELETE` /api/asset/businessEntityAssociations/asset/{assetId}


### `DELETE` /api/asset/circuitConnections/{circuitId}/connections/{connectionId}


### `GET` /api/asset/controlDataCollector/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

### `POST` /api/setting/dataCollectorToken


### `DELETE` /api/asset/directSensorMap/{sensorId}


### `DELETE` /api/setting/discoveryProtocolSettings/ports/{portId}


### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials/{protocolCredentialId}


### `DELETE` /api/setting/discoveryProtocolSettings/protocolCredentials/{protocolCredentialId}


### `POST` /api/setting/discoveryRunner/{discoveryId}


### `POST` /api/setting/discoveryRunner/{discoveryId}/abort


### `GET` /api/setting/documentAccessPolicies/{documentId}


### `PUT` /api/setting/documentAccessPolicies/{documentId}


### `DELETE` /api/asset/documentAssociations/{assetDocumentAssociationId}


### `DELETE` /api/setting/equinixSmartViewIbxConfigurations/{configurationId}


### `GET` /api/product/firmwareDownload/installFile/{firmwareVersionId}


### `GET` /api/product/firmwareDownload/releaseNote/{firmwareVersionId}


### `GET` /api/layout/floorPlanLayout/racksInRow/{rackId}


### `DELETE` /api/asset/indirectSensors/{sensorId}


### `PUT` /api/asset/manualSensors/numericSensor/{sensorId}/value


### `POST` /api/asset/monitorOnlyCommunicationSetting/{assetId}/refreshSensors


### `DELETE` /api/asset/muteAlarmEventNotifications/{id}


### `PUT` /api/asset/pduBreakers/breakerStatus/{pduBreakerId}


### `DELETE` /api/asset/powerSourceAssociations/{id}


### `POST` /api/product/products/{id}/clone


### `DELETE` /api/asset/rackPanel/{assetId}/blankingPanels


### `DELETE` /api/asset/rackPanel/{assetId}/cableManagement


### `GET` /api/layout/rackSearch


### `DELETE` /api/asset/savedSearches/user/{id}


### `DELETE` /api/asset/savedSearches/global/{id}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}/enabledState


### `DELETE` /api/asset/sensors/{id}


### `PUT` /api/setting/serviceNowCmdbIntegration/resetLastSyncDate


### `PUT` /api/setting/serviceNowCmdbIntegration/initiateSync


### `DELETE` /api/user/userConversationHistory/{userConversationHistoryId}


### `GET` /api/user/userInboxNotifications/{userInboxNotificationId}


### `DELETE` /api/product/userProductImages/{id}


### `DELETE` /api/user/userSearchHistory/{userSearchHistoryId}


### `GET` /api/asset/webInterfaceAddress/{assetId}


### `DELETE` /api/asset/workNoteDocuments/{workNoteDocumentId}


### `POST` /api/asset/workOrderItemStatuses/manuallyComplete


### `DELETE` /api/asset/workOrders/completed


### `POST` /api/asset/workOrders/manuallyCompleteWorkOrder/{workOrderId}


### `GET` /api/setting/accessPolicies


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Added property `associatedSensorsCount` (integer)

### `POST` /api/setting/accessPolicies


#### Request:

Changed content type : `application/json`

* Added property `associatedSensorsCount` (integer)

### `DELETE` /api/setting/accessPolicies/{accessPolicyId}


### `PUT` /api/setting/accessPolicies/{accessPolicyId}


#### Request:

Changed content type : `application/json`

* Added property `associatedSensorsCount` (integer)

### `GET` /api/asset/accessPolicies/{assetId}


### `PUT` /api/asset/accessPolicies/{assetId}


### `GET` /api/setting/accessPolicyGroups


### `GET` /api/setting/accessPolicyGroups/{accessPolicyId}


### `PUT` /api/asset/alarmEvents/acknowledgementState/{alarmEventId}


### `POST` /api/asset/assetFirmware


### `GET` /api/asset/assetPropertyValues/strings/{assetPropertyKey}


### `GET` /api/asset/availableFirmwareVersions/{assetId}


### `GET` /api/asset/availablePowerSources/outlets/{id}


### `GET` /api/asset/availablePowerSources/pduBreakers/{id}


### `GET` /api/asset/availablePowerSources/buswayTapOffs/{id}


### `GET` /api/asset/availableRackSpace/{id}


### `GET` /api/asset/availableRackSpace/{id}/sensors/{sensorId}


### `POST` /api/asset/bulk/assets/delete


### `POST` /api/asset/bulk/assets/addDocumentAssociation


### `POST` /api/asset/bulk/assets/removeDocumentAssociation


### `POST` /api/asset/bulk/assets/createEventNotificationRecipient


### `POST` /api/asset/bulk/assets/removeEventNotificationRecipient


### `POST` /api/asset/bulk/assets/disableMonitoring


### `POST` /api/asset/bulk/assets/enableMonitoring


### `POST` /api/asset/bulk/assets/updateControlCredentials


### `POST` /api/asset/bulk/assets/updateAccessPolicy


### `POST` /api/asset/bulk/assets/updateProduct


### `POST` /api/asset/bulk/assets/updateFirmwareControlCredentials


### `POST` /api/asset/bulk/assets/updateAssetsControlDataCollectorAssociation


### `POST` /api/asset/bulk/assets/updateDescendantsAccessPolicies


### `POST` /api/asset/bulk/assets/updatePhysicalPortNames


### `POST` /api/asset/bulk/assets/addPhysicalPorts


### `POST` /api/asset/bulk/assets/addPhysicalPort


### `POST` /api/asset/bulk/assets/addPatchPanelPhysicalPorts


### `POST` /api/asset/bulk/assets/addPatchPanelPhysicalPort


### `POST` /api/asset/bulk/assets/updateBusinessEntityAssociation


### `POST` /api/asset/bulk/assets/muteAlarmEventNotifications


### `POST` /api/asset/bulk/assets/cancelMuteAlarmEventNotifications


### `POST` /api/asset/businessEntities


### `DELETE` /api/asset/businessEntities/{id}


### `GET` /api/asset/businessEntities/{id}


### `PUT` /api/asset/businessEntities/{id}


### `GET` /api/asset/businessEntityAddresses/{businessEntityId}


### `POST` /api/asset/businessEntityAddresses


### `DELETE` /api/asset/businessEntityAddresses/{id}


### `PUT` /api/asset/businessEntityAddresses/{id}


### `GET` /api/asset/businessEntityContacts/{businessEntityId}


### `POST` /api/asset/businessEntityContacts


### `DELETE` /api/asset/businessEntityContacts/{id}


### `PUT` /api/asset/businessEntityContacts/{id}


### `POST` /api/asset/buswayTapOff


### `DELETE` /api/asset/buswayTapOff/{buswayTapOffId}


### `PUT` /api/asset/buswayTapOff/{buswayTapOffId}


### `POST` /api/asset/circuitConnections


### `PUT` /api/asset/controlOperations


### `GET` /api/setting/credentials/{credentialId}/showPassword


### `GET` /api/asset/customComponents/assetPropertyValueStrings


### `GET` /api/setting/customPropertyGroup


### `POST` /api/setting/customPropertyGroup


### `DELETE` /api/setting/customPropertyGroup/{customPropertyGroupId}


### `PUT` /api/setting/customPropertyGroup/{customPropertyGroupId}


### `GET` /api/setting/dataCollector


### `POST` /api/setting/dataCollector/retire


### `GET` /api/asset/dataCollectors/{assetId}


### `POST` /api/asset/documentAssociations


### `GET` /api/setting/documents/{documentId}


### `DELETE` /api/setting/documents/{documentId}


### `PUT` /api/setting/documents/{documentId}


### `POST` /api/setting/documents


### `GET` /api/asset/enumAssetProperties/{id}


### `GET` /api/setting/enumCustomAssetProperties/{customAssetPropertyKeyId}


### `GET` /api/setting/equinixSmartViewConfiguration


### `PUT` /api/setting/equinixSmartViewConfiguration


### `PUT` /api/setting/equinixSmartViewConfiguration/verifyAuthenticationConfiguration


### `GET` /api/setting/equinixSmartViewIbxConfigurations


### `POST` /api/setting/equinixSmartViewIbxConfigurations


### `PUT` /api/setting/equinixSmartViewIbxConfigurations/{id}


### `PUT` /api/setting/equinixSmartViewIntegration/initiateSync


### `POST` /api/asset/eventNotificationRecipient/{assetId}


### `DELETE` /api/asset/eventNotificationRecipient/{assetId}


### `GET` /api/asset/eventNotificationRecipient/{assetId}


### `GET` /api/product/firmwareVersions/{firmwareVersionId}


### `GET` /api/product/firmwareVersions/firmware/{firmwareId}


### `GET` /api/product/image


### `POST` /api/asset/manualSensors


### `GET` /api/product/manufacturers


### `POST` /api/product/manufacturers


### `DELETE` /api/product/manufacturers/{id}


### `GET` /api/product/manufacturers/{id}


### `PUT` /api/product/manufacturers/{id}


### `POST` /api/asset/merge


### `POST` /api/asset/muteAlarmEventNotifications


### `PUT` /api/asset/pduBreakers/{pduBreakerId}


### `POST` /api/asset/physicalPorts


### `POST` /api/asset/physicalPorts/patchPanel


### `PUT` /api/asset/physicalPorts/multiple


### `POST` /api/asset/physicalPorts/multiple


### `DELETE` /api/asset/physicalPorts/multiple


### `PUT` /api/asset/physicalPorts/patchPanel/multiple


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


### `POST` /api/asset/search


### `GET` /api/asset/sensors/simpleDirect/{assetId}


### `PUT` /api/asset/sensors


#### Request:

Changed content type : `application/json`

* Added property `accessPolicyId` (string)

### `GET` /api/setting/serviceNowCmdbConfigurationOverview


### `PUT` /api/setting/serviceNowCmdbConfigurationOverview


### `PUT` /api/setting/serviceNowCmdbIntegration/verifyAuthenticationConfiguration


### `GET` /api/asset/software/{id}


### `DELETE` /api/user/userConversationHistory


### `GET` /api/user/userConversationHistory


### `PUT` /api/user/userConversationHistory


### `POST` /api/user/userConversationHistory


### `GET` /api/user/users


### `GET` /api/user/users/accessPolicyUsers/{accessPolicyId}


### `GET` /api/user/users/access/{accessPolicyId}


### `GET` /api/asset/widget/assetPropertyListWidget/{assetId}


### `GET` /api/asset/widget/assetLifecycleWidget/{assetId}


### `GET` /api/asset/widget/assetsByTypeWidget/{locationId}


### `GET` /api/asset/widget/assetStatusWidget/{assetId}


### `DELETE` /api/setting/alarmEventPolicies/{id}


### `PUT` /api/setting/alarmEventPolicies/{id}


### `PUT` /api/asset/alarmEvents/bulkAcknowledgementStates


### `GET` /api/asset/ancestors/{assetId}


### `DELETE` /api/asset/assetDashboardSettings/{assetId}


### `PUT` /api/asset/assetDashboardSettings/{assetId}


### `GET` /api/asset/assetDashboardSettings/{assetId}


### `DELETE` /api/asset/assetProperties/{id}


### `GET` /api/asset/assetProperties/{id}


### `PUT` /api/asset/assetProperties/{id}


### `GET` /api/asset/assetProperties/{id}/{assetPropertyKey}


### `POST` /api/asset/assetProperties


### `GET` /api/setting/assetPropertyKeys


### `GET` /api/asset/assetTrackerMasterModuleData


### `GET` /api/asset/assetTree/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `ancestorIds` (array)

        Changed items (string):

### `GET` /api/asset/assetTypeCount


### `DELETE` /api/setting/assetTypeDashboardSettings/{assetType}


### `PUT` /api/setting/assetTypeDashboardSettings/{assetType}


### `POST` /api/layout/backgroundImages


### `GET` /api/layout/backgroundImages


### `GET` /api/setting/bacnetIpDefinitions


### `POST` /api/setting/bacnetIpDefinitions


### `DELETE` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `GET` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `PUT` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


### `POST` /api/asset/bulk/assets/updateCustomProperty


### `POST` /api/asset/bulk/assets/updateLifecycle


### `POST` /api/asset/bulk/assets/updateAssetProperty


### `GET` /api/asset/buswayTapOff/{assetId}


### `POST` /api/asset/control/rackDoorElectronicLock


### `DELETE` /api/asset/customAssetProperties/{id}


### `GET` /api/asset/customAssetProperties/{id}


### `PUT` /api/asset/customAssetProperties/{id}


### `GET` /api/asset/customAssetProperties/{id}/customPropertyValue


### `GET` /api/asset/customAssetProperties/{id}/children/customPropertyValue


### `POST` /api/asset/customComponents


### `DELETE` /api/asset/customComponents/{id}


### `PUT` /api/asset/customComponents/{id}


### `GET` /api/setting/customPropertySetting


### `POST` /api/setting/customPropertySetting


### `DELETE` /api/setting/customPropertySetting/{customPropertySettingId}


### `PUT` /api/setting/customPropertySetting/{customPropertySettingId}


### `POST` /api/asset/directSensorMap


### `GET` /api/setting/discoveries


### `POST` /api/setting/discoveries


### `GET` /api/setting/discoveries/{id}


### `DELETE` /api/setting/discoveries/{discoveryId}


### `PUT` /api/setting/discoveries/{discoveryId}


### `GET` /api/setting/discoveries/{discoveryId}/schedule


### `GET` /api/setting/discoveryAssetHistories/{discoveryHistoryId}


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


### `GET` /api/asset/documentAssociations/assets/{documentId}


### `GET` /api/setting/documentDetails/{documentDetailsId}


### `GET` /api/setting/documentDetails


### `GET` /api/layout/floorPlanLayout/childrenState/{id}


### `GET` /api/layout/floorPlanLayout/{id}/floorAssets/customPropertyValue


### `GET` /api/layout/floorPlanLayoutGridInformation/{locationId}


### `GET` /api/asset/hierarchy


### `POST` /api/asset/indirectSensors


### `GET` /api/layout/layoutModeSetting/{locationId}


### `PUT` /api/layout/layoutModeSetting


### `POST` /api/layout/layoutModeSetting


### `GET` /api/setting/license


### `GET` /api/asset/lifecycleProperties/{assetId}


### `PUT` /api/asset/lifecycleProperties/{assetId}


### `PUT` /api/asset/location/{id}


### `GET` /api/layout/mapLocations/{locationId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Added property `businessEntityId` (string)

    * Added property `businessEntityDisplayName` (string)

### `GET` /api/layout/mapLocations/{locationId}/customPropertyValues


### `GET` /api/setting/modbusTcpDefinitions


### `POST` /api/setting/modbusTcpDefinitions


### `DELETE` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


### `GET` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


### `PUT` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


### `GET` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}


### `POST` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}


### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNonNumericSensorId}


### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNonNumericSensorId}


### `GET` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}


### `POST` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}


### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNumericSensorId}


### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNumericSensorId}


### `GET` /api/setting/notificationChannels


### `POST` /api/setting/notificationChannels


### `DELETE` /api/setting/notificationChannels/{id}


### `PUT` /api/setting/notificationChannels/{id}


### `PUT` /api/setting/notificationChannels/test


### `GET` /api/asset/outlets


### `POST` /api/asset/outletsControl


### `GET` /api/asset/pduBreakers


### `GET` /api/asset/powerPath/{assetId}/children


### `POST` /api/asset/powerSourceAssociations


### `GET` /api/asset/powerSourceAssociations


### `GET` /api/product/productPropertyKeys/{productTypeId}


### `GET` /api/product/products


### `POST` /api/product/products


### `GET` /api/product/products/smartMatch


### `DELETE` /api/product/products/{id}


### `PUT` /api/product/products/{id}


### `GET` /api/product/products/{id}


### `POST` /api/asset/rackPanel


### `GET` /api/asset/rackSecurity/{assetId}


### `GET` /api/asset/rackSecurity/{locationId}/racks


### `GET` /api/reportSetting/reportPages/{section}


### `GET` /api/asset/savedSearches


### `POST` /api/asset/savedSearches


### `GET` /api/asset/savedSearches/global


### `GET` /api/setting/sensorThreshold


### `POST` /api/setting/sensorThreshold


### `DELETE` /api/setting/sensorThreshold/{sensorThresholdId}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}


### `GET` /api/setting/sensorTypeAssetType


### `GET` /api/asset/sensors/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Added property `sourceAssetAccessState` (string)

        Enum values:

        * `full`
        * `ancestorPlaceholder`
        * `containedAssetPlaceholder`
        * `floorPlanLayoutAssetPlaceholder`
        * `powerPathAssetPlaceholder`
        * `consumingPowerAssetPlaceholder`
        * `sensorIndirectParentPlaceholder`
        * `workOrderAssetStatusPlaceholder`
        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
        * `circuitSideAssetPlaceholder`
        * `businessEntityAssetPlaceHolder`
    * Added property `accessPolicyId` (string)

    * Added property `accessPolicyName` (string)

    * Added property `assetAccessPolicyId` (string)

    * Added property `accessPolicyIsInherited` (boolean)

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


### `PUT` /api/setting/serviceNowCmdbIntegrationAssetType


### `GET` /api/setting/serviceNowCmdbIntegrationFacts


### `PUT` /api/setting/serviceNowCmdbIntegrationFacts


### `GET` /api/setting/systemSettings


### `PUT` /api/setting/systemSettings


### `GET` /api/setting/systemSettings/{systemSettingId}


### `GET` /api/setting/systemSettings/dataCollector/{dataCollectorSetting}


### `PUT` /api/setting/systemSettings/dataCollector


### `GET` /api/user/userInboxNotifications/status


### `DELETE` /api/user/userInboxNotifications


### `PUT` /api/user/userInboxNotifications


### `POST` /api/product/userProductImages/{productId}


### `GET` /api/product/userProductImages/{productId}


### `DELETE` /api/user/userSearchHistory


### `GET` /api/user/userSearchHistory


### `POST` /api/user/userSearchHistory


### `GET` /api/asset/watchedAssets


### `POST` /api/asset/workNotes


### `POST` /api/setting/alarmEventPolicies


### `GET` /api/setting/alarmEventPolicies


### `GET` /api/setting/applicationEventLogs


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `bulkActionSensorNotPerformed`
        * `sensorAccessPolicyUpdated`
        * `sensorAccessPolicyReset`
        * `sensorAccessPolicyOverridden`
### `GET` /api/asset/assetChangeEventLogs


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `bulkActionSensorNotPerformed`
        * `sensorAccessPolicyUpdated`
        * `sensorAccessPolicyReset`
        * `sensorAccessPolicyOverridden`
### `GET` /api/asset/assetTrackerContainedAssets


### `DELETE` /api/asset/assets/{id}


### `GET` /api/asset/assets/{id}


### `PUT` /api/asset/assets/{id}


### `GET` /api/asset/circuitConnections/{id}


### `POST` /api/asset/circuits


### `DELETE` /api/asset/circuits/{id}


### `GET` /api/asset/circuits/{id}


### `PUT` /api/asset/circuits/{id}


### `GET` /api/asset/componentAssets/{assetId}


### `GET` /api/asset/componentAssets/{assetId}/virtualComponents


### `GET` /api/asset/componentAssets/{assetId}/networkComponents


### `GET` /api/asset/containedAssets/elevation/{parentId}


### `GET` /api/setting/credentials


### `POST` /api/setting/credentials


### `DELETE` /api/setting/credentials/{credentialId}


### `GET` /api/setting/credentials/{credentialId}


### `PUT` /api/setting/credentials/{credentialId}


### `GET` /api/asset/discoveryReport/{assetId}


### `GET` /api/layout/floorPlanLayout/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `newRacks` (array)

        Changed items (object):

        * Added property `businessEntityId` (string)

        * Added property `businessEntityDisplayName` (string)

    * Changed property `assets` (array)

        Changed items (object):

        * Added property `businessEntityId` (string)

        * Added property `businessEntityDisplayName` (string)

### `PUT` /api/layout/floorPlanLayout


#### Request:

Changed content type : `application/json`

* Changed property `newRacks` (array)

    Changed items (object):

    * Added property `businessEntityId` (string)

    * Added property `businessEntityDisplayName` (string)

* Changed property `assets` (array)

    Changed items (object):

    * Added property `businessEntityId` (string)

    * Added property `businessEntityDisplayName` (string)

### `GET` /api/asset/monitorOnlyCommunicationSetting/{assetId}


### `PUT` /api/asset/monitorOnlyCommunicationSetting/{assetId}


### `GET` /api/asset/networkHosts/{assetId}


### `POST` /api/asset/physicalConnections


### `DELETE` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalConnections/{id}


### `PUT` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalPorts/detailed/{assetId}


### `GET` /api/asset/powerPath/{assetId}/ancestry


### `PUT` /api/asset/rackPanel/{id}


### `PUT` /api/asset/rackShelf/{id}


### `GET` /api/asset/shelvedAssets/{rackId}


### `GET` /api/asset/widget/assetNetworkWidgetIpAddress/{assetId}


### `GET` /api/asset/workNotes/asset/{assetId}


### `DELETE` /api/asset/workNotes/{workNoteId}


### `PUT` /api/asset/workNotes/{workNoteId}


### `GET` /api/asset/workNotes/{workNoteId}


### `DELETE` /api/asset/workOrders/{workOrderId}


### `GET` /api/asset/workOrders/{workOrderId}


### `GET` /api/asset/workOrders/serviceNowCmdbSyncNow/{workOrderId}


### `GET` /api/asset/workOrders/serviceNowCmdbScheduledSync/{workOrderId}


### `GET` /api/asset/assets


### `POST` /api/asset/assets


### `GET` /api/asset/controlOperations/{assetId}


### `GET` /api/setting/discoveryProtocolSettings/protocolCredentials


### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials


