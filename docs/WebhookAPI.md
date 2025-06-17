# WebhookAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1WebhookAccountAccountIDGet**](WebhookAPI.md#v1webhookaccountaccountidget) | **GET** /v1/webhook/account/{accountID} | Get Webhook List
[**v1WebhookAccountAccountIDPost**](WebhookAPI.md#v1webhookaccountaccountidpost) | **POST** /v1/webhook/account/{accountID} | Create Webhook
[**v1WebhookAccountAccountIDWebhookIDDelete**](WebhookAPI.md#v1webhookaccountaccountidwebhookiddelete) | **DELETE** /v1/webhook/account/{accountID}/{webhookID} | Delete Webhook
[**v1WebhookAccountAccountIDWebhookIDGet**](WebhookAPI.md#v1webhookaccountaccountidwebhookidget) | **GET** /v1/webhook/account/{accountID}/{webhookID} | Get Webhook Details
[**v1WebhookAccountAccountIDWebhookIDPut**](WebhookAPI.md#v1webhookaccountaccountidwebhookidput) | **PUT** /v1/webhook/account/{accountID}/{webhookID} | Update Webhook


# **v1WebhookAccountAccountIDGet**
```swift
    open class func v1WebhookAccountAccountIDGet(accountID: String, pageSize: Int? = nil, currentPage: Int? = nil, completion: @escaping (_ data: ServiceDocsWebhookGetAll?, _ error: Error?) -> Void)
```

Get Webhook List

Retrieve the webhook list in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)
let currentPage = 987 // Int | Current Page (optional)

// Get Webhook List
WebhookAPI.v1WebhookAccountAccountIDGet(accountID: accountID, pageSize: pageSize, currentPage: currentPage) { (response, error) in
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
 **pageSize** | **Int** | number of records to return, range 1 to 50 | [optional] 
 **currentPage** | **Int** | Current Page | [optional] 

### Return type

[**ServiceDocsWebhookGetAll**](ServiceDocsWebhookGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1WebhookAccountAccountIDPost**
```swift
    open class func v1WebhookAccountAccountIDPost(accountID: String, body: ServiceWebhookAdd, completion: @escaping (_ data: ServiceDocsWebhookGetSingle?, _ error: Error?) -> Void)
```

Create Webhook

Create a webhook for a specific account ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID
let body = service.WebhookAdd(callbackMethod: "callbackMethod_example", callbackUrl: "callbackUrl_example", data: "TODO", title: "title_example", webhookType: "webhookType_example") // ServiceWebhookAdd | Webhook data

// Create Webhook
WebhookAPI.v1WebhookAccountAccountIDPost(accountID: accountID, body: body) { (response, error) in
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
 **body** | [**ServiceWebhookAdd**](ServiceWebhookAdd.md) | Webhook data | 

### Return type

[**ServiceDocsWebhookGetSingle**](ServiceDocsWebhookGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1WebhookAccountAccountIDWebhookIDDelete**
```swift
    open class func v1WebhookAccountAccountIDWebhookIDDelete(accountID: String, webhookID: Int, completion: @escaping (_ data: ServiceDocsWebhookDelete?, _ error: Error?) -> Void)
```

Delete Webhook

Remove a webhook identified by its ID for a particular account ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID
let webhookID = 987 // Int | Webhook ID

// Delete Webhook
WebhookAPI.v1WebhookAccountAccountIDWebhookIDDelete(accountID: accountID, webhookID: webhookID) { (response, error) in
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
 **webhookID** | **Int** | Webhook ID | 

### Return type

[**ServiceDocsWebhookDelete**](ServiceDocsWebhookDelete.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1WebhookAccountAccountIDWebhookIDGet**
```swift
    open class func v1WebhookAccountAccountIDWebhookIDGet(accountID: String, webhookID: Int, completion: @escaping (_ data: ServiceDocsWebhookGetSingle?, _ error: Error?) -> Void)
```

Get Webhook Details

Access details about a single webhook ID for an individual account ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID
let webhookID = 987 // Int | Webhook ID

// Get Webhook Details
WebhookAPI.v1WebhookAccountAccountIDWebhookIDGet(accountID: accountID, webhookID: webhookID) { (response, error) in
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
 **webhookID** | **Int** | Webhook ID | 

### Return type

[**ServiceDocsWebhookGetSingle**](ServiceDocsWebhookGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1WebhookAccountAccountIDWebhookIDPut**
```swift
    open class func v1WebhookAccountAccountIDWebhookIDPut(accountID: String, webhookID: String, body: ServiceWebhookEdit, completion: @escaping (_ data: ServiceDocsWebhookGetSingle?, _ error: Error?) -> Void)
```

Update Webhook

Update a webhook identified by its ID for a distinct account ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID
let webhookID = "webhookID_example" // String | Webhook ID
let body = service.WebhookEdit(callbackMethod: "callbackMethod_example", callbackUrl: "callbackUrl_example", data: "TODO", isActive: false, title: "title_example", webhookType: "webhookType_example") // ServiceWebhookEdit | Updated webhook data

// Update Webhook
WebhookAPI.v1WebhookAccountAccountIDWebhookIDPut(accountID: accountID, webhookID: webhookID, body: body) { (response, error) in
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
 **webhookID** | **String** | Webhook ID | 
 **body** | [**ServiceWebhookEdit**](ServiceWebhookEdit.md) | Updated webhook data | 

### Return type

[**ServiceDocsWebhookGetSingle**](ServiceDocsWebhookGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

