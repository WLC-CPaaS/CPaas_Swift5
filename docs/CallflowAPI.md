# CallflowAPI

All URIs are relative to *http://api.beta.cpaaslabs.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDCallflowCallflowIDDelete**](CallflowAPI.md#v1accountaccountidcallflowcallflowiddelete) | **DELETE** /v1/account/{accountID}/callflow/{callflowID} | Delete Call Group
[**v1AccountAccountIDCallflowCallflowIDGet**](CallflowAPI.md#v1accountaccountidcallflowcallflowidget) | **GET** /v1/account/{accountID}/callflow/{callflowID} | Get Call Group Details
[**v1AccountAccountIDCallflowCallflowIDPut**](CallflowAPI.md#v1accountaccountidcallflowcallflowidput) | **PUT** /v1/account/{accountID}/callflow/{callflowID} | Update Call Group
[**v1AccountAccountIDCallflowGet**](CallflowAPI.md#v1accountaccountidcallflowget) | **GET** /v1/account/{accountID}/callflow | Get Callflow List
[**v1AccountAccountIDCallflowPost**](CallflowAPI.md#v1accountaccountidcallflowpost) | **POST** /v1/account/{accountID}/callflow | Create Call Group


# **v1AccountAccountIDCallflowCallflowIDDelete**
```swift
    open class func v1AccountAccountIDCallflowCallflowIDDelete(accountID: String, callflowID: String, completion: @escaping (_ data: ServiceDocsCallflowGetSingle?, _ error: Error?) -> Void)
```

Delete Call Group

Delete a callflow in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let callflowID = "callflowID_example" // String | callflow ID, 32 alpha numeric

// Delete Call Group
CallflowAPI.v1AccountAccountIDCallflowCallflowIDDelete(accountID: accountID, callflowID: callflowID) { (response, error) in
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
 **callflowID** | **String** | callflow ID, 32 alpha numeric | 

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDCallflowCallflowIDGet**
```swift
    open class func v1AccountAccountIDCallflowCallflowIDGet(accountID: String, callflowID: String, completion: @escaping (_ data: ServiceDocsCallflowGetSingle?, _ error: Error?) -> Void)
```

Get Call Group Details

Get the details for a single callflow in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let callflowID = "callflowID_example" // String | Callflow ID, 32 alpha numeric

// Get Call Group Details
CallflowAPI.v1AccountAccountIDCallflowCallflowIDGet(accountID: accountID, callflowID: callflowID) { (response, error) in
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
 **callflowID** | **String** | Callflow ID, 32 alpha numeric | 

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDCallflowCallflowIDPut**
```swift
    open class func v1AccountAccountIDCallflowCallflowIDPut(accountID: String, callflowID: String, reqBody: ServiceCallflowAddEditData, completion: @escaping (_ data: ServiceDocsCallflowGetSingle?, _ error: Error?) -> Void)
```

Update Call Group

Update the details for a single callflow in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let callflowID = "callflowID_example" // String | Callflow ID, 32 alpha numeric
let reqBody = service.CallflowAddEditData(featurecode: service.FeatureCode(name: "name_example", number: "number_example"), flow: service.CallflowAddEditFlowData(children: "TODO", data: "TODO", module: "module_example"), name: "name_example", numbers: ["numbers_example"], patterns: ["patterns_example"]) // ServiceCallflowAddEditData | payload fields

// Update Call Group
CallflowAPI.v1AccountAccountIDCallflowCallflowIDPut(accountID: accountID, callflowID: callflowID, reqBody: reqBody) { (response, error) in
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
 **callflowID** | **String** | Callflow ID, 32 alpha numeric | 
 **reqBody** | [**ServiceCallflowAddEditData**](ServiceCallflowAddEditData.md) | payload fields | 

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDCallflowGet**
```swift
    open class func v1AccountAccountIDCallflowGet(accountID: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsCallflowGetAll?, _ error: Error?) -> Void)
```

Get Callflow List

Permit a user to view the callflow details in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Callflow List
CallflowAPI.v1AccountAccountIDCallflowGet(accountID: accountID, startKey: startKey, pageSize: pageSize) { (response, error) in
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
 **startKey** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] 
 **pageSize** | **Int** | number of records to return, range 1 to 50 | [optional] 

### Return type

[**ServiceDocsCallflowGetAll**](ServiceDocsCallflowGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDCallflowPost**
```swift
    open class func v1AccountAccountIDCallflowPost(accountID: String, request: ServiceCallflowAddEditData, completion: @escaping (_ data: ServiceDocsCallflowGetSingle?, _ error: Error?) -> Void)
```

Create Call Group

Create instructions for routing a call to a user or system.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha-numeric
let request = service.CallflowAddEditData(featurecode: service.FeatureCode(name: "name_example", number: "number_example"), flow: service.CallflowAddEditFlowData(children: "TODO", data: "TODO", module: "module_example"), name: "name_example", numbers: ["numbers_example"], patterns: ["patterns_example"]) // ServiceCallflowAddEditData | Call flow configuration

// Create Call Group
CallflowAPI.v1AccountAccountIDCallflowPost(accountID: accountID, request: request) { (response, error) in
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
 **accountID** | **String** | Account ID, 32 alpha-numeric | 
 **request** | [**ServiceCallflowAddEditData**](ServiceCallflowAddEditData.md) | Call flow configuration | 

### Return type

[**ServiceDocsCallflowGetSingle**](ServiceDocsCallflowGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

