# MetaflowAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDDeviceDeviceIDMetaflowDelete**](MetaflowAPI.md#v1accountaccountiddevicedeviceidmetaflowdelete) | **DELETE** /v1/account/{accountID}/device/{deviceID}/metaflow | Delete Device Metaflow
[**v1AccountAccountIDDeviceDeviceIDMetaflowGet**](MetaflowAPI.md#v1accountaccountiddevicedeviceidmetaflowget) | **GET** /v1/account/{accountID}/device/{deviceID}/metaflow | Get Device Metaflow List
[**v1AccountAccountIDDeviceDeviceIDMetaflowPost**](MetaflowAPI.md#v1accountaccountiddevicedeviceidmetaflowpost) | **POST** /v1/account/{accountID}/device/{deviceID}/metaflow | Create Device Metaflow
[**v1AccountAccountIDMetaflowDelete**](MetaflowAPI.md#v1accountaccountidmetaflowdelete) | **DELETE** /v1/account/{accountID}/metaflow | Delete Account Metaflow
[**v1AccountAccountIDMetaflowGet**](MetaflowAPI.md#v1accountaccountidmetaflowget) | **GET** /v1/account/{accountID}/metaflow | Get Account Metaflow List
[**v1AccountAccountIDMetaflowPost**](MetaflowAPI.md#v1accountaccountidmetaflowpost) | **POST** /v1/account/{accountID}/metaflow | Create Account Metaflow
[**v1AccountAccountIDUserUserIDMetaflowDelete**](MetaflowAPI.md#v1accountaccountiduseruseridmetaflowdelete) | **DELETE** /v1/account/{accountID}/user/{userID}/metaflow | Delete User Metaflow
[**v1AccountAccountIDUserUserIDMetaflowGet**](MetaflowAPI.md#v1accountaccountiduseruseridmetaflowget) | **GET** /v1/account/{accountID}/user/{userID}/metaflow | Get User Metaflow List
[**v1AccountAccountIDUserUserIDMetaflowPost**](MetaflowAPI.md#v1accountaccountiduseruseridmetaflowpost) | **POST** /v1/account/{accountID}/user/{userID}/metaflow | Create User Metaflow


# **v1AccountAccountIDDeviceDeviceIDMetaflowDelete**
```swift
    open class func v1AccountAccountIDDeviceDeviceIDMetaflowDelete(accountID: String, deviceID: String, completion: @escaping (_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)
```

Delete Device Metaflow

Delete all metaflows associated with a device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let deviceID = "deviceID_example" // String | Device ID, 32 alpha numeric

// Delete Device Metaflow
MetaflowAPI.v1AccountAccountIDDeviceDeviceIDMetaflowDelete(accountID: accountID, deviceID: deviceID) { (response, error) in
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

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDDeviceDeviceIDMetaflowGet**
```swift
    open class func v1AccountAccountIDDeviceDeviceIDMetaflowGet(accountID: String, deviceID: String, completion: @escaping (_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)
```

Get Device Metaflow List

Get the list of metaflows for a device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let deviceID = "deviceID_example" // String | Device ID, 32 alpha numeric

// Get Device Metaflow List
MetaflowAPI.v1AccountAccountIDDeviceDeviceIDMetaflowGet(accountID: accountID, deviceID: deviceID) { (response, error) in
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

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDDeviceDeviceIDMetaflowPost**
```swift
    open class func v1AccountAccountIDDeviceDeviceIDMetaflowPost(accountID: String, deviceID: String, reqBody: ServiceVOIPMetaflowAddData, completion: @escaping (_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)
```

Create Device Metaflow

Create a metaflow or multiple metaflows for a device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let deviceID = "deviceID_example" // String | Device ID, 32 alpha numeric
let reqBody = service.VOIPMetaflowAddData(bindingDigit: "bindingDigit_example", numbers: "TODO", patterns: "TODO") // ServiceVOIPMetaflowAddData | payload fields

// Create Device Metaflow
MetaflowAPI.v1AccountAccountIDDeviceDeviceIDMetaflowPost(accountID: accountID, deviceID: deviceID, reqBody: reqBody) { (response, error) in
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
 **reqBody** | [**ServiceVOIPMetaflowAddData**](ServiceVOIPMetaflowAddData.md) | payload fields | 

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDMetaflowDelete**
```swift
    open class func v1AccountAccountIDMetaflowDelete(accountID: String, completion: @escaping (_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)
```

Delete Account Metaflow

Remove all metaflows from an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Delete Account Metaflow
MetaflowAPI.v1AccountAccountIDMetaflowDelete(accountID: accountID) { (response, error) in
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

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDMetaflowGet**
```swift
    open class func v1AccountAccountIDMetaflowGet(accountID: String, completion: @escaping (_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)
```

Get Account Metaflow List

Get an account's metaflow list.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Get Account Metaflow List
MetaflowAPI.v1AccountAccountIDMetaflowGet(accountID: accountID) { (response, error) in
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

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDMetaflowPost**
```swift
    open class func v1AccountAccountIDMetaflowPost(accountID: String, metaflow: ServiceVOIPMetaflowAddData, completion: @escaping (_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)
```

Create Account Metaflow

Generate a metaflow for an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID
let metaflow = service.VOIPMetaflowAddData(bindingDigit: "bindingDigit_example", numbers: "TODO", patterns: "TODO") // ServiceVOIPMetaflowAddData | Metaflow fields

// Create Account Metaflow
MetaflowAPI.v1AccountAccountIDMetaflowPost(accountID: accountID, metaflow: metaflow) { (response, error) in
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
 **accountID** | **String** | Account ID | 
 **metaflow** | [**ServiceVOIPMetaflowAddData**](ServiceVOIPMetaflowAddData.md) | Metaflow fields | 

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDUserUserIDMetaflowDelete**
```swift
    open class func v1AccountAccountIDUserUserIDMetaflowDelete(accountID: String, userID: String, completion: @escaping (_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)
```

Delete User Metaflow

Delete all metaflows associated with a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let userID = "userID_example" // String | user ID, 32 alpha numeric

// Delete User Metaflow
MetaflowAPI.v1AccountAccountIDUserUserIDMetaflowDelete(accountID: accountID, userID: userID) { (response, error) in
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
 **userID** | **String** | user ID, 32 alpha numeric | 

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDUserUserIDMetaflowGet**
```swift
    open class func v1AccountAccountIDUserUserIDMetaflowGet(accountID: String, userID: String, completion: @escaping (_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)
```

Get User Metaflow List

Get the list of metaflows for a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let userID = "userID_example" // String | user ID, 32 alpha numeric

// Get User Metaflow List
MetaflowAPI.v1AccountAccountIDUserUserIDMetaflowGet(accountID: accountID, userID: userID) { (response, error) in
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
 **userID** | **String** | user ID, 32 alpha numeric | 

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDUserUserIDMetaflowPost**
```swift
    open class func v1AccountAccountIDUserUserIDMetaflowPost(accountID: String, userID: String, reqBody: ServiceVOIPMetaflowAddData, completion: @escaping (_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)
```

Create User Metaflow

Add a metaflow or multiple metaflows for a user in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let userID = "userID_example" // String | user ID, 32 alpha numeric
let reqBody = service.VOIPMetaflowAddData(bindingDigit: "bindingDigit_example", numbers: "TODO", patterns: "TODO") // ServiceVOIPMetaflowAddData | payload fields

// Create User Metaflow
MetaflowAPI.v1AccountAccountIDUserUserIDMetaflowPost(accountID: accountID, userID: userID, reqBody: reqBody) { (response, error) in
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
 **userID** | **String** | user ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPMetaflowAddData**](ServiceVOIPMetaflowAddData.md) | payload fields | 

### Return type

[**ServiceDocsMetaflowGet**](ServiceDocsMetaflowGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

