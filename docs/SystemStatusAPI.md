# SystemStatusAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ApPingGet**](SystemStatusAPI.md#v1appingget) | **GET** /v1/ap/ping | Provisioning Ping
[**v1PingGet**](SystemStatusAPI.md#v1pingget) | **GET** /v1/ping | Ping Backend
[**v1PingseccognitoGet**](SystemStatusAPI.md#v1pingseccognitoget) | **GET** /v1/pingseccognito | Ping Cognito
[**v1SystemStatusGet**](SystemStatusAPI.md#v1systemstatusget) | **GET** /v1/system_status | Get System Status


# **v1ApPingGet**
```swift
    open class func v1ApPingGet(completion: @escaping (_ data: ProvisioningDocsDocsPingOutput?, _ error: Error?) -> Void)
```

Provisioning Ping

Ping the provisioning service.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Provisioning Ping
SystemStatusAPI.v1ApPingGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ProvisioningDocsDocsPingOutput**](ProvisioningDocsDocsPingOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1PingGet**
```swift
    open class func v1PingGet(completion: @escaping (_ data: ServiceDocsPingGet?, _ error: Error?) -> Void)
```

Ping Backend

Get the ping message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Ping Backend
SystemStatusAPI.v1PingGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ServiceDocsPingGet**](ServiceDocsPingGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1PingseccognitoGet**
```swift
    open class func v1PingseccognitoGet(completion: @escaping (_ data: ServiceDocsPingGet?, _ error: Error?) -> Void)
```

Ping Cognito

Get a secure ping message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Ping Cognito
SystemStatusAPI.v1PingseccognitoGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ServiceDocsPingGet**](ServiceDocsPingGet.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SystemStatusGet**
```swift
    open class func v1SystemStatusGet(completion: @escaping (_ data: ServiceDocsSystemStatusGetSingle?, _ error: Error?) -> Void)
```

Get System Status

Get the system status.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get System Status
SystemStatusAPI.v1SystemStatusGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ServiceDocsSystemStatusGetSingle**](ServiceDocsSystemStatusGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

