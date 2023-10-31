# API Changelog 4.0 to 4.1

## What's New

### `GET` /api/setting/equinixSmartViewConfiguration

> Returns the Equinix Smart View integration configuration.


### `PUT` /api/setting/equinixSmartViewConfiguration

> Saves the Smart View integration configuration changes.


### `PUT` /api/setting/equinixSmartViewConfiguration/verifyAuthenticationConfiguration

> Verifies the Smart View integration authentication configuration.


### `GET` /api/setting/equinixSmartViewIbxConfigurations

> Returns a collection of Equinix Smart View IBX configurations.


### `POST` /api/setting/equinixSmartViewIbxConfigurations

> Creates an Equinix Smart View IBX configuration.


### `DELETE` /api/setting/equinixSmartViewIbxConfigurations/{configurationId}

> Deletes an Equinix Smart View IBX configuration.


### `PUT` /api/setting/equinixSmartViewIbxConfigurations/{id}

> Updates an Equinix Smart View IBX configuration.


### `PUT` /api/setting/equinixSmartViewIntegration/initiateSync

> Initiates multiple Equinix Smart View integration IBX syncs.


### `GET` /api/asset/webInterfaceAddress/{assetId}

> Returns the web interface address.


## What's Changed

### `PUT` /api/asset/alarmEvents/close/{alarmEventId}


### `PUT` /api/asset/alarmEvents/bulkClose


### `DELETE` /api/asset/assetTrackerMasterModuleData/{id}


### `GET` /api/layout/backgroundImages/{id}


### `DELETE` /api/layout/backgroundImages/{id}


### `DELETE` /api/asset/circuitConnections/{circuitId}/connections/{connectionId}


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


### `GET` /api/user/userInboxNotifications/{userInboxNotificationId}


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


### `GET` /api/setting/accessPolicyGroups


### `GET` /api/setting/accessPolicyGroups/{accessPolicyId}


### `PUT` /api/asset/alarmEvents/acknowledgementState/{alarmEventId}


### `POST` /api/asset/assetFirmware


### `GET` /api/asset/assetPropertyValues/strings/{assetPropertyKey}


#### Parameters:

Changed: `assetPropertyKey` in `path`
> A asset property key.


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


### `POST` /api/asset/buswayTapOff


### `DELETE` /api/asset/buswayTapOff/{buswayTapOffId}


### `PUT` /api/asset/buswayTapOff/{buswayTapOffId}


### `POST` /api/asset/circuitConnections


### `PUT` /api/asset/controlOperations


### `GET` /api/setting/credentials/{credentialId}/showPassword


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


### `POST` /api/setting/documents


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


### `GET` /api/asset/sensors/simpleDirect/{assetId}


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


### `POST` /api/setting/alarmEventPolicies


### `DELETE` /api/setting/alarmEventPolicies/{id}


### `PUT` /api/setting/alarmEventPolicies/{id}


### `PUT` /api/asset/alarmEvents/bulkAcknowledgementStates


### `GET` /api/asset/ancestors/{assetId}


### `DELETE` /api/asset/assetDashboardSettings/{assetId}


### `PUT` /api/asset/assetDashboardSettings/{assetId}


### `GET` /api/asset/assetDashboardSettings/{assetId}


### `DELETE` /api/asset/assetProperties/{id}


### `GET` /api/asset/assetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `type` (string)

        Added enum values:

        * `smartViewLocationType`
        * `smartViewLevelValue`
        * `smartViewAccountNumber`
        * `smartViewIbx`
        * `locationAverageTemperatureSetting`
        * `locationAverageHumiditySetting`
        * `webPortalLaunchUrl`
    * Changed property `dataSource` (string)

        Added enum value:

        * `smartView`
### `PUT` /api/asset/assetProperties/{id}


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum values:

    * `smartViewLocationType`
    * `smartViewLevelValue`
    * `smartViewAccountNumber`
    * `smartViewIbx`
    * `locationAverageTemperatureSetting`
    * `locationAverageHumiditySetting`
    * `webPortalLaunchUrl`
* Changed property `dataSource` (string)

    Added enum value:

    * `smartView`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum values:

        * `smartViewLocationType`
        * `smartViewLevelValue`
        * `smartViewAccountNumber`
        * `smartViewIbx`
        * `locationAverageTemperatureSetting`
        * `locationAverageHumiditySetting`
        * `webPortalLaunchUrl`
    * Changed property `dataSource` (string)

        Added enum value:

        * `smartView`
### `POST` /api/asset/assetProperties


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum values:

    * `smartViewLocationType`
    * `smartViewLevelValue`
    * `smartViewAccountNumber`
    * `smartViewIbx`
    * `locationAverageTemperatureSetting`
    * `locationAverageHumiditySetting`
    * `webPortalLaunchUrl`
* Changed property `dataSource` (string)

    Added enum value:

    * `smartView`
#### Return Type:

Changed response : **201 Created**
> Created


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum values:

        * `smartViewLocationType`
        * `smartViewLevelValue`
        * `smartViewAccountNumber`
        * `smartViewIbx`
        * `locationAverageTemperatureSetting`
        * `locationAverageHumiditySetting`
        * `webPortalLaunchUrl`
    * Changed property `dataSource` (string)

        Added enum value:

        * `smartView`
### `GET` /api/setting/assetPropertyKeys


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum values:

        * `smartViewLocationType`
        * `smartViewLevelValue`
        * `smartViewAccountNumber`
        * `smartViewIbx`
        * `locationAverageTemperatureSetting`
        * `locationAverageHumiditySetting`
        * `webPortalLaunchUrl`
### `GET` /api/asset/assetTree/{assetId}


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


#### Request:

Changed content type : `application/json`

* Changed property `assetPropertyKeyId` (string)

    Added enum values:

    * `smartViewLocationType`
    * `smartViewLevelValue`
    * `smartViewAccountNumber`
    * `smartViewIbx`
    * `locationAverageTemperatureSetting`
    * `locationAverageHumiditySetting`
    * `webPortalLaunchUrl`
### `GET` /api/asset/buswayTapOff/{assetId}


### `POST` /api/asset/control/rackDoorElectronicLock


### `DELETE` /api/asset/customAssetProperties/{id}


### `GET` /api/asset/customAssetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataSource` (string)

        Added enum value:

        * `smartView`
### `PUT` /api/asset/customAssetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `dataSource` (string)

        Added enum value:

        * `smartView`
### `POST` /api/asset/customComponents


### `DELETE` /api/asset/customComponents/{id}


### `PUT` /api/asset/customComponents/{id}


### `GET` /api/setting/customPropertySetting


### `POST` /api/setting/customPropertySetting


### `DELETE` /api/setting/customPropertySetting/{customPropertySettingId}


### `PUT` /api/setting/customPropertySetting/{customPropertySettingId}


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


#### Parameters:

Changed: `protocolId` in `query`
> A protocol ID.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `protocolId` (string)

        Added enum value:

        * `smartView`
### `POST` /api/setting/discoveryProtocolSettings/ports


#### Request:

Changed content type : `application/json`

* Changed property `protocolId` (string)

    Added enum value:

    * `smartView`
### `GET` /api/setting/discoveryProtocolSettings/protocols


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum value:

        * `smartView`
### `PUT` /api/setting/discoveryProtocolSettings/protocols


#### Request:

Changed content type : `application/json`

* Changed property `id` (string)

    Added enum value:

    * `smartView`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `id` (string)

        Added enum value:

        * `smartView`
### `GET` /api/setting/discoveryProtocolSettings/protocols/{protocolId}


#### Parameters:

Changed: `protocolId` in `path`
> A protocol ID.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `id` (string)

        Added enum value:

        * `smartView`
### `GET` /api/setting/discoveryRanges


### `POST` /api/setting/discoveryRanges


### `DELETE` /api/setting/discoveryRanges/{id}


### `PUT` /api/setting/discoveryRanges/{id}


### `POST` /api/setting/discoverySchedules


### `DELETE` /api/setting/discoverySchedules/{discoveryScheduleId}


### `PUT` /api/setting/discoverySchedules/{discoveryScheduleId}


### `GET` /api/asset/documentAssociations/documentDetails/{assetId}


### `GET` /api/setting/documentDetails/{documentDetailsId}


### `GET` /api/setting/documentDetails


### `GET` /api/layout/floorPlanLayout/childrenState/{id}


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

    * Changed property `comparisonAssetPropertyKey1` (string)

        Added enum values:

        * `smartViewLocationType`
        * `smartViewLevelValue`
        * `smartViewAccountNumber`
        * `smartViewIbx`
        * `locationAverageTemperatureSetting`
        * `locationAverageHumiditySetting`
        * `webPortalLaunchUrl`
### `POST` /api/setting/sensorThreshold


#### Request:

Changed content type : `application/json`

* Changed property `comparisonAssetPropertyKey1` (string)

    Added enum values:

    * `smartViewLocationType`
    * `smartViewLevelValue`
    * `smartViewAccountNumber`
    * `smartViewIbx`
    * `locationAverageTemperatureSetting`
    * `locationAverageHumiditySetting`
    * `webPortalLaunchUrl`
### `DELETE` /api/setting/sensorThreshold/{sensorThresholdId}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}


#### Request:

Changed content type : `application/json`

* Changed property `comparisonAssetPropertyKey1` (string)

    Added enum values:

    * `smartViewLocationType`
    * `smartViewLevelValue`
    * `smartViewAccountNumber`
    * `smartViewIbx`
    * `locationAverageTemperatureSetting`
    * `locationAverageHumiditySetting`
    * `webPortalLaunchUrl`
### `GET` /api/setting/sensorTypeAssetType


### `GET` /api/asset/sensors/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataSource` (string)

        Added enum value:

        * `smartView`
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


#### Parameters:

Changed: `systemSettings` in `query`
> A list of system setting IDs.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum values:

        * `smartViewHttpRetryCount`
        * `smartViewRetrySleepIntervalInSeconds`
### `PUT` /api/setting/systemSettings


#### Request:

Changed content type : `application/json`

Changed items (object):

* Changed property `id` (string)

    Added enum values:

    * `smartViewHttpRetryCount`
    * `smartViewRetrySleepIntervalInSeconds`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum values:

        * `smartViewHttpRetryCount`
        * `smartViewRetrySleepIntervalInSeconds`
### `GET` /api/setting/systemSettings/{systemSettingId}


#### Parameters:

Changed: `systemSettingId` in `path`
> ID of system setting.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `id` (string)

        Added enum values:

        * `smartViewHttpRetryCount`
        * `smartViewRetrySleepIntervalInSeconds`
### `GET` /api/setting/systemSettings/dataCollector/{dataCollectorSetting}


### `PUT` /api/setting/systemSettings/dataCollector


### `GET` /api/user/userInboxNotifications/status


### `DELETE` /api/user/userInboxNotifications


### `PUT` /api/user/userInboxNotifications


### `POST` /api/product/userProductImages/{productId}


### `GET` /api/product/userProductImages/{productId}


### `GET` /api/asset/watchedAssets


### `POST` /api/asset/workNotes


### `GET` /api/setting/applicationEventLogs


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `smartViewConfigurationUpdated`
        * `smartViewIbxConfigurationRemoved`
        * `smartViewIbxConfigurationAdded`
        * `smartViewIbxConfigurationUpdated`
        * `smartViewIbxConfigurationAccountNumberOrIbxUpdated`
### `GET` /api/asset/assetChangeEventLogs


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `smartViewConfigurationUpdated`
        * `smartViewIbxConfigurationRemoved`
        * `smartViewIbxConfigurationAdded`
        * `smartViewIbxConfigurationUpdated`
        * `smartViewIbxConfigurationAccountNumberOrIbxUpdated`
### `GET` /api/asset/assetTrackerContainedAssets


### `DELETE` /api/asset/assets/{id}


### `GET` /api/asset/assets/{id}


### `PUT` /api/asset/assets/{id}


### `GET` /api/asset/circuitConnections/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `connectionCustomProperties` (array)

        Changed items (object):

        * Changed property `dataSource` (string)

            Added enum value:

            * `smartView`
### `POST` /api/asset/circuits


### `DELETE` /api/asset/circuits/{id}


### `GET` /api/asset/circuits/{id}


### `PUT` /api/asset/circuits/{id}


### `GET` /api/asset/componentAssets/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `smartViewLocationType`
            * `smartViewLevelValue`
            * `smartViewAccountNumber`
            * `smartViewIbx`
            * `locationAverageTemperatureSetting`
            * `locationAverageHumiditySetting`
            * `webPortalLaunchUrl`
### `GET` /api/asset/componentAssets/{assetId}/virtualComponents


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataSource` (string)

        Added enum value:

        * `smartView`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `smartViewLocationType`
            * `smartViewLevelValue`
            * `smartViewAccountNumber`
            * `smartViewIbx`
            * `locationAverageTemperatureSetting`
            * `locationAverageHumiditySetting`
            * `webPortalLaunchUrl`
        * Changed property `dataSource` (string)

            Added enum value:

            * `smartView`
### `GET` /api/asset/componentAssets/{assetId}/networkComponents


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `smartViewLocationType`
            * `smartViewLevelValue`
            * `smartViewAccountNumber`
            * `smartViewIbx`
            * `locationAverageTemperatureSetting`
            * `locationAverageHumiditySetting`
            * `webPortalLaunchUrl`
### `GET` /api/asset/containedAssets/elevation/{parentId}


### `GET` /api/setting/credentials


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `protocol` (string)

        Added enum value:

        * `smartView`
### `POST` /api/setting/credentials


#### Request:

Changed content type : `application/json`

* Changed property `protocol` (string)

    Added enum value:

    * `smartView`
### `DELETE` /api/setting/credentials/{credentialId}


### `GET` /api/setting/credentials/{credentialId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `protocol` (string)

        Added enum value:

        * `smartView`
### `PUT` /api/setting/credentials/{credentialId}


#### Request:

Changed content type : `application/json`

* Changed property `protocol` (string)

    Added enum value:

    * `smartView`
### `GET` /api/asset/discoveryReport/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `protocol` (string)

        Added enum value:

        * `smartView`
### `GET` /api/layout/floorPlanLayout/{id}


### `PUT` /api/layout/floorPlanLayout


### `GET` /api/asset/monitorOnlyCommunicationSetting/{assetId}


### `PUT` /api/asset/monitorOnlyCommunicationSetting/{assetId}


### `POST` /api/asset/physicalConnections


### `DELETE` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalConnections/{id}


### `PUT` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalPorts/detailed/{assetId}


### `GET` /api/asset/powerPath/{assetId}/ancestry


### `PUT` /api/asset/rackShelf/{id}


### `POST` /api/asset/search


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Added property `nicDescriptionValue` (array)

        Items (string):

    * Added property `smartViewLocationType` (array)

    * Added property `smartViewLevelValue` (array)

    * Added property `smartViewAccountNumber` (array)

    * Added property `smartViewIbx` (array)

### `GET` /api/asset/shelvedAssets/{rackId}


### `GET` /api/asset/workNotes/asset/{assetId}


### `DELETE` /api/asset/workNotes/{workNoteId}


### `PUT` /api/asset/workNotes/{workNoteId}


### `GET` /api/asset/workNotes/{workNoteId}


### `DELETE` /api/asset/workOrders/{workOrderId}


### `GET` /api/asset/workOrders/{workOrderId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `workOrderTypeId` (string)

        Added enum value:

        * `smartViewSync`
### `GET` /api/asset/workOrders/serviceNowCmdbSyncNow/{workOrderId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `workOrderTypeId` (string)

        Added enum value:

        * `smartViewSync`
### `GET` /api/asset/workOrders/serviceNowCmdbScheduledSync/{workOrderId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `workOrderTypeId` (string)

        Added enum value:

        * `smartViewSync`
### `GET` /api/asset/assets


### `POST` /api/asset/assets


#### Request:

Changed content type : `application/json`

* Changed property `creatableAssetProperties` (array)

    Changed items (object):

    * Changed property `type` (string)

        Added enum values:

        * `smartViewLocationType`
        * `smartViewLevelValue`
        * `smartViewAccountNumber`
        * `smartViewIbx`
        * `locationAverageTemperatureSetting`
        * `locationAverageHumiditySetting`
        * `webPortalLaunchUrl`
### `GET` /api/asset/controlOperations/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `controlCredential` (object)

        * Changed property `protocol` (string)

            Added enum value:

            * `smartView`
### `GET` /api/setting/discoveryProtocolSettings/protocolCredentials


#### Parameters:

Changed: `protocolId` in `query`
> A protocol ID.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `protocol` (string)

        Added enum value:

        * `smartView`
### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials


#### Request:

Changed content type : `application/json`

* Changed property `credential` (object)

    * Changed property `protocol` (string)

        Added enum value:

        * `smartView`
