# ProvisionAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDProvisionFilenameGet**](ProvisionAPI.md#v1accountaccountidprovisionfilenameget) | **GET** /v1/account/{accountID}/provision/{filename} | 


# **v1AccountAccountIDProvisionFilenameGet**
```swift
    open class func v1AccountAccountIDProvisionFilenameGet(accountID: String, filename: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```



Retrieve the configuration details (e.g., settings and parameters) for a device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let filename = "filename_example" // String | Name of config file

ProvisionAPI.v1AccountAccountIDProvisionFilenameGet(accountID: accountID, filename: filename) { (response, error) in
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
 **filename** | **String** | Name of config file | 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

