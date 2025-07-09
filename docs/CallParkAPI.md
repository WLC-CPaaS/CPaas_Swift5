# CallParkAPI

All URIs are relative to *http://api.beta.cpaaslabs.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDParkedcallGet**](CallParkAPI.md#v1accountaccountidparkedcallget) | **GET** /v1/account/{accountID}/parkedcall | Get Call Park List


# **v1AccountAccountIDParkedcallGet**
```swift
    open class func v1AccountAccountIDParkedcallGet(accountID: String, completion: @escaping (_ data: ServiceDocsCallparkGet?, _ error: Error?) -> Void)
```

Get Call Park List

Retrieve a list of calls parked on hold in a numbered slot.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Get Call Park List
CallParkAPI.v1AccountAccountIDParkedcallGet(accountID: accountID) { (response, error) in
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

[**ServiceDocsCallparkGet**](ServiceDocsCallparkGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

