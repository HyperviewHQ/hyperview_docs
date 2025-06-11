# API Changelog 4.9 to 5.0

## What's New

### `GET` /api/asset/networkHosts/{assetId}

> Returns a collection of network host information.


### `GET` /api/user/userConversationHistory

> Returns the user conversation history.


### `PUT` /api/user/userConversationHistory

> Updates a conversation history.


### `POST` /api/user/userConversationHistory

> Creates a conversation history.


### `DELETE` /api/user/userConversationHistory

> Deletes the entire user conversation history.


### `DELETE` /api/user/userConversationHistory/{userConversationHistoryId}

> Deletes specific user conversation history item.


### `GET` /api/user/userSearchHistory

> Returns the user search history.


### `POST` /api/user/userSearchHistory

> Creates a search history item.


### `DELETE` /api/user/userSearchHistory

> Deletes the entire search history.


### `DELETE` /api/user/userSearchHistory/{userSearchHistoryId}

> Deletes search history items.


### `GET` /api/setting/credentials

> Returns an array of protocol credentials.


### `GET` /api/setting/credentials/{credentialId}

> Returns an individual credential.


## What's Deleted

### `GET` /api/asset/search/aggregations

> Returns a list of data aggregations for the provided asset type.


### `GET` /api/asset/widget/assetSummaryWidget/{assetId}

> Returns status names and number of contained assets for the AssetSummaryWidget.


### `GET` /api/asset/widget/assetNetworkWidgetHost/{assetId}

> Returns a collection of network widget host information.


## What's Changed

### `PUT` /api/asset/alarmEvents/close/{alarmEventId}


### `PUT` /api/asset/alarmEvents/bulkClose


### `DELETE` /api/asset/assetTrackerMasterModuleData/{id}


### `GET` /api/layout/backgroundImages/{id}


### `DELETE` /api/layout/backgroundImages/{id}


### `DELETE` /api/asset/businessEntityAssociations/asset/{assetId}


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


### `DELETE` /api/asset/muteAlarmEventNotifications/{id}


### `PUT` /api/asset/pduBreakers/breakerStatus/{pduBreakerId}


### `DELETE` /api/asset/powerSourceAssociations/{id}


### `GET` /api/layout/rackSearch


### `DELETE` /api/asset/savedSearches/user/{id}


### `DELETE` /api/asset/savedSearches/global/{id}


### `PUT` /api/setting/sensorThreshold/{sensorThresholdId}/enabledState


### `DELETE` /api/asset/sensors/{id}


### `PUT` /api/setting/serviceNowCmdbIntegration/resetLastSyncDate


### `PUT` /api/setting/serviceNowCmdbIntegration/initiateSync


### `GET` /api/user/userInboxNotifications/{userInboxNotificationId}

> Returns the user inbox notification content. Also updates the user inbox notification status
> to Read when markAsRead is true.


### `DELETE` /api/product/userProductImages/{id}


### `GET` /api/asset/webInterfaceAddress/{assetId}


### `DELETE` /api/asset/workNoteDocuments/{workNoteDocumentId}


### `POST` /api/asset/workOrderItemStatuses/manuallyComplete


### `DELETE` /api/asset/workOrders/completed


### `POST` /api/asset/workOrders/manuallyCompleteWorkOrder/{workOrderId}


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

### `POST` /api/asset/bulk/assets/addDocumentAssociation


#### Request:
> An object containing the IDs of the assets to associate with the document ID, and whether or
> not the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/removeDocumentAssociation


#### Request:
> An object containing the IDs of the assets associated with the document ID, and whether or
> not the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/createEventNotificationRecipient


#### Request:
> An object containing the IDs of assets to be watched by the current user and whether or not
> the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/removeEventNotificationRecipient


#### Request:
> An object containing the IDs of assets to be unwatched by the current user and whether or
> not the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/disableMonitoring


#### Request:
> An object containing the IDs of assets to disable monitoring and whether or not the current
> user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/enableMonitoring


#### Request:
> An object containing the IDs of assets to enable monitoring and whether or not the current
> user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/updateControlCredentials


#### Request:
> An object containing the IDs of assets to either remove or update the association with the
> control credential ID and whether or not the current user should receive a notification when
> the job is done.

### `POST` /api/asset/bulk/assets/updateAccessPolicy


#### Request:
> An object containing the IDs of the assets to associate with the access policy ID, and
> whether or not the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/updateProduct


#### Request:
> An object containing the IDs of the assets to associate with the product ID, and whether or
> not the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/updateFirmwareControlCredentials


#### Request:
> An object containing the IDs of assets to either remove or update the association with the
> firmware credential ID and whether or not the current user should receive a notification
> when the job is done.

### `POST` /api/asset/bulk/assets/updateAssetsControlDataCollectorAssociation


#### Request:
> An object containing the IDs of assets to be updated with a new data collector ID for
> control operations and whether or not the current user should receive a notification when
> the job is done.

### `POST` /api/asset/bulk/assets/updateDescendantsAccessPolicies


#### Request:
> An object containing asset id and access policy id for updating the asset descendants'
> access policies and whether the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/updatePhysicalPortNames


#### Request:
> An object containing the IDs of assets to have their physical ports updated and whether or
> not the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/addPhysicalPorts


#### Request:
> An object containing the IDs of assets to have new physical ports added and whether or not
> the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `portSideValueId` (string)

### `POST` /api/asset/bulk/assets/addPhysicalPort


#### Request:
> An object containing the IDs of assets to have a new physical port added and whether or not
> the current user should receive a notification when the job is done.


Changed content type : `application/json`

* Added property `portSideValueId` (string)

### `POST` /api/asset/bulk/assets/addPatchPanelPhysicalPorts


#### Request:
> An object containing the IDs of patch panels to have new physical ports added and whether or
> not the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/addPatchPanelPhysicalPort


#### Request:
> An object containing the IDs of patch panels to have a new physical port added and whether
> or not the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/updateBusinessEntityAssociation


#### Request:
> An object containing the IDs of assets and the id of a business entity, and whether or not
> the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/muteAlarmEventNotifications


#### Request:
> An object containing the IDs of assets and a start and end time, and whether or not the
> current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/cancelMuteAlarmEventNotifications


#### Request:
> An object containing the IDs of assets to cancel muted notification for, and whether or not
> the current user should receive a notification when the job is done.

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


#### Request:

Changed content type : `application/json`

* Added property `portSideValueId` (string)

### `POST` /api/asset/physicalPorts/patchPanel


### `PUT` /api/asset/physicalPorts/multiple


### `POST` /api/asset/physicalPorts/multiple


#### Request:

Changed content type : `application/json`

* Added property `portSideValueId` (string)

### `DELETE` /api/asset/physicalPorts/multiple


### `PUT` /api/asset/physicalPorts/patchPanel/multiple


#### Request:
> A object containing details required for updating multiple physical ports on a specific
> patch panel.

### `POST` /api/asset/physicalPorts/patchPanel/multiple


#### Request:
> An object describing patch panel physical port details and the total number of physical
> ports to generate.

### `DELETE` /api/asset/physicalPorts/{id}


### `GET` /api/asset/physicalPorts/{id}


### `PUT` /api/asset/physicalPorts/{id}


#### Request:

Changed content type : `application/json`

* Added property `portSideValueId` (string)

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Added property `portSideValueId` (string)

### `PUT` /api/asset/physicalPorts/patchPanel/{id}


### `GET` /api/product/productProperties/{productId}


### `POST` /api/product/productProperties/{productId}


### `DELETE` /api/product/productProperties/{id}


### `PUT` /api/product/productProperties/{id}


### `GET` /api/product/productTypes


### `POST` /api/asset/search


#### Request:

Changed content type : `application/json`

* Added property `indexUid` (string)

* Added property `q` (string)

* Added property `filter` (object)

* Added property `attributesToRetrieve` (array)

    Items (string):

* Added property `attributesToCrop` (array)

* Added property `attributesToSearchOn` (array)

* Added property `cropLength` (integer)

* Added property `attributesToHighlight` (array)

* Added property `cropMarker` (string)

* Added property `highlightPreTag` (string)

* Added property `highlightPostTag` (string)

* Added property `facets` (array)

* Added property `showMatchesPosition` (boolean)

* Added property `matchingStrategy` (string)

* Added property `showRankingScore` (boolean)

* Added property `showRankingScoreDetails` (boolean)

* Added property `offset` (integer)

* Added property `limit` (integer)

* Added property `hitsPerPage` (integer)

* Added property `page` (integer)

* Added property `distinct` (string)

* Added property `rankingScoreThreshold` (number)

* Deleted property `size` (integer)

* Deleted property `from` (integer)

* Deleted property `query` (object)

* Deleted property `selectedFields` (array)

* Deleted property `searchComplexDataFields` (array)

* Changed property `sort` (array)

    Changed items (object -> string):

Changed content type : `text/json`

* Added property `indexUid` (string)

* Added property `q` (string)

* Added property `filter` (object)

* Added property `attributesToRetrieve` (array)

* Added property `attributesToCrop` (array)

* Added property `attributesToSearchOn` (array)

* Added property `cropLength` (integer)

* Added property `attributesToHighlight` (array)

* Added property `cropMarker` (string)

* Added property `highlightPreTag` (string)

* Added property `highlightPostTag` (string)

* Added property `facets` (array)

* Added property `showMatchesPosition` (boolean)

* Added property `matchingStrategy` (string)

* Added property `showRankingScore` (boolean)

* Added property `showRankingScoreDetails` (boolean)

* Added property `offset` (integer)

* Added property `limit` (integer)

* Added property `hitsPerPage` (integer)

* Added property `page` (integer)

* Added property `distinct` (string)

* Added property `rankingScoreThreshold` (number)

* Deleted property `size` (integer)

* Deleted property `from` (integer)

* Deleted property `query` (object)

* Deleted property `selectedFields` (array)

* Deleted property `searchComplexDataFields` (array)

* Changed property `sort` (array)

    Changed items (object -> string):

Changed content type : `application/*+json`

* Added property `indexUid` (string)

* Added property `q` (string)

* Added property `filter` (object)

* Added property `attributesToRetrieve` (array)

* Added property `attributesToCrop` (array)

* Added property `attributesToSearchOn` (array)

* Added property `cropLength` (integer)

* Added property `attributesToHighlight` (array)

* Added property `cropMarker` (string)

* Added property `highlightPreTag` (string)

* Added property `highlightPostTag` (string)

* Added property `facets` (array)

* Added property `showMatchesPosition` (boolean)

* Added property `matchingStrategy` (string)

* Added property `showRankingScore` (boolean)

* Added property `showRankingScoreDetails` (boolean)

* Added property `offset` (integer)

* Added property `limit` (integer)

* Added property `hitsPerPage` (integer)

* Added property `page` (integer)

* Added property `distinct` (string)

* Added property `rankingScoreThreshold` (number)

* Deleted property `size` (integer)

* Deleted property `from` (integer)

* Deleted property `query` (object)

* Deleted property `selectedFields` (array)

* Deleted property `searchComplexDataFields` (array)

* Changed property `sort` (array)

    Changed items (object -> string):

#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

### `GET` /api/asset/sensors/simpleDirect/{assetId}


### `GET` /api/setting/serviceNowCmdbConfigurationOverview


### `PUT` /api/setting/serviceNowCmdbConfigurationOverview


### `PUT` /api/setting/serviceNowCmdbIntegration/verifyAuthenticationConfiguration


### `GET` /api/asset/software/{id}


### `GET` /api/user/users


### `GET` /api/user/users/accessPolicyUsers/{accessPolicyId}


### `GET` /api/user/users/access/{accessPolicyId}

> Returns an array of users associate with an access policy or associated to a group that is
> associated with an access policy. All users of Administrator role are included.


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

> Returns information about a particular asset for rendering it inside a tree view on the
> application client.


### `GET` /api/asset/assetTypeCount


### `DELETE` /api/setting/assetTypeDashboardSettings/{assetType}


### `PUT` /api/setting/assetTypeDashboardSettings/{assetType}


### `POST` /api/layout/backgroundImages


#### Request:

Changed content type : `multipart/form-data`

* Changed property `uploadedFile` (string)
    > Image file to upload.


### `GET` /api/layout/backgroundImages


### `GET` /api/setting/bacnetIpDefinitions


### `POST` /api/setting/bacnetIpDefinitions


### `DELETE` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `GET` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `PUT` /api/setting/bacnetIpDefinitions/{bacnetIpDefinitionId}


### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `objectType` (string)

        Added enum value:

        * `multiStateValue`
### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}


#### Request:

Changed content type : `application/json`

* Changed property `objectType` (string)

    Added enum value:

    * `multiStateValue`
### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNonNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNonNumericSensorId}


#### Request:

Changed content type : `application/json`

* Changed property `objectType` (string)

    Added enum value:

    * `multiStateValue`
#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `objectType` (string)

        Added enum value:

        * `multiStateValue`
### `GET` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `objectType` (string)

        Added enum value:

        * `multiStateValue`
### `POST` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}


#### Request:

Changed content type : `application/json`

* Changed property `objectType` (string)

    Added enum value:

    * `multiStateValue`
### `DELETE` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


### `PUT` /api/setting/bacnetIpDefinitions/bacnetIpNumericSensors/{bacnetIpDefinitionId}/{bacnetIpNumericSensorId}


#### Request:

Changed content type : `application/json`

* Changed property `objectType` (string)

    Added enum value:

    * `multiStateValue`
#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `objectType` (string)

        Added enum value:

        * `multiStateValue`
### `POST` /api/asset/bulk/assets/updateCustomProperty


#### Request:
> An object containing the IDs of assets to be updated with a new custom property value and
> whether or not the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/updateLifecycle


#### Request:
> An object containing the IDs of assets to be updated with new life cycle property values and
> whether or not the current user should receive a notification when the job is done.

### `POST` /api/asset/bulk/assets/updateAssetProperty


#### Request:
> An object containing the IDs of assets to be updated with a new asset property value and
> whether or not the current user should receive a notification when the job is done.

### `GET` /api/asset/buswayTapOff/{assetId}


### `POST` /api/asset/control/rackDoorElectronicLock


### `DELETE` /api/asset/customAssetProperties/{id}


### `GET` /api/asset/customAssetProperties/{id}


### `PUT` /api/asset/customAssetProperties/{id}


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


### `GET` /api/layout/floorPlanLayoutGridInformation/{locationId}


### `GET` /api/asset/hierarchy


#### Parameters:

Changed: `hasChildrenAssetType` in `query`
> An optional list of asset types to filter what assets are used when determining if an asset
> has children.


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

    * Added property `lifecycleState` (string)

        Enum values:

        * `active`
        * `planned`
        * `procurement`
        * `staging`
        * `retired`
        * `inventory`
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


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Added property `sensorTypeValueType` (string)

        Enum values:

        * `numeric`
        * `enum`
### `GET` /api/asset/sensors/{assetId}


### `GET` /api/asset/sensorsDailySummaries/numeric

> Returns a list of numeric sensor daily summaries for each provided sensor ID for a specific
> UTC time range.


### `GET` /api/asset/sensorsDailySummaries/numeric/{timeRange}

> Returns a list of numeric sensor daily summaries for each provided sensor ID for a given
> time range option.


### `GET` /api/asset/sensorsDailySummaries/string

> Returns a list of string sensor daily summaries for each provided sensor ID for a specific
> UTC time range.


### `GET` /api/asset/sensorsDailySummaries/string/{timeRange}

> Returns a list of string sensor daily summaries for each provided sensor ID for a given time
> range option.


### `GET` /api/asset/sensorsDataPoints/numeric

> Returns a list of numeric sensor data points for each provided sensor ID for a specific UTC
> time range.


### `GET` /api/asset/sensorsDataPoints/numeric/{timeRange}

> Returns a list of numeric sensor data points for each provided sensor ID for a given time
> range option.


### `GET` /api/asset/sensorsDataPoints/string

> Returns a list of string sensor data points for each provided sensor ID for a specific UTC
> time range.


### `GET` /api/asset/sensorsDataPoints/string/{timeRange}

> Returns a list of string sensor data points for each provided sensor ID for a given time
> range option.


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
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum values:

        * `diagnosticDataShareEnabled`
        * `aiAssistantEnabled`
        Removed enum values:

        * `latestWindowsDataCollectorFilename`
        * `latestWindowsSupportedDataCollectorVersion`
### `PUT` /api/setting/systemSettings


#### Request:

Changed content type : `application/json`

Changed items (object):

* Changed property `id` (string)

    Added enum values:

    * `diagnosticDataShareEnabled`
    * `aiAssistantEnabled`
    Removed enum values:

    * `latestWindowsDataCollectorFilename`
    * `latestWindowsSupportedDataCollectorVersion`
#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `id` (string)

        Added enum values:

        * `diagnosticDataShareEnabled`
        * `aiAssistantEnabled`
        Removed enum values:

        * `latestWindowsDataCollectorFilename`
        * `latestWindowsSupportedDataCollectorVersion`
### `GET` /api/setting/systemSettings/{systemSettingId}


#### Parameters:

Changed: `systemSettingId` in `path`
> ID of system setting.


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Changed property `id` (string)

        Added enum values:

        * `diagnosticDataShareEnabled`
        * `aiAssistantEnabled`
        Removed enum values:

        * `latestWindowsDataCollectorFilename`
        * `latestWindowsSupportedDataCollectorVersion`
### `GET` /api/setting/systemSettings/dataCollector/{dataCollectorSetting}


### `PUT` /api/setting/systemSettings/dataCollector


### `GET` /api/user/userInboxNotifications/status


### `DELETE` /api/user/userInboxNotifications


### `PUT` /api/user/userInboxNotifications


### `POST` /api/product/userProductImages/{productId}


#### Request:

Changed content type : `multipart/form-data`

* Changed property `imageFile` (string)
    > Image file to upload.


### `GET` /api/product/userProductImages/{productId}


### `GET` /api/asset/watchedAssets


### `POST` /api/asset/workNotes


### `POST` /api/setting/alarmEventPolicies


### `GET` /api/setting/alarmEventPolicies


### `GET` /api/setting/applicationEventLogs


### `GET` /api/asset/assetChangeEventLogs


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    Changed items (object):

    * Changed property `eventDetails` (object -> array)

### `GET` /api/asset/assetTrackerContainedAssets

> Returns a list of AssetTracker assets or placeholder assets that are contained inside the
> given AssetTracker parent.


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


### `POST` /api/setting/credentials


### `DELETE` /api/setting/credentials/{credentialId}


### `PUT` /api/setting/credentials/{credentialId}


### `GET` /api/asset/discoveryReport/{assetId}


### `GET` /api/layout/floorPlanLayout/{id}


#### Return Type:

Changed response : **200 OK**
> OK


* Changed content type : `application/json`

    * Added property `columnOffset` (number)

    * Added property `rowOffset` (number)

### `PUT` /api/layout/floorPlanLayout


#### Request:

Changed content type : `application/json`

* Added property `columnOffset` (number)

* Added property `rowOffset` (number)

### `GET` /api/asset/monitorOnlyCommunicationSetting/{assetId}


### `PUT` /api/asset/monitorOnlyCommunicationSetting/{assetId}


### `POST` /api/asset/physicalConnections


### `DELETE` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalConnections/{id}


### `PUT` /api/asset/physicalConnections/{id}


### `GET` /api/asset/physicalPorts/detailed/{assetId}


### `GET` /api/asset/powerPath/{assetId}/ancestry


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


