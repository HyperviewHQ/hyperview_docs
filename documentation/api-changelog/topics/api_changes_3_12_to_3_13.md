# API Changelog 3.12 to 3.13

## What's New

### `GET` /api/setting/alarmEventPolicies

> Returns an array of alarm event policies.


### `POST` /api/setting/alarmEventPolicies

> Creates an alarm event policy and returns its ID.


### `PUT` /api/setting/alarmEventPolicies/{id}

> Updates an alarm event policy.


### `DELETE` /api/setting/alarmEventPolicies/{id}

> Deletes an alarm event policy.


### `GET` /api/asset/assetDashboardSettings/{assetId}

> Returns a dashboard setting for a specific asset.


### `PUT` /api/asset/assetDashboardSettings/{assetId}

> Saves asset dashboard setting and returns the updated asset dashboard setting.


### `DELETE` /api/asset/assetDashboardSettings/{assetId}

> Deletes an asset dashboard setting.


### `PUT` /api/setting/assetTypeDashboardSettings/{assetType}

> Updates an asset type dashboard override setting and returns the updated dashboard override setting.


### `DELETE` /api/setting/assetTypeDashboardSettings/{assetType}

> Deletes an asset type dashboard override setting.


### `POST` /api/asset/bulk/assets/updateDescendantsAccessPolicies

> Updates the access policy for an asset's descendants.


### `GET` /api/product/products/smartMatch

> Returns a product.


## What's Deprecated

### `PUT` /api/asset/accessPolicies/{assetId}

> Updates an asset access policy and returns the updated asset access policy.


### `GET` /api/setting/assetTypeDashboardSettings/{assetTypeId}

> Returns a dashboard setting for a specific asset type.


### `PUT` /api/setting/assetTypeDashboardSettings

> Updates a dashboard setting and returns the updated dashboard setting.


### `POST` /api/asset/customAssetProperties

> Creates a new custom asset property value and returns the new custom property.


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


### `POST` /api/asset/buswayTapOff


### `DELETE` /api/asset/buswayTapOff/{buswayTapOffId}


### `PUT` /api/asset/buswayTapOff/{buswayTapOffId}


### `POST` /api/asset/controlCredentialAssociation


### `DELETE` /api/asset/controlCredentialAssociation


### `PUT` /api/asset/controlCredentialAssociation/{id}


### `PUT` /api/asset/controlOperations


### `GET` /api/asset/customComponents/assetPropertyValueStrings


### `GET` /api/setting/customPropertyGroup


### `POST` /api/setting/customPropertyGroup


### `DELETE` /api/setting/customPropertyGroup/{customPropertyGroupId}


### `PUT` /api/setting/customPropertyGroup/{customPropertyGroupId}


#### Request:

Deleted content type : `application/json-patch+json`

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


### `GET` /api/setting/serviceNowCmdbConfigurationOverview


### `PUT` /api/setting/serviceNowCmdbConfigurationOverview


### `PUT` /api/setting/serviceNowCmdbIntegration/verifyAuthenticationConfiguration


#### Request:

Deleted content type : `application/json-patch+json`

### `GET` /api/asset/software/{id}


### `GET` /api/user/users


### `GET` /api/user/users/accessPolicyUsers/{accessPolicyId}


### `GET` /api/user/users/access/{accessPolicyId}


### `GET` /api/asset/widget/assetPropertyListWidget/{assetId}


### `GET` /api/asset/widget/assetLifecycleWidget/{assetId}


### `GET` /api/asset/widget/assetsByTypeWidget/{locationId}


### `GET` /api/asset/widget/assetSummaryWidget/{assetId}


### `POST` /api/asset/alarmEvents


### `GET` /api/asset/alarmEvents


#### Request:

Deleted content type : `application/json-patch+json`

### `GET` /api/asset/ancestors/{assetId}


### `DELETE` /api/asset/assetProperties/{id}


### `GET` /api/asset/assetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Added property `minimumValue` (number)

### `PUT` /api/asset/assetProperties/{id}


#### Request:

Changed content type : `application/json`

* Added property `minimumValue` (number)

#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Added property `minimumValue` (number)

### `POST` /api/asset/assetProperties


#### Request:

Changed content type : `application/json`

* Added property `minimumValue` (number)

#### Return Type:

Changed response : **201 Created**
> Created


* Changed content type : `application/json`

    * Added property `minimumValue` (number)

### `GET` /api/setting/assetPropertyKeys


### `GET` /api/asset/assetTrackerAlarmEvents


#### Request:

Deleted content type : `application/json-patch+json`

### `GET` /api/asset/assetTrackerMasterModuleData


### `GET` /api/asset/assetTree/{assetId}


### `GET` /api/asset/assetTypeCount


### `GET` /api/setting/assetTypeDashboardSettings/{assetTypeId}


### `PUT` /api/setting/assetTypeDashboardSettings


#### Request:

Deleted content type : `application/json-patch+json`

### `GET` /api/asset/assetsByType


#### Request:

Deleted content type : `application/json-patch+json`

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


### `GET` /api/asset/containedAssets/general/{assetId}


#### Request:

Deleted content type : `application/json-patch+json`

### `POST` /api/asset/control/rackDoorElectronicLock


### `DELETE` /api/asset/customAssetProperties/{id}


### `GET` /api/asset/customAssetProperties/{id}


### `PUT` /api/asset/customAssetProperties/{id}


### `POST` /api/asset/customAssetProperties


### `GET` /api/asset/customComponents


#### Request:

Deleted content type : `application/json-patch+json`

### `POST` /api/asset/customComponents


### `DELETE` /api/asset/customComponents/{id}


### `PUT` /api/asset/customComponents/{id}


### `GET` /api/setting/customPropertySetting


### `POST` /api/setting/customPropertySetting


### `DELETE` /api/setting/customPropertySetting/{customPropertySettingId}


### `PUT` /api/setting/customPropertySetting/{customPropertySettingId}


#### Request:

Deleted content type : `application/json-patch+json`

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


### `GET` /api/setting/documentDetails/{documentDetailsId}


### `GET` /api/setting/documentDetails


### `GET` /api/layout/floorPlanLayout/childrenState/{id}


### `GET` /api/layout/floorPlanLayoutGridInformation/{locationId}


### `GET` /api/asset/hierarchy


### `POST` /api/asset/indirectSensors


### `GET` /api/layout/layoutModeSetting/{locationId}


### `PUT` /api/layout/layoutModeSetting


#### Request:

Deleted content type : `application/json-patch+json`

### `POST` /api/layout/layoutModeSetting


#### Request:

Deleted content type : `application/json-patch+json`

### `GET` /api/setting/license


### `GET` /api/asset/lifecycleProperties/{assetId}


### `PUT` /api/asset/lifecycleProperties/{assetId}


#### Request:

Deleted content type : `application/json-patch+json`

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


### `POST` /api/asset/outletControl


### `GET` /api/asset/outlets


### `POST` /api/asset/pduBreakers


### `GET` /api/asset/pduBreakers


### `GET` /api/asset/powerPath/{assetId}/children


### `POST` /api/asset/powerSourceAssociations


### `GET` /api/asset/powerSourceAssociations


### `GET` /api/product/productPropertyKeys/{productTypeId}


### `GET` /api/product/products


### `POST` /api/product/products


### `DELETE` /api/product/products/{id}


### `PUT` /api/product/products/{id}


### `GET` /api/product/products/{id}


### `GET` /api/asset/rackSecurity/{assetId}


### `GET` /api/asset/rackSecurity/{locationId}/racks


### `GET` /api/asset/savedSearches


### `POST` /api/asset/savedSearches


### `GET` /api/asset/savedSearches/global


### `GET` /api/setting/sensorThreshold


### `POST` /api/setting/sensorThreshold


### `DELETE` /api/setting/sensorThreshold/{sensorThresholdId}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}


### `GET` /api/setting/sensorTypeAssetType


### `GET` /api/asset/sensors/{assetId}


### `GET` /api/asset/sensorsDailySummaries/numeric


### `GET` /api/asset/sensorsDailySummaries/numeric/{timeRange}


### `GET` /api/asset/sensorsDailySummaries/string


### `GET` /api/asset/sensorsDailySummaries/string/{timeRange}


### `GET` /api/asset/sensorsDataPoints/numeric


### `GET` /api/asset/sensorsDataPoints/numeric/{timeRange}


### `GET` /api/asset/sensorsDataPoints/string


### `GET` /api/asset/sensorsDataPoints/string/{timeRange}


### `GET` /api/setting/serviceNowCmdbConfiguration


### `PUT` /api/setting/serviceNowCmdbConfiguration


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

        * `assetDashboardConfigurationAdded`
        * `assetDashboardConfigurationUpdated`
        * `assetDashboardConfigurationDeleted`
        * `assetTypeDashboardConfigurationAdded`
        * `assetTypeDashboardConfigurationUpdated`
        * `assetTypeDashboardConfigurationDeleted`
        * `alarmEventPolicyAdded`
        * `alarmEventPolicyUserAssociationAdded`
        * `alarmEventPolicyGroupAssociationAdded`
        * `alarmEventPolicyDeleted`
        * `alarmEventPolicyNameUpdated`
        * `alarmEventPolicyAssetLocationUpdated`
        * `alarmEventPolicyAssetTypeUpdated`
        * `alarmEventPolicySeverityFilterUpdated`
        * `alarmEventPolicyUserAssociationRemoved`
        * `alarmEventPolicyGroupAssociationRemoved`
    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum values:

            * `ns`
            * `osi`
            Removed enum values:

            * `ipx`
            * `iso`
### `GET` /api/asset/assetChangeEventLogs


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `assetDashboardConfigurationAdded`
        * `assetDashboardConfigurationUpdated`
        * `assetDashboardConfigurationDeleted`
        * `assetTypeDashboardConfigurationAdded`
        * `assetTypeDashboardConfigurationUpdated`
        * `assetTypeDashboardConfigurationDeleted`
        * `alarmEventPolicyAdded`
        * `alarmEventPolicyUserAssociationAdded`
        * `alarmEventPolicyGroupAssociationAdded`
        * `alarmEventPolicyDeleted`
        * `alarmEventPolicyNameUpdated`
        * `alarmEventPolicyAssetLocationUpdated`
        * `alarmEventPolicyAssetTypeUpdated`
        * `alarmEventPolicySeverityFilterUpdated`
        * `alarmEventPolicyUserAssociationRemoved`
        * `alarmEventPolicyGroupAssociationRemoved`
    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum values:

            * `ns`
            * `osi`
            Removed enum values:

            * `ipx`
            * `iso`
### `GET` /api/asset/assetTrackerContainedAssets

> Returns a list of AssetTracker assets or placeholder assets that are contained inside the
> given AssetTracker parent.


### `DELETE` /api/asset/assets/{id}


### `GET` /api/asset/assets/{id}


### `PUT` /api/asset/assets/{id}


### `GET` /api/asset/componentAssets/{assetId}


### `GET` /api/asset/componentAssets/{assetId}/virtualComponents


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `properties` (array)

        Changed items (object):

        * Added property `minimumValue` (number)

### `GET` /api/asset/componentAssets/{assetId}/networkComponents


### `GET` /api/asset/containedAssets/elevation/{parentId}


### `GET` /api/asset/controlCredentialAssociation/{assetId}


### `GET` /api/setting/credentials


### `POST` /api/setting/credentials


### `DELETE` /api/setting/credentials/{credentialId}


### `GET` /api/setting/credentials/{credentialId}


### `PUT` /api/setting/credentials/{credentialId}


### `GET` /api/asset/discoveryReport/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum values:

            * `ns`
            * `osi`
            Removed enum values:

            * `ipx`
            * `iso`
### `GET` /api/layout/floorPlanLayout/{id}


### `PUT` /api/layout/floorPlanLayout


### `GET` /api/asset/monitorOnlyCommunicationSetting/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum values:

            * `ns`
            * `osi`
            Removed enum values:

            * `ipx`
            * `iso`
### `PUT` /api/asset/monitorOnlyCommunicationSetting/{assetId}


#### Request:

Changed content type : `application/json`

* Changed property `ipAddress` (object)

    * Changed property `addressFamily` (string)

        Added enum values:

        * `ns`
        * `osi`
        Removed enum values:

        * `ipx`
        * `iso`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum values:

            * `ns`
            * `osi`
            Removed enum values:

            * `ipx`
            * `iso`
### `POST` /api/asset/physicalConnections


### `DELETE` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalConnections/{id}


### `PUT` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalPorts/detailed/{assetId}


### `GET` /api/asset/powerPath/{assetId}/ancestry

> Returns the power path ancestry of power providing assets and associations down to the given asset.


### `PUT` /api/asset/rackShelf/{id}


### `POST` /api/asset/search


#### Request:

Deleted content type : `application/json-patch+json`

### `GET` /api/asset/shelvedAssets/{rackId}


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


#### Request:

Changed content type : `application/json`

* Changed property `sensorMonitoringProfile` (object)

    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum values:

            * `ns`
            * `osi`
            Removed enum values:

            * `ipx`
            * `iso`
### `GET` /api/asset/controlOperations/{assetId}


### `GET` /api/setting/discoveryProtocolSettings/protocolCredentials


### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials


