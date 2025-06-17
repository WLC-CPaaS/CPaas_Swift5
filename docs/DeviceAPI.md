# DeviceAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountidDeviceDeviceidDelete**](DeviceAPI.md#v1accountaccountiddevicedeviceiddelete) | **DELETE** /v1/account/{accountid}/device/{deviceid} | Delete Device
[**v1AccountAccountidDeviceDeviceidGet**](DeviceAPI.md#v1accountaccountiddevicedeviceidget) | **GET** /v1/account/{accountid}/device/{deviceid} | Get Device Details
[**v1AccountAccountidDeviceDeviceidPut**](DeviceAPI.md#v1accountaccountiddevicedeviceidput) | **PUT** /v1/account/{accountid}/device/{deviceid} | Update Device
[**v1AccountAccountidDeviceDeviceidRebootPost**](DeviceAPI.md#v1accountaccountiddevicedeviceidrebootpost) | **POST** /v1/account/{accountid}/device/{deviceid}/reboot | Reboot Device
[**v1AccountAccountidDeviceGet**](DeviceAPI.md#v1accountaccountiddeviceget) | **GET** /v1/account/{accountid}/device | Get Device List
[**v1AccountAccountidDevicePost**](DeviceAPI.md#v1accountaccountiddevicepost) | **POST** /v1/account/{accountid}/device | Create Device
[**v1AccountAccountidDeviceStatusGet**](DeviceAPI.md#v1accountaccountiddevicestatusget) | **GET** /v1/account/{accountid}/device/status | Get Device Status


# **v1AccountAccountidDeviceDeviceidDelete**
```swift
    open class func v1AccountAccountidDeviceDeviceidDelete(accountid: String, deviceid: String, completion: @escaping (_ data: ServiceDocsDeviceGetSingle?, _ error: Error?) -> Void)
```

Delete Device

Remove one device from a CPaaS account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let deviceid = "deviceid_example" // String | Device ID, 32 alpha numeric

// Delete Device
DeviceAPI.v1AccountAccountidDeviceDeviceidDelete(accountid: accountid, deviceid: deviceid) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **deviceid** | **String** | Device ID, 32 alpha numeric | 

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidDeviceDeviceidGet**
```swift
    open class func v1AccountAccountidDeviceDeviceidGet(accountid: String, deviceid: String, completion: @escaping (_ data: ServiceDocsDeviceGetSingle?, _ error: Error?) -> Void)
```

Get Device Details

Permit a user to view specific device details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let deviceid = "deviceid_example" // String | Device ID, 32 alpha numeric

// Get Device Details
DeviceAPI.v1AccountAccountidDeviceDeviceidGet(accountid: accountid, deviceid: deviceid) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **deviceid** | **String** | Device ID, 32 alpha numeric | 

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidDeviceDeviceidPut**
```swift
    open class func v1AccountAccountidDeviceDeviceidPut(accountid: String, deviceid: String, device: ServiceVOIPDeviceAddEdit2, completion: @escaping (_ data: ServiceDocsDeviceGetSingle?, _ error: Error?) -> Void)
```

Update Device

Edit specifics about the device, such as the device type, name, and owner.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let deviceid = "deviceid_example" // String | Device ID, 32 alpha numeric
let device = service.VOIPDeviceAddEdit2(callForward: models.CallForward(enabled: false, number: "number_example"), callerId: service.VOIPDeviceAddEdit3c(emergency: service.VOIPDeviceAddEdit4(number: "number_example"), external: nil, _internal: nil), deviceType: "deviceType_example", doNotDisturb: models.VOIPSharedDoNotDisturb(enabled: false), enabled: false, macAddress: "macAddress_example", media: service.VOIPDeviceAddEdit3d(audio: service.VOIPDeviceAddEdit5(codecs: ["codecs_example"])), musicOnHold: models.MusicOnHold(mediaId: "mediaId_example"), name: "name_example", ownerId: "ownerId_example", provision: service.VOIPDeviceAddEditProvision(endpointBrand: "endpointBrand_example", endpointFamily: "endpointFamily_example", endpointModel: "endpointModel_example", id: "id_example"), sip: service.VOIPDeviceAddEdit3a(inviteFormat: "inviteFormat_example", password: "password_example", username: "username_example")) // ServiceVOIPDeviceAddEdit2 | device fields

// Update Device
DeviceAPI.v1AccountAccountidDeviceDeviceidPut(accountid: accountid, deviceid: deviceid, device: device) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **deviceid** | **String** | Device ID, 32 alpha numeric | 
 **device** | [**ServiceVOIPDeviceAddEdit2**](ServiceVOIPDeviceAddEdit2.md) | device fields | 

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidDeviceDeviceidRebootPost**
```swift
    open class func v1AccountAccountidDeviceDeviceidRebootPost(accountid: String, deviceid: String, completion: @escaping (_ data: ServiceDocsDeviceReboot?, _ error: Error?) -> Void)
```

Reboot Device

Reboot a device in an account to mitigate malware and improve device performance.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let deviceid = "deviceid_example" // String | Device ID, 32 alpha numeric

// Reboot Device
DeviceAPI.v1AccountAccountidDeviceDeviceidRebootPost(accountid: accountid, deviceid: deviceid) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **deviceid** | **String** | Device ID, 32 alpha numeric | 

### Return type

[**ServiceDocsDeviceReboot**](ServiceDocsDeviceReboot.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidDeviceGet**
```swift
    open class func v1AccountAccountidDeviceGet(accountid: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsDeviceGetAll?, _ error: Error?) -> Void)
```

Get Device List

Obtain a list of all devices associated with an account such as fax machines, cell phones, and soft phones.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Device List
DeviceAPI.v1AccountAccountidDeviceGet(accountid: accountid, startKey: startKey, pageSize: pageSize) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **startKey** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] 
 **pageSize** | **Int** | number of records to return, range 1 to 50 | [optional] 

### Return type

[**ServiceDocsDeviceGetAll**](ServiceDocsDeviceGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidDevicePost**
```swift
    open class func v1AccountAccountidDevicePost(accountid: String, device: ServiceVOIPDeviceAddEdit2, completion: @escaping (_ data: ServiceDocsDeviceGetSingle?, _ error: Error?) -> Void)
```

Create Device

Connect a new device to an account to enhance communication methods.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let device = service.VOIPDeviceAddEdit2(callForward: models.CallForward(enabled: false, number: "number_example"), callerId: service.VOIPDeviceAddEdit3c(emergency: service.VOIPDeviceAddEdit4(number: "number_example"), external: nil, _internal: nil), deviceType: "deviceType_example", doNotDisturb: models.VOIPSharedDoNotDisturb(enabled: false), enabled: false, macAddress: "macAddress_example", media: service.VOIPDeviceAddEdit3d(audio: service.VOIPDeviceAddEdit5(codecs: ["codecs_example"])), musicOnHold: models.MusicOnHold(mediaId: "mediaId_example"), name: "name_example", ownerId: "ownerId_example", provision: service.VOIPDeviceAddEditProvision(endpointBrand: "endpointBrand_example", endpointFamily: "endpointFamily_example", endpointModel: "endpointModel_example", id: "id_example"), sip: service.VOIPDeviceAddEdit3a(inviteFormat: "inviteFormat_example", password: "password_example", username: "username_example")) // ServiceVOIPDeviceAddEdit2 | device fields

// Create Device
DeviceAPI.v1AccountAccountidDevicePost(accountid: accountid, device: device) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **device** | [**ServiceVOIPDeviceAddEdit2**](ServiceVOIPDeviceAddEdit2.md) | device fields | 

### Return type

[**ServiceDocsDeviceGetSingle**](ServiceDocsDeviceGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidDeviceStatusGet**
```swift
    open class func v1AccountAccountidDeviceStatusGet(accountid: String, completion: @escaping (_ data: ServiceDocsDeviceStatus?, _ error: Error?) -> Void)
```

Get Device Status

Retrieve a device’s status (e.g., registered or not registered) in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric

// Get Device Status
DeviceAPI.v1AccountAccountidDeviceStatusGet(accountid: accountid) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 

### Return type

[**ServiceDocsDeviceStatus**](ServiceDocsDeviceStatus.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

