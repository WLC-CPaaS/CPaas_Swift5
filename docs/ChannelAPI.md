# ChannelAPI

All URIs are relative to *http://api.beta.cpaaslabs.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDChannelChannelIDGet**](ChannelAPI.md#v1accountaccountidchannelchannelidget) | **GET** /v1/account/{accountID}/channel/{channelID} | Get Channel Details
[**v1AccountAccountIDChannelChannelIDPost**](ChannelAPI.md#v1accountaccountidchannelchannelidpost) | **POST** /v1/account/{accountID}/channel/{channelID} | Associate Action to Channel
[**v1AccountAccountIDChannelChannelIDPut**](ChannelAPI.md#v1accountaccountidchannelchannelidput) | **PUT** /v1/account/{accountID}/channel/{channelID} | Associate Metaflow to Channel
[**v1AccountAccountIDChannelGet**](ChannelAPI.md#v1accountaccountidchannelget) | **GET** /v1/account/{accountID}/channel | Get Account Channel List
[**v1AccountAccountIDDeviceDeviceIDChannelGet**](ChannelAPI.md#v1accountaccountiddevicedeviceidchannelget) | **GET** /v1/account/{accountID}/device/{deviceID}/channel | Get Device Channel List
[**v1AccountAccountIDUserUserIDChannelGet**](ChannelAPI.md#v1accountaccountiduseruseridchannelget) | **GET** /v1/account/{accountID}/user/{userID}/channel | Get User Channel List


# **v1AccountAccountIDChannelChannelIDGet**
```swift
    open class func v1AccountAccountIDChannelChannelIDGet(accountID: String, channelID: String, completion: @escaping (_ data: ServiceDocsChannelGetSingle?, _ error: Error?) -> Void)
```

Get Channel Details

Access details about each channel in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let channelID = "channelID_example" // String | Channel ID

// Get Channel Details
ChannelAPI.v1AccountAccountIDChannelChannelIDGet(accountID: accountID, channelID: channelID) { (response, error) in
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
 **channelID** | **String** | Channel ID | 

### Return type

[**ServiceDocsChannelGetSingle**](ServiceDocsChannelGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDChannelChannelIDPost**
```swift
    open class func v1AccountAccountIDChannelChannelIDPost(accountID: String, channelID: String, reqBody: ServiceVOIPChannelRunActionData, completion: @escaping (_ data: ServiceAPIResponse?, _ error: Error?) -> Void)
```

Associate Action to Channel

Link an action, such as transfer or hangup to a channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let channelID = "channelID_example" // String | Channel ID
let reqBody = service.VOIPChannelRunActionData(action: "action_example", moh: "moh_example", takebackDtmf: "takebackDtmf_example", target: "target_example") // ServiceVOIPChannelRunActionData | payload fields

// Associate Action to Channel
ChannelAPI.v1AccountAccountIDChannelChannelIDPost(accountID: accountID, channelID: channelID, reqBody: reqBody) { (response, error) in
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
 **channelID** | **String** | Channel ID | 
 **reqBody** | [**ServiceVOIPChannelRunActionData**](ServiceVOIPChannelRunActionData.md) | payload fields | 

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDChannelChannelIDPut**
```swift
    open class func v1AccountAccountIDChannelChannelIDPut(accountID: String, channelID: String, reqBody: ServiceVOIPChannelRunMetaflowData, completion: @escaping (_ data: ServiceAPIResponse?, _ error: Error?) -> Void)
```

Associate Metaflow to Channel

Link a metaflow to an active channel.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let channelID = "channelID_example" // String | Channel ID
let reqBody = service.VOIPChannelRunMetaflowData(children: "TODO", data: "TODO", module: "module_example") // ServiceVOIPChannelRunMetaflowData | payload fields

// Associate Metaflow to Channel
ChannelAPI.v1AccountAccountIDChannelChannelIDPut(accountID: accountID, channelID: channelID, reqBody: reqBody) { (response, error) in
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
 **channelID** | **String** | Channel ID | 
 **reqBody** | [**ServiceVOIPChannelRunMetaflowData**](ServiceVOIPChannelRunMetaflowData.md) | payload fields | 

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDChannelGet**
```swift
    open class func v1AccountAccountIDChannelGet(accountID: String, completion: @escaping (_ data: ServiceDocsChannelGetAll?, _ error: Error?) -> Void)
```

Get Account Channel List

Get a list of active channels for an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Get Account Channel List
ChannelAPI.v1AccountAccountIDChannelGet(accountID: accountID) { (response, error) in
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

[**ServiceDocsChannelGetAll**](ServiceDocsChannelGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDDeviceDeviceIDChannelGet**
```swift
    open class func v1AccountAccountIDDeviceDeviceIDChannelGet(accountID: String, deviceID: String, completion: @escaping (_ data: ServiceDocsChannelGetAll?, _ error: Error?) -> Void)
```

Get Device Channel List

Get the list of active channels for a device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let deviceID = "deviceID_example" // String | Device ID, 32 alpha numeric

// Get Device Channel List
ChannelAPI.v1AccountAccountIDDeviceDeviceIDChannelGet(accountID: accountID, deviceID: deviceID) { (response, error) in
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
 **deviceID** | **String** | Device ID, 32 alpha numeric | 

### Return type

[**ServiceDocsChannelGetAll**](ServiceDocsChannelGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDUserUserIDChannelGet**
```swift
    open class func v1AccountAccountIDUserUserIDChannelGet(accountID: String, userID: String, completion: @escaping (_ data: ServiceDocsChannelGetAll?, _ error: Error?) -> Void)
```

Get User Channel List

Get the list of active channels for a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let userID = "userID_example" // String | User ID, 32 alpha numeric

// Get User Channel List
ChannelAPI.v1AccountAccountIDUserUserIDChannelGet(accountID: accountID, userID: userID) { (response, error) in
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

### Return type

[**ServiceDocsChannelGetAll**](ServiceDocsChannelGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

