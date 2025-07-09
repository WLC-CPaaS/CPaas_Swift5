# CallRecordingAPI

All URIs are relative to *http://api.beta.cpaaslabs.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDRecordingGet**](CallRecordingAPI.md#v1accountaccountidrecordingget) | **GET** /v1/account/{accountID}/recording | Get Account Call Recording
[**v1AccountAccountIDRecordingRecordingIDDelete**](CallRecordingAPI.md#v1accountaccountidrecordingrecordingiddelete) | **DELETE** /v1/account/{accountID}/recording/{recordingID} | Delete Call Recording
[**v1AccountAccountIDRecordingRecordingIDGet**](CallRecordingAPI.md#v1accountaccountidrecordingrecordingidget) | **GET** /v1/account/{accountID}/recording/{recordingID} | Get Call Recording Details
[**v1AccountAccountIDUserUserIDRecordingGet**](CallRecordingAPI.md#v1accountaccountiduseruseridrecordingget) | **GET** /v1/account/{accountID}/user/{userID}/recording | Get User Call Recording


# **v1AccountAccountIDRecordingGet**
```swift
    open class func v1AccountAccountIDRecordingGet(accountID: String, completion: @escaping (_ data: ServiceDocsCallRecordingGetAll?, _ error: Error?) -> Void)
```

Get Account Call Recording

Obtain a list of the call recordings within an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Get Account Call Recording
CallRecordingAPI.v1AccountAccountIDRecordingGet(accountID: accountID) { (response, error) in
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

[**ServiceDocsCallRecordingGetAll**](ServiceDocsCallRecordingGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDRecordingRecordingIDDelete**
```swift
    open class func v1AccountAccountIDRecordingRecordingIDDelete(accountID: String, recordingID: String, completion: @escaping (_ data: ServiceDocsCallRecordingGetSingle?, _ error: Error?) -> Void)
```

Delete Call Recording

Delete a single call recording from an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let recordingID = "recordingID_example" // String | Recording ID, 39 (yyyymm-<32 id>)

// Delete Call Recording
CallRecordingAPI.v1AccountAccountIDRecordingRecordingIDDelete(accountID: accountID, recordingID: recordingID) { (response, error) in
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
 **recordingID** | **String** | Recording ID, 39 (yyyymm-&lt;32 id&gt;) | 

### Return type

[**ServiceDocsCallRecordingGetSingle**](ServiceDocsCallRecordingGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDRecordingRecordingIDGet**
```swift
    open class func v1AccountAccountIDRecordingRecordingIDGet(accountID: String, recordingID: String, completion: @escaping (_ data: ServiceDocsCallRecordingGetSingle?, _ error: Error?) -> Void)
```

Get Call Recording Details

Access details for each recorded call in an account (e.g., duration, names and numbers of call participants, etc.).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let recordingID = "recordingID_example" // String | Recording ID, 39 (yyyymm-<32 id>)

// Get Call Recording Details
CallRecordingAPI.v1AccountAccountIDRecordingRecordingIDGet(accountID: accountID, recordingID: recordingID) { (response, error) in
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
 **recordingID** | **String** | Recording ID, 39 (yyyymm-&lt;32 id&gt;) | 

### Return type

[**ServiceDocsCallRecordingGetSingle**](ServiceDocsCallRecordingGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, audio/mp3, audio/mpeg, audio/mpeg3, audio/x-wav, audio/wav

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDUserUserIDRecordingGet**
```swift
    open class func v1AccountAccountIDUserUserIDRecordingGet(accountID: String, userID: String, completion: @escaping (_ data: ServiceDocsCallRecordingGetAll?, _ error: Error?) -> Void)
```

Get User Call Recording

Retrieve a list of call recordings for a user within an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let userID = "userID_example" // String | User ID, 32 alpha numeric

// Get User Call Recording
CallRecordingAPI.v1AccountAccountIDUserUserIDRecordingGet(accountID: accountID, userID: userID) { (response, error) in
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

[**ServiceDocsCallRecordingGetAll**](ServiceDocsCallRecordingGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

