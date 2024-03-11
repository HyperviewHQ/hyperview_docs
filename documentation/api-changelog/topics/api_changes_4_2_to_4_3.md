# API Changelog 4.2 to 4.3

## What's New

### `GET` /api/asset/assetTrackerMasterModuleData

> Retrieves all AssetTracker master module data.


### `GET` /api/setting/notificationChannels

> Returns a collection of notification channels.


### `POST` /api/setting/notificationChannels

> Creates a notification channel and returns its ID.


### `PUT` /api/setting/notificationChannels/{id}

> Updates a notification channel.


### `DELETE` /api/setting/notificationChannels/{id}

> Deletes a notification channel.


### `PUT` /api/setting/notificationChannels/test

> Verifies the notification channel webhook uri by attempting to send a test notification.


## What's Deleted

### `GET` /api/setting/credentials

> Returns an array of protocol credentials.


### `GET` /api/setting/credentials/{credentialId}

> Returns an individual credential.

> *These endpoints have moved to version 5 of the API.*

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


### `DELETE` /api/setting/equinixSmartViewIbxConfigurations/{configurationId}


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


### `GET` /api/asset/webInterfaceAddress/{assetId}


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


### `POST` /api/asset/bulk/assets/updatePhysicalPortNames


### `POST` /api/asset/bulk/assets/addPhysicalPorts


### `POST` /api/asset/bulk/assets/addPhysicalPort


### `POST` /api/asset/bulk/assets/addPatchPanelPhysicalPorts


### `POST` /api/asset/bulk/assets/addPatchPanelPhysicalPort


### `POST` /api/asset/buswayTapOff


### `DELETE` /api/asset/buswayTapOff/{buswayTapOffId}


### `PUT` /api/asset/buswayTapOff/{buswayTapOffId}


### `POST` /api/asset/circuitConnections


### `PUT` /api/asset/controlOperations


### `GET` /api/setting/credentials/{credentialId}/showPassword


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Added property `sshKey` (string)

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


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Added property `assetType` (string)

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
### `GET` /api/setting/documents/{documentId}


### `DELETE` /api/setting/documents/{documentId}


### `PUT` /api/setting/documents/{documentId}


### `POST` /api/setting/documents


### `GET` /api/asset/enumAssetProperties/{id}


#### Parameters:

Changed: `id` in `path`
> The ID of an enum.


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


### `GET` /api/asset/search/aggregations


#### Parameters:

Changed: `assetType` in `query`
> An asset type.


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


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Added property `notificationChannels` (array)

        Items (object):

        * Property `name` (string)

        * Property `webhookUri` (string)

        * Property `notificationChannelType` (string)

            Enum value:

            * `microsoftTeams`
        * Property `id` (string)

        * Property `associatedAlarmEventPoliciesExists` (boolean)

    * Added property `assetTypeIds` (array)

        Items (string):

    * Deleted property `assetTypeId` (string)

### `POST` /api/setting/alarmEventPolicies


#### Request:

Changed content type : `application/json`

* Added property `notificationChannels` (array)

    Items (string):

* Added property `filteredAssetTypeIds` (array)

* Deleted property `assetTypeId` (string)

### `DELETE` /api/setting/alarmEventPolicies/{id}


### `PUT` /api/setting/alarmEventPolicies/{id}


#### Request:

Changed content type : `application/json`

* Added property `notificationChannels` (array)

* Added property `filteredAssetTypeIds` (array)

* Deleted property `assetTypeId` (string)

#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Added property `notificationChannels` (array)

    * Added property `filteredAssetTypeIds` (array)

    * Deleted property `assetTypeId` (string)

### `PUT` /api/asset/alarmEvents/bulkAcknowledgementStates


### `GET` /api/asset/ancestors/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `tapeDrive`
### `DELETE` /api/asset/assetDashboardSettings/{assetId}


### `PUT` /api/asset/assetDashboardSettings/{assetId}


### `GET` /api/asset/assetDashboardSettings/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `tapeDrive`
### `DELETE` /api/asset/assetProperties/{id}


### `GET` /api/asset/assetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `type` (string)

        Added enum value:

        * `snmpPort`
### `PUT` /api/asset/assetProperties/{id}


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum value:

    * `snmpPort`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum value:

        * `snmpPort`
### `POST` /api/asset/assetProperties


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum value:

    * `snmpPort`
#### Return Type:

Changed response : **201 Created**
> Created


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum value:

        * `snmpPort`
### `GET` /api/setting/assetPropertyKeys


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum value:

        * `snmpPort`
    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum value:

        * `tapeDrive`
### `GET` /api/asset/assetTree/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `tapeDrive`
### `GET` /api/asset/assetTypeCount


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `tapeDrive`
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

* Changed property `assetTypeId` (string)

    Added enum value:

    * `tapeDrive`
Changed content type : `text/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `tapeDrive`
Changed content type : `application/*+json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `tapeDrive`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `tapeDrive`
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

        * `tapeDrive`
### `POST` /api/setting/bacnetIpDefinitions


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum value:

    * `tapeDrive`
### `DELETE` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `GET` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetType` (string)

        Added enum value:

        * `tapeDrive`
### `PUT` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum value:

    * `tapeDrive`
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

    Added enum value:

    * `snmpPort`
### `GET` /api/asset/buswayTapOff/{assetId}


### `POST` /api/asset/control/rackDoorElectronicLock


### `DELETE` /api/asset/customAssetProperties/{id}


### `GET` /api/asset/customAssetProperties/{id}


### `PUT` /api/asset/customAssetProperties/{id}


### `POST` /api/asset/customComponents


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum value:

    * `tapeDrive`
### `DELETE` /api/asset/customComponents/{id}


### `PUT` /api/asset/customComponents/{id}


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum value:

    * `tapeDrive`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum value:

        * `tapeDrive`
### `GET` /api/setting/customPropertySetting


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum value:

        * `tapeDrive`
### `POST` /api/setting/customPropertySetting


#### Request:

Changed content type : `application/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum value:

    * `tapeDrive`
### `DELETE` /api/setting/customPropertySetting/{customPropertySettingId}


### `PUT` /api/setting/customPropertySetting/{customPropertySettingId}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum value:

    * `tapeDrive`
Changed content type : `text/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum value:

    * `tapeDrive`
Changed content type : `application/*+json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum value:

    * `tapeDrive`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum value:

        * `tapeDrive`
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

        * `tapeDrive`
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

        Added enum value:

        * `tapeDrive`
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

        * `tapeDrive`
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

        * `tapeDrive`
### `POST` /api/setting/modbusTcpDefinitions


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum value:

    * `tapeDrive`
### `DELETE` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


### `GET` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetType` (string)

        Added enum value:

        * `tapeDrive`
### `PUT` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum value:

    * `tapeDrive`
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


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `providingSourceDeviceAssetType` (string)

        Added enum value:

        * `tapeDrive`
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

        * `tapeDrive`
    * Changed property `comparisonAssetPropertyKey1` (string)

        Added enum value:

        * `snmpPort`
### `POST` /api/setting/sensorThreshold


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `tapeDrive`
* Changed property `comparisonAssetPropertyKey1` (string)

    Added enum value:

    * `snmpPort`
### `DELETE` /api/setting/sensorThreshold/{sensorThresholdId}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `tapeDrive`
* Changed property `comparisonAssetPropertyKey1` (string)

    Added enum value:

    * `snmpPort`
### `GET` /api/setting/sensorTypeAssetType


#### Parameters:

Changed: `assetTypeId` in `query`
> Optional asset type to filter what sensor type maps are returned.


### `GET` /api/asset/sensors/{assetId}


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

        * `tapeDrive`
### `PUT` /api/setting/serviceNowCmdbIntegrationAssetType


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeIds` (array)

    Changed items (string):

    Added enum value:

    * `tapeDrive`
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

        Added enum value:

        * `volumeUnit`
### `PUT` /api/setting/systemSettings


#### Request:

Changed content type : `application/json`

Changed items (object):

* Changed property `id` (string)

    Added enum value:

    * `volumeUnit`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum value:

        * `volumeUnit`
### `GET` /api/setting/systemSettings/{systemSettingId}


#### Parameters:

Changed: `systemSettingId` in `path`
> ID of system setting.


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `id` (string)

        Added enum value:

        * `volumeUnit`
### `GET` /api/setting/systemSettings/dataCollector/{dataCollectorSetting}


### `PUT` /api/setting/systemSettings/dataCollector


### `GET` /api/user/userInboxNotifications/status


### `DELETE` /api/user/userInboxNotifications


### `PUT` /api/user/userInboxNotifications


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

        * `tapeDrive`
### `POST` /api/asset/workNotes


### `GET` /api/setting/applicationEventLogs


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `notificationChannelAdded`
        * `notificationChannelDeleted`
        * `notificationChannelNameUpdated`
        * `notificationChannelWebhookUriUpdated`
        * `alarmEventPolicyNotificationChannelAssociationAdded`
        * `alarmEventPolicyNotificationChannelAssociationRemoved`
        * `alarmEventPolicyAssetTypesUpdated`
        Removed enum values:

        * `customComponentUpdated`
        * `breakerNumberOfPolesUpdated`
        * `breakerRatingUpdated`
        * `outletTypeAdded`
        * `outletTypeDeleted`
        * `outletTypeUpdated`
        * `locationDescriptionAdded`
        * `locationDescriptionDeleted`
        * `locationDescriptionUpdated`
        * `noteAdded`
        * `noteDeleted`
        * `noteUpdated`
        * `serviceNowCmdbConfigurationUpdated`
    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum value:

            * `iso`

            Removed enum value:

            * `osi`
### `GET` /api/asset/assetChangeEventLogs


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventType` (string)

        Added enum values:

        * `notificationChannelAdded`
        * `notificationChannelDeleted`
        * `notificationChannelNameUpdated`
        * `notificationChannelWebhookUriUpdated`
        * `alarmEventPolicyNotificationChannelAssociationAdded`
        * `alarmEventPolicyNotificationChannelAssociationRemoved`
        * `alarmEventPolicyAssetTypesUpdated`
        Removed enum values:

        * `customComponentUpdated`
        * `breakerNumberOfPolesUpdated`
        * `breakerRatingUpdated`
        * `outletTypeAdded`
        * `outletTypeDeleted`
        * `outletTypeUpdated`
        * `locationDescriptionAdded`
        * `locationDescriptionDeleted`
        * `locationDescriptionUpdated`
        * `noteAdded`
        * `noteDeleted`
        * `noteUpdated`
        * `serviceNowCmdbConfigurationUpdated`
    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum value:

            * `iso`

            Removed enum value:

            * `osi`
### `GET` /api/asset/assetTrackerContainedAssets


### `DELETE` /api/asset/assets/{id}


### `GET` /api/asset/assets/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `tapeDrive`
### `PUT` /api/asset/assets/{id}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `tapeDrive`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `tapeDrive`
### `GET` /api/asset/circuitConnections/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `terminationADeviceAssetTypeId` (string)

        Added enum value:

        * `tapeDrive`
### `POST` /api/asset/circuits


### `DELETE` /api/asset/circuits/{id}


### `GET` /api/asset/circuits/{id}


### `PUT` /api/asset/circuits/{id}


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

        * `tapeDrive`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum value:

            * `snmpPort`
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

        * `tapeDrive`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum value:

            * `snmpPort`
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

        * `tapeDrive`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum value:

            * `snmpPort`
### `GET` /api/asset/containedAssets/elevation/{parentId}


### `POST` /api/setting/credentials


### `DELETE` /api/setting/credentials/{credentialId}


### `PUT` /api/setting/credentials/{credentialId}


### `GET` /api/asset/discoveryReport/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum value:

            * `iso`

            Removed enum value:

            * `osi`
### `GET` /api/layout/floorPlanLayout/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assets` (array)

        Changed items (object):

        * Changed property `assetType` (string)

            Added enum value:

            * `tapeDrive`
        * Changed property `shapeType` (string)

            Added enum value:

            * `triangle`
### `PUT` /api/layout/floorPlanLayout


#### Request:

Changed content type : `application/json`

* Changed property `assets` (array)

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum value:

        * `tapeDrive`
    * Changed property `shapeType` (string)

        Added enum value:

        * `triangle`
### `GET` /api/asset/monitorOnlyCommunicationSetting/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum value:

            * `iso`

            Removed enum value:

            * `osi`
### `PUT` /api/asset/monitorOnlyCommunicationSetting/{assetId}


#### Request:

Changed content type : `application/json`

* Changed property `ipAddress` (object)

    * Changed property `addressFamily` (string)

        Added enum value:

        * `iso`

        Removed enum value:

        * `osi`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum value:

            * `iso`

            Removed enum value:

            * `osi`
### `POST` /api/asset/physicalConnections


### `DELETE` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalConnections/{id}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `terminationADeviceAssetTypeId` (string)

        Added enum value:

        * `tapeDrive`
### `PUT` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalPorts/detailed/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `physicalPortConnections` (array)

        Changed items (object):

        * Changed property `terminationAAssetTypeId` (string)

            Added enum value:

            * `tapeDrive`
### `GET` /api/asset/powerPath/{assetId}/ancestry


### `PUT` /api/asset/rackShelf/{id}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `tapeDrive`
#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `tapeDrive`
### `POST` /api/asset/search


### `GET` /api/asset/shelvedAssets/{rackId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `tapeDrive`
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

    * Changed property `assetTypeId` (string)

        Added enum value:

        * `tapeDrive`
### `POST` /api/asset/assets


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum value:

    * `tapeDrive`
* Changed property `creatableAssetProperties` (array)

    Changed items (object):

    * Changed property `type` (string)

        Added enum value:

        * `snmpPort`
* Changed property `sensorMonitoringProfile` (object)

    * Changed property `ipAddress` (object)

        * Changed property `addressFamily` (string)

            Added enum value:

            * `iso`

            Removed enum value:

            * `osi`
### `GET` /api/asset/controlOperations/{assetId}


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `controlCredential` (object)

        * Deleted property `sshCertificateCredential` (object)

### `GET` /api/setting/discoveryProtocolSettings/protocolCredentials


#### Return Type:

Changed response : **200 OK**
> Success


* Changed content type : `application/json`

    Changed items (object):

    * Deleted property `sshCertificateCredential` (object)

### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials


