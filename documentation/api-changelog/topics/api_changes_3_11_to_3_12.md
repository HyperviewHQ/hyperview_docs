# API Changelog 3.11 to 3.12

## What's New

### `POST` /api/asset/physicalConnections

> Creates a physical connection and returns its ID.


### `GET` /api/asset/physicalConnections/{id}

> Returns an individual physical connection.


### `PUT` /api/asset/physicalConnections/{id}

> Updates a physical connection.


### `DELETE` /api/asset/physicalConnections/{id}

> Deletes a physical connection.


### `POST` /api/asset/physicalPorts

> Creates a physical port and returns its ID.


### `POST` /api/asset/physicalPorts/patchPanel

> Creates a physical port for a patch panel and returns its ID.


### `POST` /api/asset/physicalPorts/multiple

> Creates multiple physical ports.


### `POST` /api/asset/physicalPorts/patchPanel/multiple

> Creates multiple physical ports for a patch panel.


### `GET` /api/asset/physicalPorts/{id}

> Returns a list of physical ports.


### `PUT` /api/asset/physicalPorts/{id}

> Updates a physical port.


### `DELETE` /api/asset/physicalPorts/{id}

> Deletes a physical port.


### `PUT` /api/asset/physicalPorts/patchPanel/{id}

> Updates a patch panel physical port.


### `GET` /api/asset/physicalPorts/detailed/{assetId}

> Returns a list of physical ports with connection information.


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


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type ID.


### `POST` /api/product/manufacturers


### `DELETE` /api/product/manufacturers/{id}


### `GET` /api/product/manufacturers/{id}


### `PUT` /api/product/manufacturers/{id}


### `POST` /api/asset/merge


### `PUT` /api/asset/pduBreakers/{pduBreakerId}


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


### `POST` /api/asset/alarmEvents


### `GET` /api/asset/alarmEvents


### `GET` /api/asset/ancestors/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
### `DELETE` /api/asset/assetProperties/{id}


### `GET` /api/asset/assetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `type` (string)

        Added enum values:

        * `portNumber`
        * `physicalConnectionType`
        * `physicalConnectorType`
        * `length`
        * `portType`
        * `portSide`
        Removed enum value:

        * `port`
### `PUT` /api/asset/assetProperties/{id}


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum values:

    * `portNumber`
    * `physicalConnectionType`
    * `physicalConnectorType`
    * `length`
    * `portType`
    * `portSide`
    Removed enum value:

    * `port`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum values:

        * `portNumber`
        * `physicalConnectionType`
        * `physicalConnectorType`
        * `length`
        * `portType`
        * `portSide`
        Removed enum value:

        * `port`
### `POST` /api/asset/assetProperties


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum values:

    * `portNumber`
    * `physicalConnectionType`
    * `physicalConnectorType`
    * `length`
    * `portType`
    * `portSide`
    Removed enum value:

    * `port`
#### Return Type:

Changed response : **201 Created**
> Created


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum values:

        * `portNumber`
        * `physicalConnectionType`
        * `physicalConnectorType`
        * `length`
        * `portType`
        * `portSide`
        Removed enum value:

        * `port`
### `GET` /api/setting/assetPropertyKeys


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum values:

        * `portNumber`
        * `physicalConnectionType`
        * `physicalConnectorType`
        * `length`
        * `portType`
        * `portSide`
        Removed enum value:

        * `port`
    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `GET` /api/asset/assetTrackerAlarmEvents


### `GET` /api/asset/assetTrackerMasterModuleData


### `GET` /api/asset/assetTree/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `GET` /api/asset/assetTypeCount


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `GET` /api/setting/assetTypeDashboardSettings/{assetTypeId}


#### Parameters:

Changed: `assetTypeId` in `path`
> An asset type ID.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `PUT` /api/setting/assetTypeDashboardSettings


#### Request:

Changed content type : `application/json-patch+json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
Changed content type : `text/json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
Changed content type : `application/*+json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `GET` /api/asset/assetsByType


#### Parameters:

Changed: `assetType` in `query`
> An asset type.


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

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `POST` /api/setting/bacnetIpDefinitions


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
### `DELETE` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `GET` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetType` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `PUT` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
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

    * `portNumber`
    * `physicalConnectionType`
    * `physicalConnectorType`
    * `length`
    * `portType`
    * `portSide`
    Removed enum value:

    * `port`
### `GET` /api/asset/buswayTapOff/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
### `GET` /api/asset/containedAssets/general/{assetId}


### `POST` /api/asset/control/rackDoorElectronicLock


### `DELETE` /api/asset/customAssetProperties/{id}


### `GET` /api/asset/customAssetProperties/{id}


### `PUT` /api/asset/customAssetProperties/{id}


#### Request:

Changed content type : `application/json`

* Deleted property `customAssetPropertyGroupId` (string)

* Deleted property `name` (string)

* Deleted property `groupName` (string)

* Deleted property `dataSource` (string)

* Deleted property `updatedDateTime` (string)

* Deleted property `unit` (string)

### `POST` /api/asset/customAssetProperties


#### Request:

Changed content type : `application/json`

* Deleted property `customAssetPropertyGroupId` (string)

* Deleted property `name` (string)

* Deleted property `groupName` (string)

* Deleted property `dataSource` (string)

* Deleted property `updatedDateTime` (string)

* Deleted property `unit` (string)

### `GET` /api/asset/customComponents


### `POST` /api/asset/customComponents


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
### `DELETE` /api/asset/customComponents/{id}


### `PUT` /api/asset/customComponents/{id}


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `GET` /api/setting/customPropertySetting


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `POST` /api/setting/customPropertySetting


#### Request:

Changed content type : `application/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
### `DELETE` /api/setting/customPropertySetting/{customPropertySettingId}


### `PUT` /api/setting/customPropertySetting/{customPropertySettingId}


#### Request:

Changed content type : `application/json-patch+json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
Changed content type : `application/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
Changed content type : `text/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
Changed content type : `application/*+json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
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

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `assetTypeCategory` (string)

        Added enum values:

        * `physicalNetwork`
        * `physicalNetworkComponent`
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


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
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

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `assetTypeCategory` (string)

        Added enum values:

        * `physicalNetwork`
        * `physicalNetworkComponent`
    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
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

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `POST` /api/setting/modbusTcpDefinitions


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
### `DELETE` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


### `GET` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetType` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `PUT` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
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


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
### `POST` /api/asset/pduBreakers


### `GET` /api/asset/pduBreakers


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `consumingPowerDestinationAssetAccessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
### `GET` /api/asset/powerPath/{assetId}/children


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
### `POST` /api/asset/powerSourceAssociations


### `GET` /api/asset/powerSourceAssociations


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `providingSourceDeviceAssetType` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `GET` /api/product/productPropertyKeys/{productTypeId}


### `GET` /api/product/products


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type ID.


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


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `comparisonAssetPropertyKey1` (string)

        Added enum values:

        * `portNumber`
        * `physicalConnectionType`
        * `physicalConnectorType`
        * `length`
        * `portType`
        * `portSide`
        Removed enum value:

        * `port`
### `POST` /api/setting/sensorThreshold


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
* Changed property `comparisonAssetPropertyKey1` (string)

    Added enum values:

    * `portNumber`
    * `physicalConnectionType`
    * `physicalConnectorType`
    * `length`
    * `portType`
    * `portSide`
    Removed enum value:

    * `port`
### `DELETE` /api/setting/sensorThreshold/{sensorThresholdId}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
* Changed property `comparisonAssetPropertyKey1` (string)

    Added enum values:

    * `portNumber`
    * `physicalConnectionType`
    * `physicalConnectorType`
    * `length`
    * `portType`
    * `portSide`
    Removed enum value:

    * `port`
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

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
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


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeIds` (array)

        Changed items (string):

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `PUT` /api/setting/serviceNowCmdbIntegrationAssetType


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeIds` (array)

    Changed items (string):

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
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

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
### `POST` /api/asset/workNotes


### `GET` /api/setting/applicationEventLogs


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `connectionAdded`
        * `connectionNameUpdated`
        * `connectionConnectedToAsset`
        * `connectionDisconnectedFromAsset`
        * `connectionDeleted`
        * `connectionTerminationUpdated`
### `GET` /api/asset/assetChangeEventLogs


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `connectionAdded`
        * `connectionNameUpdated`
        * `connectionConnectedToAsset`
        * `connectionDisconnectedFromAsset`
        * `connectionDeleted`
        * `connectionTerminationUpdated`
### `GET` /api/asset/assetTrackerContainedAssets


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
### `DELETE` /api/asset/assets/{id}


### `GET` /api/asset/assets/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
    * Changed property `assetTypeId` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `assetTypeCategory` (string)

        Added enum values:

        * `physicalNetwork`
        * `physicalNetworkComponent`
### `PUT` /api/asset/assets/{id}


#### Request:

Changed content type : `application/json`

* Changed property `accessState` (string)

    Added enum values:

    * `connectionAssetPlaceholder`
    * `connectionTerminationAssetPlaceholder`
* Changed property `assetTypeId` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
* Changed property `assetTypeCategory` (string)

    Added enum values:

    * `physicalNetwork`
    * `physicalNetworkComponent`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
    * Changed property `assetTypeId` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `assetTypeCategory` (string)

        Added enum values:

        * `physicalNetwork`
        * `physicalNetworkComponent`
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

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `portNumber`
            * `physicalConnectionType`
            * `physicalConnectorType`
            * `length`
            * `portType`
            * `portSide`
            Removed enum value:

            * `port`
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

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `portNumber`
            * `physicalConnectionType`
            * `physicalConnectorType`
            * `length`
            * `portType`
            * `portSide`
            Removed enum value:

            * `port`
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

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `portNumber`
            * `physicalConnectionType`
            * `physicalConnectorType`
            * `length`
            * `portType`
            * `portSide`
            Removed enum value:

            * `port`
### `GET` /api/asset/containedAssets/elevation/{parentId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
### `GET` /api/asset/controlCredentialAssociation/{assetId}


### `GET` /api/setting/credentials


### `POST` /api/setting/credentials


### `DELETE` /api/setting/credentials/{credentialId}


### `GET` /api/setting/credentials/{credentialId}


### `PUT` /api/setting/credentials/{credentialId}


### `GET` /api/asset/discoveryReport/{assetId}


### `GET` /api/layout/floorPlanLayout/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assets` (array)

        Changed items (object):

        * Changed property `assetType` (string)

            Added enum values:

            * `physicalConnection`
            * `physicalPort`
        * Changed property `accessState` (string)

            Added enum values:

            * `connectionAssetPlaceholder`
            * `connectionTerminationAssetPlaceholder`
### `PUT` /api/layout/floorPlanLayout


#### Request:

Changed content type : `application/json`

* Changed property `assets` (array)

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
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

            Added enum values:

            * `connectionAssetPlaceholder`
            * `connectionTerminationAssetPlaceholder`
### `PUT` /api/asset/rackShelf/{id}


#### Request:

Changed content type : `application/json`

* Changed property `accessState` (string)

    Added enum values:

    * `connectionAssetPlaceholder`
    * `connectionTerminationAssetPlaceholder`
* Changed property `assetTypeId` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
* Changed property `assetTypeCategory` (string)

    Added enum values:

    * `physicalNetwork`
    * `physicalNetworkComponent`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
    * Changed property `assetTypeId` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `assetTypeCategory` (string)

        Added enum values:

        * `physicalNetwork`
        * `physicalNetworkComponent`
### `POST` /api/asset/search


### `GET` /api/asset/shelvedAssets/{rackId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
    * Changed property `assetTypeId` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `assetTypeCategory` (string)

        Added enum values:

        * `physicalNetwork`
        * `physicalNetworkComponent`
### `GET` /api/asset/workNotes/asset/{assetId}


### `DELETE` /api/asset/workNotes/{workNoteId}


### `PUT` /api/asset/workNotes/{workNoteId}


### `GET` /api/asset/workNotes/{workNoteId}


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

    * Changed property `accessState` (string)

        Added enum values:

        * `connectionAssetPlaceholder`
        * `connectionTerminationAssetPlaceholder`
    * Changed property `assetTypeId` (string)

        Added enum values:

        * `physicalConnection`
        * `physicalPort`
    * Changed property `assetTypeCategory` (string)

        Added enum values:

        * `physicalNetwork`
        * `physicalNetworkComponent`
### `POST` /api/asset/assets


#### Request:

Changed content type : `application/json`

* Changed property `accessState` (string)

    Added enum values:

    * `connectionAssetPlaceholder`
    * `connectionTerminationAssetPlaceholder`
* Changed property `assetTypeId` (string)

    Added enum values:

    * `physicalConnection`
    * `physicalPort`
* Changed property `assetTypeCategory` (string)

    Added enum values:

    * `physicalNetwork`
    * `physicalNetworkComponent`
* Changed property `creatableAssetProperties` (array)

    Changed items (object):

    * Changed property `type` (string)

        Added enum values:

        * `portNumber`
        * `physicalConnectionType`
        * `physicalConnectorType`
        * `length`
        * `portType`
        * `portSide`
        Removed enum value:

        * `port`
### `GET` /api/asset/controlOperations/{assetId}


### `GET` /api/setting/discoveryProtocolSettings/protocolCredentials


### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials


