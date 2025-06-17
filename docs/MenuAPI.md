# MenuAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDMenuGet**](MenuAPI.md#v1accountaccountidmenuget) | **GET** /v1/account/{accountID}/menu | Get Menu List
[**v1AccountAccountIDMenuMenuIDDelete**](MenuAPI.md#v1accountaccountidmenumenuiddelete) | **DELETE** /v1/account/{accountID}/menu/{menuID} | Delete Menu
[**v1AccountAccountIDMenuMenuIDGet**](MenuAPI.md#v1accountaccountidmenumenuidget) | **GET** /v1/account/{accountID}/menu/{menuID} | Get Menu Details
[**v1AccountAccountIDMenuMenuIDPut**](MenuAPI.md#v1accountaccountidmenumenuidput) | **PUT** /v1/account/{accountID}/menu/{menuID} | Update Menu
[**v1AccountAccountIDMenuPost**](MenuAPI.md#v1accountaccountidmenupost) | **POST** /v1/account/{accountID}/menu | Create Menu


# **v1AccountAccountIDMenuGet**
```swift
    open class func v1AccountAccountIDMenuGet(accountID: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: MenuOutputList?, _ error: Error?) -> Void)
```

Get Menu List

Users can access data about all menus in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Menu List
MenuAPI.v1AccountAccountIDMenuGet(accountID: accountID, startKey: startKey, pageSize: pageSize) { (response, error) in
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

[**MenuOutputList**](MenuOutputList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDMenuMenuIDDelete**
```swift
    open class func v1AccountAccountIDMenuMenuIDDelete(accountID: String, menuID: String, completion: @escaping (_ data: MenuOutputDetail?, _ error: Error?) -> Void)
```

Delete Menu

Delete a menu from an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let menuID = "menuID_example" // String | Menu ID, 32 alpha numeric

// Delete Menu
MenuAPI.v1AccountAccountIDMenuMenuIDDelete(accountID: accountID, menuID: menuID) { (response, error) in
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
 **menuID** | **String** | Menu ID, 32 alpha numeric | 

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDMenuMenuIDGet**
```swift
    open class func v1AccountAccountIDMenuMenuIDGet(accountID: String, menuID: String, completion: @escaping (_ data: MenuOutputDetail?, _ error: Error?) -> Void)
```

Get Menu Details

Get details about a menu in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let menuID = "menuID_example" // String | Menu ID, 32 alpha numeric

// Get Menu Details
MenuAPI.v1AccountAccountIDMenuMenuIDGet(accountID: accountID, menuID: menuID) { (response, error) in
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
 **menuID** | **String** | Menu ID, 32 alpha numeric | 

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDMenuMenuIDPut**
```swift
    open class func v1AccountAccountIDMenuMenuIDPut(accountID: String, menuID: String, reqBody: MenuInputData, completion: @escaping (_ data: MenuOutputDetail?, _ error: Error?) -> Void)
```

Update Menu

Edit an account menu.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let menuID = "menuID_example" // String | Menu ID, 32 alpha numeric
let reqBody = MenuInputData(media: MenuOutputDetailMedia(greeting: "greeting_example", invalidMedia: 123, transferMedia: 123), name: "name_example", timeout: 123) // MenuInputData | payload fields

// Update Menu
MenuAPI.v1AccountAccountIDMenuMenuIDPut(accountID: accountID, menuID: menuID, reqBody: reqBody) { (response, error) in
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
 **menuID** | **String** | Menu ID, 32 alpha numeric | 
 **reqBody** | [**MenuInputData**](MenuInputData.md) | payload fields | 

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDMenuPost**
```swift
    open class func v1AccountAccountIDMenuPost(accountID: String, menu: MenuInputData, completion: @escaping (_ data: MenuOutputDetail?, _ error: Error?) -> Void)
```

Create Menu

Create a new menu for an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alphanumeric
let menu = MenuInputData(media: MenuOutputDetailMedia(greeting: "greeting_example", invalidMedia: 123, transferMedia: 123), name: "name_example", timeout: 123) // MenuInputData | Menu data

// Create Menu
MenuAPI.v1AccountAccountIDMenuPost(accountID: accountID, menu: menu) { (response, error) in
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
 **accountID** | **String** | Account ID, 32 alphanumeric | 
 **menu** | [**MenuInputData**](MenuInputData.md) | Menu data | 

### Return type

[**MenuOutputDetail**](MenuOutputDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

