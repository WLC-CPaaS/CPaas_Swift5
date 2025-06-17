# StorageAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDStorageDelete**](StorageAPI.md#v1accountaccountidstoragedelete) | **DELETE** /v1/account/{accountID}/storage | Delete Storage
[**v1AccountAccountIDStorageGet**](StorageAPI.md#v1accountaccountidstorageget) | **GET** /v1/account/{accountID}/storage | Get Storage Details
[**v1AccountAccountIDStoragePost**](StorageAPI.md#v1accountaccountidstoragepost) | **POST** /v1/account/{accountID}/storage | Create Storage
[**v1AccountAccountIDStoragePut**](StorageAPI.md#v1accountaccountidstorageput) | **PUT** /v1/account/{accountID}/storage | Update Storage


# **v1AccountAccountIDStorageDelete**
```swift
    open class func v1AccountAccountIDStorageDelete(accountID: String, completion: @escaping (_ data: ServiceDocsStorageGet?, _ error: Error?) -> Void)
```

Delete Storage

Delete items that are stored in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Delete Storage
StorageAPI.v1AccountAccountIDStorageDelete(accountID: accountID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **String** | Account ID, 32 alpha numeric | 

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDStorageGet**
```swift
    open class func v1AccountAccountIDStorageGet(accountID: String, completion: @escaping (_ data: ServiceDocsStorageGet?, _ error: Error?) -> Void)
```

Get Storage Details

Retrieve storage details for an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Get Storage Details
StorageAPI.v1AccountAccountIDStorageGet(accountID: accountID) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **String** | Account ID, 32 alpha numeric | 

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDStoragePost**
```swift
    open class func v1AccountAccountIDStoragePost(accountID: String, reqBody: ServiceVOIPStorageAddEditData, completion: @escaping (_ data: ServiceDocsStorageGet?, _ error: Error?) -> Void)
```

Create Storage

Create storage in an account for voicemails, call recordings, faxes, etc.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let reqBody = service.VOIPStorageAddEditData(attachments: "TODO", connections: "TODO", id: "id_example", plan: service.StoragePlan(account: service.StoragePlanDatabase(attachments: service.StoragePlanDatabaseAttachment(handler: "handler_example", params: "TODO", stub: false), connection: "connection_example", database: service.StoragePlanDatabaseProperties(createOptions: "TODO", names: ["names_example"]), types: service.StoragePlanDatabaseTypes(callRecording: service.StoragePlanDatabaseDocument(attachments: nil, connection: "connection_example"), fax: nil, function: nil, mailboxMessage: nil, media: nil)), aggregate: nil, modb: nil, system: nil)) // ServiceVOIPStorageAddEditData | payload fields

// Create Storage
StorageAPI.v1AccountAccountIDStoragePost(accountID: accountID, reqBody: reqBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **String** | Account ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPStorageAddEditData**](ServiceVOIPStorageAddEditData.md) | payload fields | 

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDStoragePut**
```swift
    open class func v1AccountAccountIDStoragePut(accountID: String, reqBody: ServiceVOIPStorageAddEditData, completion: @escaping (_ data: ServiceDocsStorageGet?, _ error: Error?) -> Void)
```

Update Storage

Modify the names of metadata to make it easier to locate (e.g., change the name of voicemail_storage to voicemail_and_callrecordings_storage, etc.).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let reqBody = service.VOIPStorageAddEditData(attachments: "TODO", connections: "TODO", id: "id_example", plan: service.StoragePlan(account: service.StoragePlanDatabase(attachments: service.StoragePlanDatabaseAttachment(handler: "handler_example", params: "TODO", stub: false), connection: "connection_example", database: service.StoragePlanDatabaseProperties(createOptions: "TODO", names: ["names_example"]), types: service.StoragePlanDatabaseTypes(callRecording: service.StoragePlanDatabaseDocument(attachments: nil, connection: "connection_example"), fax: nil, function: nil, mailboxMessage: nil, media: nil)), aggregate: nil, modb: nil, system: nil)) // ServiceVOIPStorageAddEditData | payload fields

// Update Storage
StorageAPI.v1AccountAccountIDStoragePut(accountID: accountID, reqBody: reqBody) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountID** | **String** | Account ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPStorageAddEditData**](ServiceVOIPStorageAddEditData.md) | payload fields | 

### Return type

[**ServiceDocsStorageGet**](ServiceDocsStorageGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

