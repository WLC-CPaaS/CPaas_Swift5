# CPaaSManagementAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1MgmtUserGet**](CPaaSManagementAPI.md#v1mgmtuserget) | **GET** /v1/mgmt/user | Get All CPaaS Users
[**v1MgmtUserPost**](CPaaSManagementAPI.md#v1mgmtuserpost) | **POST** /v1/mgmt/user | Invite CPaaS User
[**v1MgmtUserUserIDDelete**](CPaaSManagementAPI.md#v1mgmtuseruseriddelete) | **DELETE** /v1/mgmt/user/{userID} | Delete CPaaS User
[**v1MgmtUserUserIDGet**](CPaaSManagementAPI.md#v1mgmtuseruseridget) | **GET** /v1/mgmt/user/{userID} | Get CPaaS User Details
[**v1MgmtUserUserIDPut**](CPaaSManagementAPI.md#v1mgmtuseruseridput) | **PUT** /v1/mgmt/user/{userID} | Update CPaaS User Role


# **v1MgmtUserGet**
```swift
    open class func v1MgmtUserGet(pageSize: Int? = nil, startKey: String? = nil, sort: String? = nil, email: String? = nil, role: String? = nil, firstName: String? = nil, lastName: String? = nil, completion: @escaping (_ data: ServiceDocsAdminUserGetAll?, _ error: Error?) -> Void)
```

Get All CPaaS Users

Retrieve a list of all CPaaS users in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let pageSize = 987 // Int | number of records to return, range 1 to 100 (optional)
let startKey = "startKey_example" // String | unique to fetch next records (optional)
let sort = "sort_example" // String | sorting the records by email(default)/role/first_name/last_name, _A is for ascending and _D is for descending, eg: sort=role_A,email_D (optional)
let email = "email_example" // String | Email (optional)
let role = "role_example" // String | User Role (optional)
let firstName = "firstName_example" // String | First Name (optional)
let lastName = "lastName_example" // String | Last Name (optional)

// Get All CPaaS Users
CPaaSManagementAPI.v1MgmtUserGet(pageSize: pageSize, startKey: startKey, sort: sort, email: email, role: role, firstName: firstName, lastName: lastName) { (response, error) in
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
 **pageSize** | **Int** | number of records to return, range 1 to 100 | [optional] 
 **startKey** | **String** | unique to fetch next records | [optional] 
 **sort** | **String** | sorting the records by email(default)/role/first_name/last_name, _A is for ascending and _D is for descending, eg: sort&#x3D;role_A,email_D | [optional] 
 **email** | **String** | Email | [optional] 
 **role** | **String** | User Role | [optional] 
 **firstName** | **String** | First Name | [optional] 
 **lastName** | **String** | Last Name | [optional] 

### Return type

[**ServiceDocsAdminUserGetAll**](ServiceDocsAdminUserGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MgmtUserPost**
```swift
    open class func v1MgmtUserPost(reqBody: ServiceAdminUserAddData, completion: @escaping (_ data: ServiceDocsAdminUserGetSingle?, _ error: Error?) -> Void)
```

Invite CPaaS User

Link a new CPaaS user to an existing client account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let reqBody = service.AdminUserAddData(email: "email_example", role: "role_example") // ServiceAdminUserAddData | payload fields

// Invite CPaaS User
CPaaSManagementAPI.v1MgmtUserPost(reqBody: reqBody) { (response, error) in
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
 **reqBody** | [**ServiceAdminUserAddData**](ServiceAdminUserAddData.md) | payload fields | 

### Return type

[**ServiceDocsAdminUserGetSingle**](ServiceDocsAdminUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MgmtUserUserIDDelete**
```swift
    open class func v1MgmtUserUserIDDelete(userID: String, completion: @escaping (_ data: ServiceDocsAdminUserDelete?, _ error: Error?) -> Void)
```

Delete CPaaS User

Delete a CPaaS user from the associated account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userID = "userID_example" // String | User ID, numeric

// Delete CPaaS User
CPaaSManagementAPI.v1MgmtUserUserIDDelete(userID: userID) { (response, error) in
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
 **userID** | **String** | User ID, numeric | 

### Return type

[**ServiceDocsAdminUserDelete**](ServiceDocsAdminUserDelete.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MgmtUserUserIDGet**
```swift
    open class func v1MgmtUserUserIDGet(userID: String, completion: @escaping (_ data: ServiceDocsAdminUserGetSingle?, _ error: Error?) -> Void)
```

Get CPaaS User Details

View details about each CPaaS user in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userID = "userID_example" // String | User ID, numeric

// Get CPaaS User Details
CPaaSManagementAPI.v1MgmtUserUserIDGet(userID: userID) { (response, error) in
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
 **userID** | **String** | User ID, numeric | 

### Return type

[**ServiceDocsAdminUserGetSingle**](ServiceDocsAdminUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1MgmtUserUserIDPut**
```swift
    open class func v1MgmtUserUserIDPut(userID: String, reqBody: ServiceAdminUserEditData, completion: @escaping (_ data: ServiceDocsAdminUserGetSingle?, _ error: Error?) -> Void)
```

Update CPaaS User Role

Update a CPaaS user's role within a client's account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userID = "userID_example" // String | User ID, numeric
let reqBody = service.AdminUserEditData(role: "role_example") // ServiceAdminUserEditData | payload fields

// Update CPaaS User Role
CPaaSManagementAPI.v1MgmtUserUserIDPut(userID: userID, reqBody: reqBody) { (response, error) in
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
 **userID** | **String** | User ID, numeric | 
 **reqBody** | [**ServiceAdminUserEditData**](ServiceAdminUserEditData.md) | payload fields | 

### Return type

[**ServiceDocsAdminUserGetSingle**](ServiceDocsAdminUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

