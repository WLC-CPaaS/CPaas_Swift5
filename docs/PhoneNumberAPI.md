# PhoneNumberAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountidPhonenumberGet**](PhoneNumberAPI.md#v1accountaccountidphonenumberget) | **GET** /v1/account/{accountid}/phonenumber | Get Assigned Numbers List
[**v1AccountPhonenumberAssignPost**](PhoneNumberAPI.md#v1accountphonenumberassignpost) | **POST** /v1/account/phonenumber/assign | Assign Number
[**v1AccountPhonenumberDisconnectPost**](PhoneNumberAPI.md#v1accountphonenumberdisconnectpost) | **POST** /v1/account/phonenumber/disconnect | Disconnect Number
[**v1AccountPhonenumberGet**](PhoneNumberAPI.md#v1accountphonenumberget) | **GET** /v1/account/phonenumber | Get Unassigned Numbers List
[**v1AccountPhonenumberPost**](PhoneNumberAPI.md#v1accountphonenumberpost) | **POST** /v1/account/phonenumber | Purchase Number
[**v1AccountPhonenumberUnassignPost**](PhoneNumberAPI.md#v1accountphonenumberunassignpost) | **POST** /v1/account/phonenumber/unassign | Unassign Number
[**v1PhonenumberSearchGet**](PhoneNumberAPI.md#v1phonenumbersearchget) | **GET** /v1/phonenumber/search | Search New Numbers


# **v1AccountAccountidPhonenumberGet**
```swift
    open class func v1AccountAccountidPhonenumberGet(accountid: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsAccountPhonenumberGetAll?, _ error: Error?) -> Void)
```

Get Assigned Numbers List

Access all phone numbers assigned to a CPaaS account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | Start key for pagination, obtained from previous responses (optional)
let pageSize = 987 // Int | Number of records to return per page (range: 1 to 50) (optional)

// Get Assigned Numbers List
PhoneNumberAPI.v1AccountAccountidPhonenumberGet(accountid: accountid, startKey: startKey, pageSize: pageSize) { (response, error) in
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
 **startKey** | **String** | Start key for pagination, obtained from previous responses | [optional] 
 **pageSize** | **Int** | Number of records to return per page (range: 1 to 50) | [optional] 

### Return type

[**ServiceDocsAccountPhonenumberGetAll**](ServiceDocsAccountPhonenumberGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountPhonenumberAssignPost**
```swift
    open class func v1AccountPhonenumberAssignPost(payload: ServiceDocsPhonenumberAssignPayload, completion: @escaping (_ data: ServiceAPIResponseStatusCodeOnly?, _ error: Error?) -> Void)
```

Assign Number

Assign a purchased phone number to an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let payload = service.DocsPhonenumberAssignPayload(phonenumber: "phonenumber_example", toAccount: "toAccount_example") // ServiceDocsPhonenumberAssignPayload | assignment payload

// Assign Number
PhoneNumberAPI.v1AccountPhonenumberAssignPost(payload: payload) { (response, error) in
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
 **payload** | [**ServiceDocsPhonenumberAssignPayload**](ServiceDocsPhonenumberAssignPayload.md) | assignment payload | 

### Return type

[**ServiceAPIResponseStatusCodeOnly**](ServiceAPIResponseStatusCodeOnly.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountPhonenumberDisconnectPost**
```swift
    open class func v1AccountPhonenumberDisconnectPost(payload: ServiceDocsPhonenumberUnassignPayload, completion: @escaping (_ data: ServiceAPIResponseStatusCodeOnly?, _ error: Error?) -> Void)
```

Disconnect Number

Disconnecting a phone number from a CPaaS account relinquishes ownership of the number back to the carrier.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let payload = service.DocsPhonenumberUnassignPayload(phonenumber: "phonenumber_example") // ServiceDocsPhonenumberUnassignPayload | disconnect payload

// Disconnect Number
PhoneNumberAPI.v1AccountPhonenumberDisconnectPost(payload: payload) { (response, error) in
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
 **payload** | [**ServiceDocsPhonenumberUnassignPayload**](ServiceDocsPhonenumberUnassignPayload.md) | disconnect payload | 

### Return type

[**ServiceAPIResponseStatusCodeOnly**](ServiceAPIResponseStatusCodeOnly.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountPhonenumberGet**
```swift
    open class func v1AccountPhonenumberGet(startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsAccountPhonenumberGetAll?, _ error: Error?) -> Void)
```

Get Unassigned Numbers List

Obtain all phone numbers that have not been assigned to a CPaaS account within your organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startKey = "startKey_example" // String | Start key for pagination, obtained from previous responses (optional)
let pageSize = 987 // Int | Number of records to return per page (range: 1 to 50) (optional)

// Get Unassigned Numbers List
PhoneNumberAPI.v1AccountPhonenumberGet(startKey: startKey, pageSize: pageSize) { (response, error) in
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
 **startKey** | **String** | Start key for pagination, obtained from previous responses | [optional] 
 **pageSize** | **Int** | Number of records to return per page (range: 1 to 50) | [optional] 

### Return type

[**ServiceDocsAccountPhonenumberGetAll**](ServiceDocsAccountPhonenumberGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountPhonenumberPost**
```swift
    open class func v1AccountPhonenumberPost(phonenumber: [String], completion: @escaping (_ data: ServiceDocsOrderPhonenumber?, _ error: Error?) -> Void)
```

Purchase Number

Purchase or activate a phone number for CPaaS accounts within your business.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let phonenumber = ["property_example"] // [String] | phonenumber fields

// Purchase Number
PhoneNumberAPI.v1AccountPhonenumberPost(phonenumber: phonenumber) { (response, error) in
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
 **phonenumber** | [**[String]**](String.md) | phonenumber fields | 

### Return type

[**ServiceDocsOrderPhonenumber**](ServiceDocsOrderPhonenumber.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountPhonenumberUnassignPost**
```swift
    open class func v1AccountPhonenumberUnassignPost(payload: ServiceDocsPhonenumberUnassignPayload, completion: @escaping (_ data: ServiceAPIResponseStatusCodeOnly?, _ error: Error?) -> Void)
```

Unassign Number

Remove a phone number from an account and place it back on the list of unassigned phone numbers.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let payload = service.DocsPhonenumberUnassignPayload(phonenumber: "phonenumber_example") // ServiceDocsPhonenumberUnassignPayload | unassign payload

// Unassign Number
PhoneNumberAPI.v1AccountPhonenumberUnassignPost(payload: payload) { (response, error) in
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
 **payload** | [**ServiceDocsPhonenumberUnassignPayload**](ServiceDocsPhonenumberUnassignPayload.md) | unassign payload | 

### Return type

[**ServiceAPIResponseStatusCodeOnly**](ServiceAPIResponseStatusCodeOnly.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1PhonenumberSearchGet**
```swift
    open class func v1PhonenumberSearchGet(areaCode: String, quantity: Int? = nil, completion: @escaping (_ data: ServiceDocsPhonenumberSearchGetAll?, _ error: Error?) -> Void)
```

Search New Numbers

Conduct a search for available phone numbers for purchase within an area code.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let areaCode = "areaCode_example" // String | Area code (exactly 3 numeric characters) example: 610 or 484
let quantity = 987 // Int | Number of records to return (range: 1 to 100, defaults to 100 if not provided) (optional) (default to 100)

// Search New Numbers
PhoneNumberAPI.v1PhonenumberSearchGet(areaCode: areaCode, quantity: quantity) { (response, error) in
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
 **areaCode** | **String** | Area code (exactly 3 numeric characters) example: 610 or 484 | 
 **quantity** | **Int** | Number of records to return (range: 1 to 100, defaults to 100 if not provided) | [optional] [default to 100]

### Return type

[**ServiceDocsPhonenumberSearchGetAll**](ServiceDocsPhonenumberSearchGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

