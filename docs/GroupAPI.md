# GroupAPI

All URIs are relative to *http://api.beta.cpaaslabs.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDGroupGet**](GroupAPI.md#v1accountaccountidgroupget) | **GET** /v1/account/{accountID}/group | Get Group List
[**v1AccountAccountIDGroupGroupIDDelete**](GroupAPI.md#v1accountaccountidgroupgroupiddelete) | **DELETE** /v1/account/{accountID}/group/{groupID} | Delete Group
[**v1AccountAccountIDGroupGroupIDGet**](GroupAPI.md#v1accountaccountidgroupgroupidget) | **GET** /v1/account/{accountID}/group/{groupID} | Get Group Details
[**v1AccountAccountIDGroupGroupIDPut**](GroupAPI.md#v1accountaccountidgroupgroupidput) | **PUT** /v1/account/{accountID}/group/{groupID} | Update Group
[**v1AccountAccountIDGroupPost**](GroupAPI.md#v1accountaccountidgrouppost) | **POST** /v1/account/{accountID}/group | Create Group


# **v1AccountAccountIDGroupGet**
```swift
    open class func v1AccountAccountIDGroupGet(accountID: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocGroupGetAll?, _ error: Error?) -> Void)
```

Get Group List

Get a list of groups associated with an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Group List
GroupAPI.v1AccountAccountIDGroupGet(accountID: accountID, startKey: startKey, pageSize: pageSize) { (response, error) in
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

[**ServiceDocGroupGetAll**](ServiceDocGroupGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDGroupGroupIDDelete**
```swift
    open class func v1AccountAccountIDGroupGroupIDDelete(accountID: String, groupID: String, completion: @escaping (_ data: ServiceDocGroupGetSingle?, _ error: Error?) -> Void)
```

Delete Group

Delete a call group in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let groupID = "groupID_example" // String | group ID, 32 alpha numeric

// Delete Group
GroupAPI.v1AccountAccountIDGroupGroupIDDelete(accountID: accountID, groupID: groupID) { (response, error) in
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
 **groupID** | **String** | group ID, 32 alpha numeric | 

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDGroupGroupIDGet**
```swift
    open class func v1AccountAccountIDGroupGroupIDGet(accountID: String, groupID: String, completion: @escaping (_ data: ServiceDocGroupGetSingle?, _ error: Error?) -> Void)
```

Get Group Details

Access details about a single group within an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let groupID = "groupID_example" // String | Group ID, 32 alpha numeric

// Get Group Details
GroupAPI.v1AccountAccountIDGroupGroupIDGet(accountID: accountID, groupID: groupID) { (response, error) in
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
 **groupID** | **String** | Group ID, 32 alpha numeric | 

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDGroupGroupIDPut**
```swift
    open class func v1AccountAccountIDGroupGroupIDPut(accountID: String, groupID: String, reqBody: ServiceVOIPGroupAddEdit2, completion: @escaping (_ data: ServiceDocGroupGetSingle?, _ error: Error?) -> Void)
```

Update Group

Modify the name, settings and other information for a group within an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let groupID = "groupID_example" // String | Group ID, 32 alpha numeric
let reqBody = service.VOIPGroupAddEdit2(endpoints: "TODO", name: "name_example") // ServiceVOIPGroupAddEdit2 | payload fields

// Update Group
GroupAPI.v1AccountAccountIDGroupGroupIDPut(accountID: accountID, groupID: groupID, reqBody: reqBody) { (response, error) in
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
 **groupID** | **String** | Group ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPGroupAddEdit2**](ServiceVOIPGroupAddEdit2.md) | payload fields | 

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDGroupPost**
```swift
    open class func v1AccountAccountIDGroupPost(accountID: String, group: ServiceVOIPGroupAddEdit2, completion: @escaping (_ data: ServiceDocGroupGetSingle?, _ error: Error?) -> Void)
```

Create Group

Provide an additional resource by adding a group list to an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID
let group = service.VOIPGroupAddEdit2(endpoints: "TODO", name: "name_example") // ServiceVOIPGroupAddEdit2 | group fields

// Create Group
GroupAPI.v1AccountAccountIDGroupPost(accountID: accountID, group: group) { (response, error) in
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
 **group** | [**ServiceVOIPGroupAddEdit2**](ServiceVOIPGroupAddEdit2.md) | group fields | 

### Return type

[**ServiceDocGroupGetSingle**](ServiceDocGroupGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

