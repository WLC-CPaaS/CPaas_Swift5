# PresenceAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDPresenceExtensionPut**](PresenceAPI.md#v1accountaccountidpresenceextensionput) | **PUT** /v1/account/{accountID}/presence/{extension} | Set/Reset Presence for Extension
[**v1AccountAccountIDPresenceGet**](PresenceAPI.md#v1accountaccountidpresenceget) | **GET** /v1/account/{accountID}/presence | Get Presence Details
[**v1AccountAccountIDUserUserIDPresencePut**](PresenceAPI.md#v1accountaccountiduseruseridpresenceput) | **PUT** /v1/account/{accountID}/user/{userID}/presence | Set/Reset Presence for User


# **v1AccountAccountIDPresenceExtensionPut**
```swift
    open class func v1AccountAccountIDPresenceExtensionPut(accountID: String, _extension: String, reqBody: ServiceVOIPPresenceSetResetEditData, completion: @escaping (_ data: ServiceAPIResponse?, _ error: Error?) -> Void)
```

Set/Reset Presence for Extension

Set or reset the presence status of an extension.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let _extension = "_extension_example" // String | Extension
let reqBody = service.VOIPPresenceSetResetEditData(action: "action_example", state: "state_example") // ServiceVOIPPresenceSetResetEditData | payload fields

// Set/Reset Presence for Extension
PresenceAPI.v1AccountAccountIDPresenceExtensionPut(accountID: accountID, _extension: _extension, reqBody: reqBody) { (response, error) in
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
 **_extension** | **String** | Extension | 
 **reqBody** | [**ServiceVOIPPresenceSetResetEditData**](ServiceVOIPPresenceSetResetEditData.md) | payload fields | 

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDPresenceGet**
```swift
    open class func v1AccountAccountIDPresenceGet(accountID: String, completion: @escaping (_ data: ServiceDocsPresenceGet?, _ error: Error?) -> Void)
```

Get Presence Details

Retrieve details of presence subscriptions in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Get Presence Details
PresenceAPI.v1AccountAccountIDPresenceGet(accountID: accountID) { (response, error) in
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

[**ServiceDocsPresenceGet**](ServiceDocsPresenceGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDUserUserIDPresencePut**
```swift
    open class func v1AccountAccountIDUserUserIDPresencePut(accountID: String, userID: String, reqBody: ServiceVOIPPresenceSetResetEditData, completion: @escaping (_ data: ServiceAPIResponse?, _ error: Error?) -> Void)
```

Set/Reset Presence for User

Set or reset the presence status of a user within an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let userID = "userID_example" // String | User ID, 32 alpha numeric
let reqBody = service.VOIPPresenceSetResetEditData(action: "action_example", state: "state_example") // ServiceVOIPPresenceSetResetEditData | payload fields

// Set/Reset Presence for User
PresenceAPI.v1AccountAccountIDUserUserIDPresencePut(accountID: accountID, userID: userID, reqBody: reqBody) { (response, error) in
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
 **userID** | **String** | User ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPPresenceSetResetEditData**](ServiceVOIPPresenceSetResetEditData.md) | payload fields | 

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

