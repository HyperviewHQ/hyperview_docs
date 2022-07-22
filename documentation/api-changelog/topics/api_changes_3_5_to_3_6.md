# API Changelog 3.5 to 3.6

## What's New

### `POST` /api/asset/assetFirmware

> Update assets to a firmware version.

### `GET` /api/asset/assetTree/{assetId}

> Returns information about a particular asset for rendering it inside a tree view on the
> application client.

### `GET` /api/asset/controlDataCollector/{assetId}

> Returns an asset's control operation data collector ID.

### `GET` /api/asset/controlOperations/{assetId}

> Returns an asset's control operation settings.

### `PUT` /api/asset/controlOperations

> Update asset's control operations settings.

### `GET` /api/setting/serviceNowCmdbConfiguration

> Returns the ServiceNow configuration.

### `PUT` /api/setting/serviceNowCmdbConfiguration

> Saves the ServiceNow configuration changes.

### `PUT` /api/setting/serviceNowCmdbIntegration/resetLastSyncDate

> Resets the ServiceNow integration last sync date.

### `PUT` /api/setting/serviceNowCmdbIntegration/initiateSync

> Initiates a ServiceNow integration sync.

### `POST` /api/asset/workOrderItemStatuses/manuallyComplete

> Manually completes work order items.

### `GET` /api/asset/workOrders/{workOrderId}

> Returns a work order.

### `DELETE` /api/asset/workOrders/{workOrderId}

> Deletes a work order.

### `DELETE` /api/asset/workOrders/completed

> Deletes all completed work orders.

### `GET` /api/product/manufacturers/{id}

> Returns a manufacturer.

## What's Deprecated

### `POST` /api/asset/controlCredentialAssociation

> Creates an association between an asset and a control credential.

### `DELETE` /api/asset/controlCredentialAssociation

> Updates an association between an asset and a control credential.

### `PUT` /api/asset/controlCredentialAssociation/{id}

> Updates an association between an asset and a control credential.

### `GET` /api/asset/controlCredentialAssociation/{assetId}

> Returns a control credential for an asset.

## What's Changed

### `DELETE` /api/asset/assetTrackerMasterModuleData/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/layout/backgroundImages/{id}


### `DELETE` /api/layout/backgroundImages/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `POST` /api/setting/dataCollectorToken


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/discoveryProtocolSettings/ports/{portId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials/{protocolCredentialId}


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/discoveryProtocolSettings/protocolCredentials/{protocolCredentialId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `POST` /api/setting/discoveryRunner/{discoveryId}


### `POST` /api/setting/discoveryRunner/{discoveryId}/abort


### `GET` /api/setting/documentAccessPolicies/{documentId}


### `PUT` /api/setting/documentAccessPolicies/{documentId}


### `DELETE` /api/asset/documentAssociations/{assetDocumentAssociationId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/product/firmwareDownload/installFile/{firmwareVersionId}


### `GET` /api/product/firmwareDownload/releaseNote/{firmwareVersionId}


### `GET` /api/layout/floorPlanLayout/racksInRow/{rackId}


### `DELETE` /api/asset/indirectSensors/{sensorId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/asset/manualSensors/numericSensor/{sensorId}/value


### `POST` /api/asset/monitorOnlyCommunicationSetting/{assetId}/refreshSensors


### `PUT` /api/asset/pduBreakers/breakerStatus/{pduBreakerId}


### `DELETE` /api/asset/powerSourceAssociations/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/layout/rackSearch


### `DELETE` /api/asset/savedSearches/user/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `DELETE` /api/asset/savedSearches/global/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `DELETE` /api/asset/sensors/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `DELETE` /api/product/userProductImages/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/setting/accessPolicies


### `POST` /api/setting/accessPolicies


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/accessPolicies/{accessPolicyId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/accessPolicies/{accessPolicyId}


### `GET` /api/asset/accessPolicies/{assetId}


### `PUT` /api/asset/accessPolicies/{assetId}


### `GET` /api/setting/accessPolicyGroups


### `GET` /api/setting/accessPolicyGroups/{accessPolicyId}


### `PUT` /api/asset/alarmEvents/acknowledgementState/{alarmEventId}


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


### `POST` /api/asset/buswayTapOff


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/asset/buswayTapOff/{buswayTapOffId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/asset/buswayTapOff/{buswayTapOffId}


### `POST` /api/asset/controlCredentialAssociation


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/asset/controlCredentialAssociation


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/asset/controlCredentialAssociation/{id}


### `GET` /api/asset/customComponents/assetPropertyValueStrings


### `GET` /api/setting/customPropertyGroup


### `POST` /api/setting/customPropertyGroup


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/customPropertyGroup/{customPropertyGroupId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/customPropertyGroup/{customPropertyGroupId}


### `GET` /api/setting/dataCollector


### `POST` /api/setting/dataCollector/retire


### `POST` /api/asset/documentAssociations


#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/asset/documentAssociations/assets/{documentId}


### `GET` /api/setting/documents/{documentId}


### `DELETE` /api/setting/documents/{documentId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/documents/{documentId}


### `POST` /api/setting/documents


#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/asset/enumAssetProperties/{id}


### `GET` /api/setting/enumCustomAssetProperties/{customAssetPropertyKeyId}


### `POST` /api/asset/eventNotificationRecipient/{assetId}


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/asset/eventNotificationRecipient/{assetId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/asset/eventNotificationRecipient/{assetId}


### `GET` /api/product/firmwareVersions/{firmwareVersionId}


### `GET` /api/product/firmwareVersions/firmware/{firmwareId}


### `GET` /api/product/image


### `POST` /api/asset/manualSensors


#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/product/manufacturers


### `POST` /api/product/manufacturers


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/product/manufacturers/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/product/manufacturers/{id}


### `POST` /api/asset/merge


### `PUT` /api/asset/pduBreakers/{pduBreakerId}


### `GET` /api/product/productProperties/{productId}


### `POST` /api/product/productProperties/{productId}


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/product/productProperties/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/product/productProperties/{id}


### `GET` /api/product/productTypes


### `GET` /api/asset/search/aggregations


### `GET` /api/asset/software/{id}


### `GET` /api/user/users


### `GET` /api/user/users/accessPolicyUsers/{accessPolicyId}


### `GET` /api/asset/widget/assetPropertyListWidget/{assetId}


### `GET` /api/asset/widget/assetLifecycleWidget/{assetId}


### `GET` /api/asset/widget/assetsByTypeWidget/{locationId}


### `GET` /api/asset/widget/assetSummaryWidget/{assetId}


### `POST` /api/asset/alarmEvents


### `GET` /api/asset/alarmEvents


### `GET` /api/asset/ancestors/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `DELETE` /api/asset/assetProperties/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/asset/assetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataSource` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `PUT` /api/asset/assetProperties/{id}


#### Request:

Changed content type : `application/json`

* Changed property `dataSource` (string)

    Added enum value:

    * `basicHttpAndHttps`
    Removed enum value:

    * `http`
#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `dataSource` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `POST` /api/asset/assetProperties


#### Request:

Changed content type : `application/json`

* Changed property `dataSource` (string)

    Added enum value:

    * `basicHttpAndHttps`
    Removed enum value:

    * `http`
#### Return Type:

Changed response : **201 Created**
> Created

* Changed content type : `application/json`

    * Changed property `dataSource` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `GET` /api/asset/assetsByType


### `GET` /api/asset/assetTrackerAlarmEvents


### `GET` /api/asset/assetTrackerMasterModuleData


### `GET` /api/asset/assetTypeCount


### `GET` /api/setting/assetTypeDashboardSettings/{assetTypeId}


### `PUT` /api/setting/assetTypeDashboardSettings


### `POST` /api/layout/backgroundImages


#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/layout/backgroundImages


### `GET` /api/setting/bacnetIpDefinitions


### `POST` /api/setting/bacnetIpDefinitions


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `PUT` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


### `POST` /api/asset/bulk/assets/updateCustomProperty


### `POST` /api/asset/bulk/assets/updateLifecycle


### `GET` /api/asset/buswayTapOff/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `GET` /api/asset/containedAssets/general/{assetId}


### `POST` /api/asset/control/rackDoorElectronicLock


### `DELETE` /api/asset/customAssetProperties/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/asset/customAssetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataSource` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `PUT` /api/asset/customAssetProperties/{id}


#### Request:

Changed content type : `application/json`

* Changed property `dataSource` (string)

    Added enum value:

    * `basicHttpAndHttps`
    Removed enum value:

    * `http`
#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `dataSource` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `POST` /api/asset/customAssetProperties


#### Request:

Changed content type : `application/json`

* Changed property `dataSource` (string)

    Added enum value:

    * `basicHttpAndHttps`
    Removed enum value:

    * `http`
#### Return Type:

Changed response : **201 Created**
> Created

* Changed content type : `application/json`

    * Changed property `dataSource` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `GET` /api/asset/customComponents


### `POST` /api/asset/customComponents


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/asset/customComponents/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/asset/customComponents/{id}


### `GET` /api/setting/customPropertySetting


### `POST` /api/setting/customPropertySetting


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/customPropertySetting/{customPropertySettingId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/customPropertySetting/{customPropertySettingId}


### `GET` /api/setting/discoveries


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `scheduleType` (string)

        Added enum value:

        * `none`
        Removed enum value:

        * `advanced`
### `POST` /api/setting/discoveries


#### Request:

Changed content type : `application/json`

* Changed property `scheduleType` (string)

    Added enum value:

    * `none`
    Removed enum value:

    * `advanced`
#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/setting/discoveries/{id}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `scheduleType` (string)

        Added enum value:

        * `none`
        Removed enum value:

        * `advanced`
### `DELETE` /api/setting/discoveries/{discoveryId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/discoveries/{discoveryId}


#### Request:

Changed content type : `application/json`

* Changed property `scheduleType` (string)

    Added enum value:

    * `none`
    Removed enum value:

    * `advanced`
#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `scheduleType` (string)

        Added enum value:

        * `none`
        Removed enum value:

        * `advanced`
### `GET` /api/setting/discoveries/{discoveryId}/schedule


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `scheduleType` (string)

        Added enum value:

        * `none`
        Removed enum value:

        * `advanced`
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

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `POST` /api/setting/discoveryProtocolSettings/ports


#### Request:

Changed content type : `application/json`

* Changed property `protocolId` (string)

    Added enum value:

    * `basicHttpAndHttps`
    Removed enum value:

    * `http`
#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/setting/discoveryProtocolSettings/protocols


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `PUT` /api/setting/discoveryProtocolSettings/protocols


#### Request:

Changed content type : `application/json`

* Changed property `id` (string)

    Added enum value:

    * `basicHttpAndHttps`
    Removed enum value:

    * `http`
#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `id` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
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

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `GET` /api/setting/discoveryRanges


### `POST` /api/setting/discoveryRanges


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/discoveryRanges/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/discoveryRanges/{id}


### `POST` /api/setting/discoverySchedules


#### Request:

Changed content type : `application/json`

* Changed property `scheduleType` (string)

    Added enum value:

    * `none`
    Removed enum value:

    * `advanced`
#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/discoverySchedules/{discoveryScheduleId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/discoverySchedules/{discoveryScheduleId}


#### Request:

Changed content type : `application/json`

* Changed property `scheduleType` (string)

    Added enum value:

    * `none`
    Removed enum value:

    * `advanced`
### `GET` /api/asset/documentAssociations/documentDetails/{assetId}


### `GET` /api/setting/documentDetails/{documentDetailsId}


### `GET` /api/setting/documentDetails


### `GET` /api/layout/floorPlanLayout/childrenState/{id}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `GET` /api/layout/floorPlanLayoutGridInformation/{locationId}


### `GET` /api/asset/hierarchy


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `POST` /api/asset/indirectSensors


#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/layout/layoutModeSetting/{locationId}


### `PUT` /api/layout/layoutModeSetting


### `POST` /api/layout/layoutModeSetting


#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/setting/license


### `GET` /api/asset/lifecycleProperties/{assetId}


### `PUT` /api/asset/lifecycleProperties/{assetId}


### `PUT` /api/asset/location/{id}


### `GET` /api/layout/mapLocations/{locationId}


### `GET` /api/setting/modbusTcpDefinitions


### `POST` /api/setting/modbusTcpDefinitions


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


### `PUT` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


### `GET` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}


### `POST` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNonNumericSensorId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNonNumericSensorId}


### `GET` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}


### `POST` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNumericSensorId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNumericSensorId}


### `GET` /api/asset/outlets


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `POST` /api/asset/pduBreakers


### `GET` /api/asset/pduBreakers


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `GET` /api/asset/powerPath/{assetId}/children


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `POST` /api/asset/powerSourceAssociations


#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/asset/powerSourceAssociations


### `GET` /api/product/productPropertyKeys/{productTypeId}


### `GET` /api/product/products


### `POST` /api/product/products


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/product/products/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/product/products/{id}


### `GET` /api/product/products/{id}


### `GET` /api/asset/rackSecurity/{assetId}


### `GET` /api/asset/rackSecurity/{locationId}/racks


### `GET` /api/asset/savedSearches


### `POST` /api/asset/savedSearches


#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/asset/savedSearches/global


### `GET` /api/asset/sensors/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `dataSource` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
    * Changed property `destinationAssetAccessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `GET` /api/asset/sensorsDailySummaries/numeric


### `GET` /api/asset/sensorsDailySummaries/numeric/{timeRange}


### `GET` /api/asset/sensorsDailySummaries/string


### `GET` /api/asset/sensorsDailySummaries/string/{timeRange}


### `GET` /api/asset/sensorsDataPoints/numeric


### `GET` /api/asset/sensorsDataPoints/numeric/{timeRange}


### `GET` /api/asset/sensorsDataPoints/string


### `GET` /api/asset/sensorsDataPoints/string/{timeRange}


### `GET` /api/setting/sensorThreshold


### `POST` /api/setting/sensorThreshold


#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/sensorThreshold/{sensorThresholdId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}


### `GET` /api/setting/sensorTypeAssetType


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

        Removed enum values:

        * `sendGridApiKey`
        * `noReplyEmailAddress`
### `PUT` /api/setting/systemSettings


#### Request:

Changed content type : `application/json`

Changed items (object):

* Changed property `id` (string)

    Removed enum values:

    * `sendGridApiKey`
    * `noReplyEmailAddress`
#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Removed enum values:

        * `sendGridApiKey`
        * `noReplyEmailAddress`
### `GET` /api/setting/systemSettings/{systemSettingId}


#### Parameters:

Changed: `systemSettingId` in `path`
> ID of system setting.

#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `id` (string)

        Removed enum values:

        * `sendGridApiKey`
        * `noReplyEmailAddress`
### `GET` /api/setting/systemSettings/dataCollector/{dataCollectorSetting}


#### Parameters:

Changed: `dataCollectorSetting` in `path`
> Name of data collector setting.

#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `dataCollectorSetting` (string)

        Added enum values:

        * `maxFirmwareMonitoringRequestBatchSize`
        * `firmwareMonitoringTimeout`
### `PUT` /api/setting/systemSettings/dataCollector


#### Request:

Changed content type : `application/json`

* Changed property `dataCollectorSetting` (string)

    Added enum values:

    * `maxFirmwareMonitoringRequestBatchSize`
    * `firmwareMonitoringTimeout`
### `POST` /api/product/userProductImages/{productId}


#### Return Type:

Changed response : **201 Created**
> Created
### `GET` /api/product/userProductImages/{productId}


### `GET` /api/asset/watchedAssets


### `GET` /api/setting/applicationEventLogs


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `controlOperationSnmpCredentialAdded`
        * `controlOperationSnmpCredentialUpdated`
        * `controlOperationSnmpCredentialRemoved`
        * `serviceNowCmdbIntegrationLastSyncDateReset`
        * `serviceNowCmdbConfigurationUpdated`
        * `serviceNowCmdbIntegrationSyncInitiated`
        * `workOrderDeleted`
        * `workOrderAssetItemManuallyCompleted`
        * `workOrderCreated`
        * `controlOperationFirmwareCredentialAdded`
        * `controlOperationFirmwareCredentialUpdated`
        * `controlOperationFirmwareCredentialDeleted`
        * `controlOperationDataCollectorAdded`
        * `controlOperationDataCollectorUpdated`
        Removed enum values:

        * `controlCredentialAssociationAdded`
        * `controlCredentialAssociationUpdated`
        * `controlCredentialAssociationRemoved`
### `GET` /api/asset/assetChangeEventLogs


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `controlOperationSnmpCredentialAdded`
        * `controlOperationSnmpCredentialUpdated`
        * `controlOperationSnmpCredentialRemoved`
        * `serviceNowCmdbIntegrationLastSyncDateReset`
        * `serviceNowCmdbConfigurationUpdated`
        * `serviceNowCmdbIntegrationSyncInitiated`
        * `workOrderDeleted`
        * `workOrderAssetItemManuallyCompleted`
        * `workOrderCreated`
        * `controlOperationFirmwareCredentialAdded`
        * `controlOperationFirmwareCredentialUpdated`
        * `controlOperationFirmwareCredentialDeleted`
        * `controlOperationDataCollectorAdded`
        * `controlOperationDataCollectorUpdated`
        Removed enum values:

        * `controlCredentialAssociationAdded`
        * `controlCredentialAssociationUpdated`
        * `controlCredentialAssociationRemoved`
### `DELETE` /api/asset/assets/{id}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/asset/assets/{id}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `PUT` /api/asset/assets/{id}


#### Request:

Changed content type : `application/json`

* Changed property `accessState` (string)

    Added enum value:

    * `workOrderAssetStatusPlaceholder`
#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `GET` /api/asset/assetTrackerContainedAssets


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `GET` /api/asset/componentAssets/{assetId}


### `GET` /api/asset/componentAssets/{assetId}/virtualComponents


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `dataSource` (string)

            Added enum value:

            * `basicHttpAndHttps`
            Removed enum value:

            * `http`
### `GET` /api/asset/componentAssets/{assetId}/networkComponents


### `GET` /api/asset/containedAssets/elevation/{parentId}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `GET` /api/asset/controlCredentialAssociation/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `protocol` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `GET` /api/setting/credentials


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `protocol` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `POST` /api/setting/credentials


#### Request:

Changed content type : `application/json`

* Changed property `protocol` (string)

    Added enum value:

    * `basicHttpAndHttps`
    Removed enum value:

    * `http`
#### Return Type:

Changed response : **201 Created**
> Created
### `DELETE` /api/setting/credentials/{credentialId}


#### Return Type:

Changed response : **204 No Content**
> No Content
### `GET` /api/setting/credentials/{credentialId}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `protocol` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `PUT` /api/setting/credentials/{credentialId}


#### Request:

Changed content type : `application/json`

* Changed property `protocol` (string)

    Added enum value:

    * `basicHttpAndHttps`
    Removed enum value:

    * `http`
### `GET` /api/asset/discoveryReport/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `protocol` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `GET` /api/layout/floorPlanLayout/{id}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `assets` (array)

        Changed items (object):

        * Changed property `accessState` (string)

            Added enum value:

            * `workOrderAssetStatusPlaceholder`
### `PUT` /api/layout/floorPlanLayout


#### Request:

Changed content type : `application/json`

* Changed property `assets` (array)

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `GET` /api/asset/monitorOnlyCommunicationSetting/{assetId}


### `PUT` /api/asset/monitorOnlyCommunicationSetting/{assetId}


### `GET` /api/asset/powerPath/{assetId}/ancestry


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `powerPathDeviceAssets` (array)

        Changed items (object):

        * Changed property `accessState` (string)

            Added enum value:

            * `workOrderAssetStatusPlaceholder`
### `PUT` /api/asset/rackShelf/{id}


#### Request:

Changed content type : `application/json`

* Changed property `accessState` (string)

    Added enum value:

    * `workOrderAssetStatusPlaceholder`
#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `POST` /api/asset/search


### `GET` /api/asset/shelvedAssets/{rackId}


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `GET` /api/asset/assets


#### Return Type:

Changed response : **200 OK**
> Success

* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum value:

        * `workOrderAssetStatusPlaceholder`
### `POST` /api/asset/assets


#### Request:

Changed content type : `application/json`

* Changed property `accessState` (string)

    Added enum value:

    * `workOrderAssetStatusPlaceholder`
#### Return Type:

Changed response : **201 Created**
> Created
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

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials


#### Request:

Changed content type : `application/json`

* Changed property `credential` (object)

    * Changed property `protocol` (string)

        Added enum value:

        * `basicHttpAndHttps`
        Removed enum value:

        * `http`
#### Return Type:

Changed response : **201 Created**
> Created
