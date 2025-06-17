# CallQueueManagementAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDCallqueueGet**](CallQueueManagementAPI.md#v1accountaccountidcallqueueget) | **GET** /v1/account/{accountID}/callqueue | Get Call Queues
[**v1AccountAccountIDCallqueuePost**](CallQueueManagementAPI.md#v1accountaccountidcallqueuepost) | **POST** /v1/account/{accountID}/callqueue | Create Call Queue
[**v1AccountAccountIDCallqueueQueueIDDelete**](CallQueueManagementAPI.md#v1accountaccountidcallqueuequeueiddelete) | **DELETE** /v1/account/{accountID}/callqueue/{queueID} | Delete Call Queue
[**v1AccountAccountIDCallqueueQueueIDGet**](CallQueueManagementAPI.md#v1accountaccountidcallqueuequeueidget) | **GET** /v1/account/{accountID}/callqueue/{queueID} | Get Call Queue Details
[**v1AccountAccountIDCallqueueQueueIDPut**](CallQueueManagementAPI.md#v1accountaccountidcallqueuequeueidput) | **PUT** /v1/account/{accountID}/callqueue/{queueID} | Update Call Queue
[**v1AccountAccountIDCallqueueQueueIDStatusGet**](CallQueueManagementAPI.md#v1accountaccountidcallqueuequeueidstatusget) | **GET** /v1/account/{accountID}/callqueue/{queueID}/status | Get Call Queue Status
[**v1AccountAccountIDQueuerolesGet**](CallQueueManagementAPI.md#v1accountaccountidqueuerolesget) | **GET** /v1/account/{accountID}/queueroles | Get Queue Roles of Account
[**v1AccountAccountIDQueuerolesQueueIDPost**](CallQueueManagementAPI.md#v1accountaccountidqueuerolesqueueidpost) | **POST** /v1/account/{accountID}/queueroles/{queueID} | Assign Queue Role to Call Queue


# **v1AccountAccountIDCallqueueGet**
```swift
    open class func v1AccountAccountIDCallqueueGet(accountID: String, completion: @escaping (_ data: ServiceDocsCallQueueGetAll?, _ error: Error?) -> Void)
```

Get Call Queues

Retrieve call queue details for an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Get Call Queues
CallQueueManagementAPI.v1AccountAccountIDCallqueueGet(accountID: accountID) { (response, error) in
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

[**ServiceDocsCallQueueGetAll**](ServiceDocsCallQueueGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDCallqueuePost**
```swift
    open class func v1AccountAccountIDCallqueuePost(accountID: String, reqBody: ServiceVOIPCallQueueAddEditData, completion: @escaping (_ data: ServiceDocsCallQueueGetSingle?, _ error: Error?) -> Void)
```

Create Call Queue

Set up a call queue in an account for specific inbound calls.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let reqBody = service.VOIPCallQueueAddEditData(agentWrapupTime: 123, features: "TODO", forceAwayOnReject: false, name: "name_example", queueRouter: "queueRouter_example", queueType: "queueType_example", ringTimeout: 123, tickTime: 123) // ServiceVOIPCallQueueAddEditData | payload fields

// Create Call Queue
CallQueueManagementAPI.v1AccountAccountIDCallqueuePost(accountID: accountID, reqBody: reqBody) { (response, error) in
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
 **reqBody** | [**ServiceVOIPCallQueueAddEditData**](ServiceVOIPCallQueueAddEditData.md) | payload fields | 

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDCallqueueQueueIDDelete**
```swift
    open class func v1AccountAccountIDCallqueueQueueIDDelete(accountID: String, queueID: String, completion: @escaping (_ data: ServiceDocsCallQueueGetSingle?, _ error: Error?) -> Void)
```

Delete Call Queue

Remove the call queue from an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let queueID = "queueID_example" // String | Queue ID, 32 alpha numeric

// Delete Call Queue
CallQueueManagementAPI.v1AccountAccountIDCallqueueQueueIDDelete(accountID: accountID, queueID: queueID) { (response, error) in
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
 **queueID** | **String** | Queue ID, 32 alpha numeric | 

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDCallqueueQueueIDGet**
```swift
    open class func v1AccountAccountIDCallqueueQueueIDGet(accountID: String, queueID: String, completion: @escaping (_ data: ServiceDocsCallQueueGetSingle?, _ error: Error?) -> Void)
```

Get Call Queue Details

Capture metadata about a specific queue, such as queue_type and agent_wrapup_time.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let queueID = "queueID_example" // String | Queue ID, 32 alpha numeric

// Get Call Queue Details
CallQueueManagementAPI.v1AccountAccountIDCallqueueQueueIDGet(accountID: accountID, queueID: queueID) { (response, error) in
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
 **queueID** | **String** | Queue ID, 32 alpha numeric | 

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDCallqueueQueueIDPut**
```swift
    open class func v1AccountAccountIDCallqueueQueueIDPut(accountID: String, queueID: String, reqBody: ServiceVOIPCallQueueAddEditData, completion: @escaping (_ data: ServiceDocsCallQueueGetSingle?, _ error: Error?) -> Void)
```

Update Call Queue

Update the metadata mentioned above.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let queueID = "queueID_example" // String | Queue ID, 32 alpha numeric
let reqBody = service.VOIPCallQueueAddEditData(agentWrapupTime: 123, features: "TODO", forceAwayOnReject: false, name: "name_example", queueRouter: "queueRouter_example", queueType: "queueType_example", ringTimeout: 123, tickTime: 123) // ServiceVOIPCallQueueAddEditData | payload fields

// Update Call Queue
CallQueueManagementAPI.v1AccountAccountIDCallqueueQueueIDPut(accountID: accountID, queueID: queueID, reqBody: reqBody) { (response, error) in
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
 **queueID** | **String** | Queue ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPCallQueueAddEditData**](ServiceVOIPCallQueueAddEditData.md) | payload fields | 

### Return type

[**ServiceDocsCallQueueGetSingle**](ServiceDocsCallQueueGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDCallqueueQueueIDStatusGet**
```swift
    open class func v1AccountAccountIDCallqueueQueueIDStatusGet(accountID: String, queueID: String, completion: @escaping (_ data: ServiceDocsCallQueueGetSingleStatus?, _ error: Error?) -> Void)
```

Get Call Queue Status

Access the status of a call queue in an account, such as the number of available agents (recipients), estimated wait time, and number of active sessions.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let queueID = "queueID_example" // String | Queue ID, 32 alpha numeric

// Get Call Queue Status
CallQueueManagementAPI.v1AccountAccountIDCallqueueQueueIDStatusGet(accountID: accountID, queueID: queueID) { (response, error) in
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
 **queueID** | **String** | Queue ID, 32 alpha numeric | 

### Return type

[**ServiceDocsCallQueueGetSingleStatus**](ServiceDocsCallQueueGetSingleStatus.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDQueuerolesGet**
```swift
    open class func v1AccountAccountIDQueuerolesGet(accountID: String, completion: @escaping (_ data: ServiceDocsCallQueueGetRoles?, _ error: Error?) -> Void)
```

Get Queue Roles of Account

Obtain data about each queue role in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Get Queue Roles of Account
CallQueueManagementAPI.v1AccountAccountIDQueuerolesGet(accountID: accountID) { (response, error) in
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

[**ServiceDocsCallQueueGetRoles**](ServiceDocsCallQueueGetRoles.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDQueuerolesQueueIDPost**
```swift
    open class func v1AccountAccountIDQueuerolesQueueIDPost(accountID: String, queueID: String, reqBody: ServiceVOIPCallQueueRoleAssignData, completion: @escaping (_ data: ServiceAPIResponse?, _ error: Error?) -> Void)
```

Assign Queue Role to Call Queue

Assign roles to members in a call queue.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let queueID = "queueID_example" // String | Queue ID, 32 alpha numeric
let reqBody = service.VOIPCallQueueRoleAssignData(action: "action_example", recipients: ["TODO"], setMembership: false) // ServiceVOIPCallQueueRoleAssignData | payload fields

// Assign Queue Role to Call Queue
CallQueueManagementAPI.v1AccountAccountIDQueuerolesQueueIDPost(accountID: accountID, queueID: queueID, reqBody: reqBody) { (response, error) in
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
 **queueID** | **String** | Queue ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPCallQueueRoleAssignData**](ServiceVOIPCallQueueRoleAssignData.md) | payload fields | 

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

