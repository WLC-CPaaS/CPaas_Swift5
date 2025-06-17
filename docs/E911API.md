# E911API

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1E911Get**](E911API.md#v1e911get) | **GET** /v1/e911 | Get E911 List
[**v1E911LocationLocationIDActivatePut**](E911API.md#v1e911locationlocationidactivateput) | **PUT** /v1/e911/location/{locationID}/activate | Activate E911 Location
[**v1E911LocationLocationIDDelete**](E911API.md#v1e911locationlocationiddelete) | **DELETE** /v1/e911/location/{locationID} | Delete E911 Location
[**v1E911LocationValidatePut**](E911API.md#v1e911locationvalidateput) | **PUT** /v1/e911/location/validate | Validate a Location
[**v1E911PhoneNumberDelete**](E911API.md#v1e911phonenumberdelete) | **DELETE** /v1/e911/{phoneNumber} | Delete E911 Phone Number
[**v1E911PhoneNumberLocationActiveGet**](E911API.md#v1e911phonenumberlocationactiveget) | **GET** /v1/e911/{phoneNumber}/location/active | Get Actvie Location for a Phone Number
[**v1E911PhoneNumberLocationGet**](E911API.md#v1e911phonenumberlocationget) | **GET** /v1/e911/{phoneNumber}/location | Get Location List for Phone Number
[**v1E911Post**](E911API.md#v1e911post) | **POST** /v1/e911 | Create an E911 Location


# **v1E911Get**
```swift
    open class func v1E911Get(completion: @escaping (_ data: ServiceDocE911URIsApiOutput?, _ error: Error?) -> Void)
```

Get E911 List

Obtain e911 URIs associated with the provided account ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Get E911 List
E911API.v1E911Get() { (response, error) in
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

[**ServiceDocE911URIsApiOutput**](ServiceDocE911URIsApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1E911LocationLocationIDActivatePut**
```swift
    open class func v1E911LocationLocationIDActivatePut(locationID: String, completion: @escaping (_ data: ServiceDocE911ActiveLocationOutput?, _ error: Error?) -> Void)
```

Activate E911 Location

Edit the provision location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let locationID = "locationID_example" // String | Location ID

// Activate E911 Location
E911API.v1E911LocationLocationIDActivatePut(locationID: locationID) { (response, error) in
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
 **locationID** | **String** | Location ID | 

### Return type

[**ServiceDocE911ActiveLocationOutput**](ServiceDocE911ActiveLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1E911LocationLocationIDDelete**
```swift
    open class func v1E911LocationLocationIDDelete(locationID: String, completion: @escaping (_ data: ServiceDocE911RemoveLocationOutput?, _ error: Error?) -> Void)
```

Delete E911 Location

Remove the location.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let locationID = "locationID_example" // String | Location ID

// Delete E911 Location
E911API.v1E911LocationLocationIDDelete(locationID: locationID) { (response, error) in
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
 **locationID** | **String** | Location ID | 

### Return type

[**ServiceDocE911RemoveLocationOutput**](ServiceDocE911RemoveLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1E911LocationValidatePut**
```swift
    open class func v1E911LocationValidatePut(reqBody: ServiceE911ValidateLocationInput, completion: @escaping (_ data: ServiceDocE911ValidateLocationOutput?, _ error: Error?) -> Void)
```

Validate a Location

Validate the location details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let reqBody = service.E911ValidateLocationInput(location: service.E911LocationInput(address1: "address1_example", address2: "address2_example", community: "community_example", plusFour: "plusFour_example", postalCode: "postalCode_example", state: "state_example", type: "type_example")) // ServiceE911ValidateLocationInput | location details

// Validate a Location
E911API.v1E911LocationValidatePut(reqBody: reqBody) { (response, error) in
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
 **reqBody** | [**ServiceE911ValidateLocationInput**](ServiceE911ValidateLocationInput.md) | location details | 

### Return type

[**ServiceDocE911ValidateLocationOutput**](ServiceDocE911ValidateLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1E911PhoneNumberDelete**
```swift
    open class func v1E911PhoneNumberDelete(phoneNumber: String, completion: @escaping (_ data: ServiceDocE911RemoveURIApiOutput?, _ error: Error?) -> Void)
```

Delete E911 Phone Number

Delete the e911 URI connected with the account URI.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let phoneNumber = "phoneNumber_example" // String | Phone Number

// Delete E911 Phone Number
E911API.v1E911PhoneNumberDelete(phoneNumber: phoneNumber) { (response, error) in
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
 **phoneNumber** | **String** | Phone Number | 

### Return type

[**ServiceDocE911RemoveURIApiOutput**](ServiceDocE911RemoveURIApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1E911PhoneNumberLocationActiveGet**
```swift
    open class func v1E911PhoneNumberLocationActiveGet(phoneNumber: String, completion: @escaping (_ data: ServiceDocE911ActiveLocationURIApiOutput?, _ error: Error?) -> Void)
```

Get Actvie Location for a Phone Number

Get the e911 location connected with the URI.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let phoneNumber = "phoneNumber_example" // String | Phone Number

// Get Actvie Location for a Phone Number
E911API.v1E911PhoneNumberLocationActiveGet(phoneNumber: phoneNumber) { (response, error) in
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
 **phoneNumber** | **String** | Phone Number | 

### Return type

[**ServiceDocE911ActiveLocationURIApiOutput**](ServiceDocE911ActiveLocationURIApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1E911PhoneNumberLocationGet**
```swift
    open class func v1E911PhoneNumberLocationGet(phoneNumber: String, completion: @escaping (_ data: ServiceDocE911LocationsURIApiOutput?, _ error: Error?) -> Void)
```

Get Location List for Phone Number

Access a list of the e911 locations associated with the provided URI.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let phoneNumber = "phoneNumber_example" // String | Phone Number

// Get Location List for Phone Number
E911API.v1E911PhoneNumberLocationGet(phoneNumber: phoneNumber) { (response, error) in
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
 **phoneNumber** | **String** | Phone Number | 

### Return type

[**ServiceDocE911LocationsURIApiOutput**](ServiceDocE911LocationsURIApiOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1E911Post**
```swift
    open class func v1E911Post(reqBody: ServiceE911AddLocationInput, completion: @escaping (_ data: ServiceDocE911AddLocationOutput?, _ error: Error?) -> Void)
```

Create an E911 Location

Enter new location details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let reqBody = service.E911AddLocationInput(location: service.E911LocationInput(address1: "address1_example", address2: "address2_example", community: "community_example", plusFour: "plusFour_example", postalCode: "postalCode_example", state: "state_example", type: "type_example"), uri: service.E911URIInput(callerName: "callerName_example", uri: "uri_example")) // ServiceE911AddLocationInput | location details

// Create an E911 Location
E911API.v1E911Post(reqBody: reqBody) { (response, error) in
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
 **reqBody** | [**ServiceE911AddLocationInput**](ServiceE911AddLocationInput.md) | location details | 

### Return type

[**ServiceDocE911AddLocationOutput**](ServiceDocE911AddLocationOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

