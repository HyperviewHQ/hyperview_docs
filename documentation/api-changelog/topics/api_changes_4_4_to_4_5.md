# API Changelog 4.3 to 4.4

## What's New

### `GET` /api/reportSetting/reportPages/{section}

> Returns a list of report pages of a section.


### `GET` /api/asset/widget/assetNetworkWidgetIpAddress/{assetId}

> Returns a collection of network widget IP address information.


### `GET` /api/asset/widget/assetNetworkWidgetHost/{assetId}

> Returns a collection of network widget host information.


## What's Changed

### `PUT` /api/asset/alarmEvents/close/{alarmEventId}


#### Return Type:

Changed response : **200 OK**
> OK


* New content type : `application/json`

### `PUT` /api/asset/alarmEvents/bulkClose


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/assetTrackerMasterModuleData/{id}


### `GET` /api/layout/backgroundImages/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/layout/backgroundImages/{id}


### `DELETE` /api/asset/businessEntityAssociations/asset/{assetId}


### `DELETE` /api/asset/circuitConnections/{circuitId}/connections/{connectionId}


### `GET` /api/asset/controlDataCollector/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/dataCollectorToken


### `DELETE` /api/setting/discoveryProtocolSettings/ports/{portId}


### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials/{protocolCredentialId}


### `DELETE` /api/setting/discoveryProtocolSettings/protocolCredentials/{protocolCredentialId}


### `POST` /api/setting/discoveryRunner/{discoveryId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/discoveryRunner/{discoveryId}/abort


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/documentAccessPolicies/{documentId}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/documentAccessPolicies/{documentId}


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/documentAssociations/{assetDocumentAssociationId}


### `DELETE` /api/setting/equinixSmartViewIbxConfigurations/{configurationId}


### `GET` /api/product/firmwareDownload/installFile/{firmwareVersionId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/product/firmwareDownload/releaseNote/{firmwareVersionId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/layout/floorPlanLayout/racksInRow/{rackId}


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/indirectSensors/{sensorId}


### `PUT` /api/asset/manualSensors/numericSensor/{sensorId}/value


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/monitorOnlyCommunicationSetting/{assetId}/refreshSensors


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/pduBreakers/breakerStatus/{pduBreakerId}


#### Return Type:

Changed response : **200 OK**
> OK


* New content type : `application/json`

### `DELETE` /api/asset/powerSourceAssociations/{id}


### `GET` /api/layout/rackSearch


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/savedSearches/user/{id}


### `DELETE` /api/asset/savedSearches/global/{id}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}/enabledState


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/sensors/{id}


### `PUT` /api/setting/serviceNowCmdbIntegration/resetLastSyncDate


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/serviceNowCmdbIntegration/initiateSync


### `GET` /api/user/userInboxNotifications/{userInboxNotificationId}


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/product/userProductImages/{id}


### `GET` /api/asset/webInterfaceAddress/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/workNoteDocuments/{workNoteDocumentId}


### `POST` /api/asset/workOrderItemStatuses/manuallyComplete


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/workOrders/completed


### `POST` /api/asset/workOrders/manuallyCompleteWorkOrder/{workOrderId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/accessPolicies


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/accessPolicies


### `DELETE` /api/setting/accessPolicies/{accessPolicyId}


### `PUT` /api/setting/accessPolicies/{accessPolicyId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/accessPolicies/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/accessPolicies/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/accessPolicyGroups


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/accessPolicyGroups/{accessPolicyId}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/alarmEvents/acknowledgementState/{alarmEventId}


#### Return Type:

Changed response : **200 OK**
> OK


* New content type : `application/json`

### `POST` /api/asset/assetFirmware


### `GET` /api/asset/assetPropertyValues/strings/{assetPropertyKey}


#### Parameters:

Changed: `assetPropertyKey` in `path`
> A asset property key.


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/availableFirmwareVersions/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/availablePowerSources/outlets/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/availablePowerSources/pduBreakers/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/availablePowerSources/buswayTapOffs/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/availableRackSpace/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/availableRackSpace/{id}/sensors/{sensorId}


#### Return Type:

Changed response : **200 OK**
> OK

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


### `POST` /api/asset/businessEntities


### `DELETE` /api/asset/businessEntities/{id}


### `GET` /api/asset/businessEntities/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/businessEntities/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/businessEntityAddresses/{businessEntityId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/businessEntityAddresses


### `DELETE` /api/asset/businessEntityAddresses/{id}


### `PUT` /api/asset/businessEntityAddresses/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/businessEntityContacts/{businessEntityId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/businessEntityContacts


### `DELETE` /api/asset/businessEntityContacts/{id}


### `PUT` /api/asset/businessEntityContacts/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/buswayTapOff


### `DELETE` /api/asset/buswayTapOff/{buswayTapOffId}


### `PUT` /api/asset/buswayTapOff/{buswayTapOffId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/circuitConnections


### `PUT` /api/asset/controlOperations


### `GET` /api/setting/credentials/{credentialId}/showPassword


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/customComponents/assetPropertyValueStrings


#### Parameters:

Changed: `assetPropertyKey` in `query`
> An asset property key.


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/customPropertyGroup


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/customPropertyGroup


### `DELETE` /api/setting/customPropertyGroup/{customPropertyGroupId}


### `PUT` /api/setting/customPropertyGroup/{customPropertyGroupId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/dataCollector


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/dataCollector/retire


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/dataCollectors/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/documentAssociations


### `GET` /api/setting/documents/{documentId}


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/setting/documents/{documentId}


### `PUT` /api/setting/documents/{documentId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/documents


### `GET` /api/asset/enumAssetProperties/{id}


#### Parameters:

Changed: `id` in `path`
> The ID of an enum.


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/enumCustomAssetProperties/{customAssetPropertyKeyId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/equinixSmartViewConfiguration


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/equinixSmartViewConfiguration


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/equinixSmartViewConfiguration/verifyAuthenticationConfiguration


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/equinixSmartViewIbxConfigurations


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/equinixSmartViewIbxConfigurations


### `PUT` /api/setting/equinixSmartViewIbxConfigurations/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/equinixSmartViewIntegration/initiateSync


### `POST` /api/asset/eventNotificationRecipient/{assetId}


### `DELETE` /api/asset/eventNotificationRecipient/{assetId}


### `GET` /api/asset/eventNotificationRecipient/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/product/firmwareVersions/{firmwareVersionId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/product/firmwareVersions/firmware/{firmwareId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/product/image


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/manualSensors


### `GET` /api/product/manufacturers


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type ID.


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/product/manufacturers


### `DELETE` /api/product/manufacturers/{id}


### `GET` /api/product/manufacturers/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/product/manufacturers/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/merge


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/pduBreakers/{pduBreakerId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/physicalPorts


### `POST` /api/asset/physicalPorts/patchPanel


### `PUT` /api/asset/physicalPorts/multiple


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/physicalPorts/multiple


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/physicalPorts/multiple


### `PUT` /api/asset/physicalPorts/patchPanel/multiple


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/physicalPorts/patchPanel/multiple


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/physicalPorts/{id}


### `GET` /api/asset/physicalPorts/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/physicalPorts/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/physicalPorts/patchPanel/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/product/productProperties/{productId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/product/productProperties/{productId}


### `DELETE` /api/product/productProperties/{id}


### `PUT` /api/product/productProperties/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/product/productTypes


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/search/aggregations


#### Parameters:

Changed: `assetType` in `query`
> An asset type.


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/sensors/simpleDirect/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/serviceNowCmdbConfigurationOverview


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/serviceNowCmdbConfigurationOverview


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/serviceNowCmdbIntegration/verifyAuthenticationConfiguration


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/software/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/user/users


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/user/users/accessPolicyUsers/{accessPolicyId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/user/users/access/{accessPolicyId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/widget/assetPropertyListWidget/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/widget/assetLifecycleWidget/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/widget/assetsByTypeWidget/{locationId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/widget/assetSummaryWidget/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/setting/alarmEventPolicies/{id}


### `PUT` /api/setting/alarmEventPolicies/{id}


#### Request:

Changed content type : `application/json`

* Changed property `filteredAssetTypeIds` (array)

    Changed items (string):

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `filteredAssetTypeIds` (array)

        Changed items (string):

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `PUT` /api/asset/alarmEvents/bulkAcknowledgementStates


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/ancestors/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `DELETE` /api/asset/assetDashboardSettings/{assetId}


### `PUT` /api/asset/assetDashboardSettings/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/assetDashboardSettings/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `DELETE` /api/asset/assetProperties/{id}


### `GET` /api/asset/assetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Added property `isDeletable` (boolean)

    * Changed property `type` (string)

        Added enum values:

        * `averageScope2CarbonEmissionOffsetPercent`
        * `workloadType`
        * `pueSetting`
### `PUT` /api/asset/assetProperties/{id}


#### Request:

Changed content type : `application/json`

* Added property `isDeletable` (boolean)

* Changed property `type` (string)

    Added enum values:

    * `averageScope2CarbonEmissionOffsetPercent`
    * `workloadType`
    * `pueSetting`
#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Added property `isDeletable` (boolean)

    * Changed property `type` (string)

        Added enum values:

        * `averageScope2CarbonEmissionOffsetPercent`
        * `workloadType`
        * `pueSetting`
### `POST` /api/asset/assetProperties


#### Request:

Changed content type : `application/json`

* Added property `isDeletable` (boolean)

* Changed property `type` (string)

    Added enum values:

    * `averageScope2CarbonEmissionOffsetPercent`
    * `workloadType`
    * `pueSetting`
#### Return Type:

Changed response : **201 Created**
> Created


* Changed content type : `application/json`

    * Added property `isDeletable` (boolean)

    * Changed property `type` (string)

        Added enum values:

        * `averageScope2CarbonEmissionOffsetPercent`
        * `workloadType`
        * `pueSetting`
### `GET` /api/setting/assetPropertyKeys


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum values:

        * `averageScope2CarbonEmissionOffsetPercent`
        * `workloadType`
        * `pueSetting`
    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/asset/assetTrackerMasterModuleData


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `status` (string)

        Added enum value:

        * `doesNotFit`
### `GET` /api/asset/assetTree/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/asset/assetTypeCount


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
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

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
Changed content type : `text/json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
Changed content type : `application/*+json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `POST` /api/layout/backgroundImages


### `GET` /api/layout/backgroundImages


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/bacnetIpDefinitions


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type to filter the results.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `POST` /api/setting/bacnetIpDefinitions


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
### `DELETE` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `GET` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `PUT` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/bulk/assets/updateCustomProperty


### `POST` /api/asset/bulk/assets/updateLifecycle


### `POST` /api/asset/bulk/assets/updateAssetProperty


#### Request:

Changed content type : `application/json`

* Changed property `assetPropertyKeyId` (string)

    Added enum values:

    * `averageScope2CarbonEmissionOffsetPercent`
    * `workloadType`
    * `pueSetting`
### `GET` /api/asset/buswayTapOff/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/control/rackDoorElectronicLock


### `DELETE` /api/asset/customAssetProperties/{id}


### `GET` /api/asset/customAssetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/customAssetProperties/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/customComponents


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
### `DELETE` /api/asset/customComponents/{id}


### `PUT` /api/asset/customComponents/{id}


#### Request:

Changed content type : `application/json`

* Changed property `type` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `type` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/setting/customPropertySetting


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `POST` /api/setting/customPropertySetting


#### Request:

Changed content type : `application/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
### `DELETE` /api/setting/customPropertySetting/{customPropertySettingId}


### `PUT` /api/setting/customPropertySetting/{customPropertySettingId}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
Changed content type : `text/json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
Changed content type : `application/*+json`

* Changed property `assetTypes` (array)

    Changed items (string):

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypes` (array)

        Changed items (string):

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/setting/discoveries


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/discoveries


### `GET` /api/setting/discoveries/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/setting/discoveries/{discoveryId}


### `PUT` /api/setting/discoveries/{discoveryId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/discoveries/{discoveryId}/schedule


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/discoveryAssetHistories/{discoveryHistoryId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/setting/discoveryHistories


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/discoveryHistories/{discoveryHistoryId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/discoveryProtocolSettings/ports


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/discoveryProtocolSettings/ports


### `GET` /api/setting/discoveryProtocolSettings/protocols


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/discoveryProtocolSettings/protocols


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/discoveryProtocolSettings/protocols/{protocolId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/discoveryRanges


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/discoveryRanges


### `DELETE` /api/setting/discoveryRanges/{id}


### `PUT` /api/setting/discoveryRanges/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/discoverySchedules


### `DELETE` /api/setting/discoverySchedules/{discoveryScheduleId}


### `PUT` /api/setting/discoverySchedules/{discoveryScheduleId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/documentAssociations/documentDetails/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/documentAssociations/assets/{documentId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/setting/documentDetails/{documentDetailsId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/documentDetails


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/layout/floorPlanLayout/childrenState/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/layout/floorPlanLayoutGridInformation/{locationId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/hierarchy


#### Parameters:

Changed: `assetType` in `query`
> An optional list of asset types to filter what assets are returned.


Changed: `hasChildrenAssetType` in `query`
> An optional list of asset types to filter what assets are used when determining if an asset
> has children.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `POST` /api/asset/indirectSensors


### `GET` /api/layout/layoutModeSetting/{locationId}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/layout/layoutModeSetting


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/layout/layoutModeSetting


### `GET` /api/setting/license


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/lifecycleProperties/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/lifecycleProperties/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/location/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/layout/mapLocations/{locationId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/modbusTcpDefinitions


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type to filter the results.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `POST` /api/setting/modbusTcpDefinitions


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
### `DELETE` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


### `GET` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `PUT` /api/setting/modbusTcpDefinitions/{modbusTcpDefinitionId}


#### Request:

Changed content type : `application/json`

* Changed property `assetType` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}


### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNonNumericSensorId}


### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpNonNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNonNumericSensorId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}


### `DELETE` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNumericSensorId}


### `PUT` /api/setting/modbusTcpDefinitions/modbusTcpNumericSensors/{modbusTcpDefinitionId}/{modbusTcpNumericSensorId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/notificationChannels


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/notificationChannels


### `DELETE` /api/setting/notificationChannels/{id}


### `PUT` /api/setting/notificationChannels/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/notificationChannels/test


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/outlets


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/outletsControl


### `GET` /api/asset/pduBreakers


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/powerPath/{assetId}/children


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/powerSourceAssociations


### `GET` /api/asset/powerSourceAssociations


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `providingSourceDeviceAssetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/product/productPropertyKeys/{productTypeId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/product/products


#### Parameters:

Changed: `assetType` in `query`
> An optional asset type ID.


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/product/products


### `GET` /api/product/products/smartMatch


#### Parameters:

Changed: `assetType` in `query`
> An asset type.


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/product/products/{id}


### `PUT` /api/product/products/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/product/products/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/rackSecurity/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/rackSecurity/{locationId}/racks


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/savedSearches


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/savedSearches


### `GET` /api/asset/savedSearches/global


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/sensorThreshold


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
    * Changed property `comparisonAssetPropertyKey1` (string)

        Added enum values:

        * `averageScope2CarbonEmissionOffsetPercent`
        * `workloadType`
        * `pueSetting`
### `POST` /api/setting/sensorThreshold


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
* Changed property `comparisonAssetPropertyKey1` (string)

    Added enum values:

    * `averageScope2CarbonEmissionOffsetPercent`
    * `workloadType`
    * `pueSetting`
### `DELETE` /api/setting/sensorThreshold/{sensorThresholdId}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
* Changed property `comparisonAssetPropertyKey1` (string)

    Added enum values:

    * `averageScope2CarbonEmissionOffsetPercent`
    * `workloadType`
    * `pueSetting`
#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/sensorTypeAssetType


#### Parameters:

Changed: `assetTypeId` in `query`
> Optional asset type to filter what sensor type maps are returned.


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/sensors/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/sensorsDailySummaries/numeric


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/sensorsDailySummaries/numeric/{timeRange}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/sensorsDailySummaries/string


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/sensorsDailySummaries/string/{timeRange}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/sensorsDataPoints/numeric


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/sensorsDataPoints/numeric/{timeRange}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/sensorsDataPoints/string


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/sensorsDataPoints/string/{timeRange}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/serviceNowCmdbConfigurationSchedule


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/serviceNowCmdbConfigurationSchedule


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/serviceNowCmdbIntegrationAssetType


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypeIds` (array)

        Changed items (string):

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `PUT` /api/setting/serviceNowCmdbIntegrationAssetType


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeIds` (array)

    Changed items (string):

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/serviceNowCmdbIntegrationFacts


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/serviceNowCmdbIntegrationFacts


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/systemSettings


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/systemSettings


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/systemSettings/{systemSettingId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/setting/systemSettings/dataCollector/{dataCollectorSetting}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/setting/systemSettings/dataCollector


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/user/userInboxNotifications/status


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/user/userInboxNotifications


### `PUT` /api/user/userInboxNotifications


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/product/userProductImages/{productId}


### `GET` /api/product/userProductImages/{productId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/watchedAssets


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `POST` /api/asset/workNotes


### `POST` /api/setting/alarmEventPolicies


#### Request:

Changed content type : `application/json`

* Changed property `filteredAssetTypeIds` (array)

    Changed items (string):

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
### `GET` /api/setting/alarmEventPolicies


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeIds` (array)

        Changed items (string):

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/setting/applicationEventLogs


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/assetChangeEventLogs


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/assetTrackerContainedAssets


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/assets/{id}


### `GET` /api/asset/assets/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `PUT` /api/asset/assets/{id}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/asset/circuitConnections/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Deleted property `businessEntityAccessState` (string)

    * Changed property `terminationADeviceAssetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `POST` /api/asset/circuits


### `DELETE` /api/asset/circuits/{id}


### `GET` /api/asset/circuits/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/circuits/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/componentAssets/{assetId}


#### Parameters:

Changed: `includeAssetTypes` in `query`
> Optional list of included asset types.


Changed: `excludeAssetTypes` in `query`
> Optional list of excluded asset types.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `averageScope2CarbonEmissionOffsetPercent`
            * `workloadType`
            * `pueSetting`
### `GET` /api/asset/componentAssets/{assetId}/virtualComponents


#### Parameters:

Changed: `includeAssetTypes` in `query`
> Optional list of included asset types.


Changed: `excludeAssetTypes` in `query`
> Optional list of excluded asset types.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
    * Changed property `properties` (array)

        Changed items (object):

        * Added property `isDeletable` (boolean)

        * Changed property `type` (string)

            Added enum values:

            * `averageScope2CarbonEmissionOffsetPercent`
            * `workloadType`
            * `pueSetting`
### `GET` /api/asset/componentAssets/{assetId}/networkComponents


#### Parameters:

Changed: `includeAssetTypes` in `query`
> Optional list of included asset types.


Changed: `excludeAssetTypes` in `query`
> Optional list of excluded asset types.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
    * Changed property `properties` (array)

        Changed items (object):

        * Changed property `type` (string)

            Added enum values:

            * `averageScope2CarbonEmissionOffsetPercent`
            * `workloadType`
            * `pueSetting`
### `GET` /api/asset/containedAssets/elevation/{parentId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/setting/credentials


#### Request:

Changed content type : `application/json`

* Changed property `associatedDiscoveries` (array)

    Changed items (object):

    New required properties:
    - `name`

### `DELETE` /api/setting/credentials/{credentialId}


### `PUT` /api/setting/credentials/{credentialId}


#### Request:

Changed content type : `application/json`

* Changed property `associatedDiscoveries` (array)

    Changed items (object):

    New required properties:
    - `name`

#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/discoveryReport/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/layout/floorPlanLayout/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assets` (array)

        Changed items (object):

        * Changed property `assetType` (string)

            Added enum values:

            * `tool`
            * `chassisComponent`
            * `pciCard`
            * `heatSink`
            * `trackingHardware`
            * `genericComponent`
### `PUT` /api/layout/floorPlanLayout


#### Request:

Changed content type : `application/json`

* Changed property `assets` (array)

    Changed items (object):

    * Changed property `assetType` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/monitorOnlyCommunicationSetting/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/monitorOnlyCommunicationSetting/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `POST` /api/asset/physicalConnections


### `DELETE` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalConnections/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `terminationADeviceAssetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `PUT` /api/asset/physicalConnections/{id}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/physicalPorts/detailed/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `physicalPortConnections` (array)

        Changed items (object):

        * Changed property `terminationAAssetTypeId` (string)

            Added enum values:

            * `tool`
            * `chassisComponent`
            * `pciCard`
            * `heatSink`
            * `trackingHardware`
            * `genericComponent`
### `GET` /api/asset/powerPath/{assetId}/ancestry


#### Return Type:

Changed response : **200 OK**
> OK

### `PUT` /api/asset/rackShelf/{id}


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `POST` /api/asset/search


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Added property `discoveryState` (string)

    * Added property `discoveryStateSearchableProperty` (string)

### `GET` /api/asset/shelvedAssets/{rackId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `GET` /api/asset/workNotes/asset/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/workNotes/{workNoteId}


### `PUT` /api/asset/workNotes/{workNoteId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/workNotes/{workNoteId}


#### Return Type:

Changed response : **200 OK**
> OK

### `DELETE` /api/asset/workOrders/{workOrderId}


### `GET` /api/asset/workOrders/{workOrderId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/workOrders/serviceNowCmdbSyncNow/{workOrderId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/workOrders/serviceNowCmdbScheduledSync/{workOrderId}


#### Return Type:

Changed response : **200 OK**
> OK

### `GET` /api/asset/assets


#### Parameters:

Changed: `assetType` in `query`
> An optional list of asset types to filter what assets are returned.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `assetTypeId` (string)

        Added enum values:

        * `tool`
        * `chassisComponent`
        * `pciCard`
        * `heatSink`
        * `trackingHardware`
        * `genericComponent`
### `POST` /api/asset/assets


#### Request:

Changed content type : `application/json`

* Changed property `assetTypeId` (string)

    Added enum values:

    * `tool`
    * `chassisComponent`
    * `pciCard`
    * `heatSink`
    * `trackingHardware`
    * `genericComponent`
* Changed property `creatableAssetProperties` (array)

    Changed items (object):

    * Changed property `type` (string)

        Added enum values:

        * `averageScope2CarbonEmissionOffsetPercent`
        * `workloadType`
        * `pueSetting`
### `GET` /api/asset/controlOperations/{assetId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `controlCredential` (object)

        * Changed property `associatedDiscoveries` (array)

            Changed items (object):

            New required properties:
            - `name`

### `GET` /api/setting/discoveryProtocolSettings/protocolCredentials


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `associatedDiscoveries` (array)

        Changed items (object):

        New required properties:
        - `name`

### `POST` /api/setting/discoveryProtocolSettings/protocolCredentials


#### Request:

Changed content type : `application/json`

* Changed property `credential` (object)

    * Changed property `associatedDiscoveries` (array)

        Changed items (object):

        New required properties:
        - `name`

