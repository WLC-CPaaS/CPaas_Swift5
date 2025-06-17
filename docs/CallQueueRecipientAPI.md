# CallQueueRecipientAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDLoginrecipientRecipientIDPost**](CallQueueRecipientAPI.md#v1accountaccountidloginrecipientrecipientidpost) | **POST** /v1/account/{accountID}/loginrecipient/{recipientID} | Login as Recipient
[**v1AccountAccountIDQueuerecipientGet**](CallQueueRecipientAPI.md#v1accountaccountidqueuerecipientget) | **GET** /v1/account/{accountID}/queuerecipient | Change Recipient Status
[**v1AccountAccountIDRecipientRecipientIDStatusPost**](CallQueueRecipientAPI.md#v1accountaccountidrecipientrecipientidstatuspost) | **POST** /v1/account/{accountID}/recipient/{recipientID}/status | Get Recipient List


# **v1AccountAccountIDLoginrecipientRecipientIDPost**
```swift
    open class func v1AccountAccountIDLoginrecipientRecipientIDPost(accountID: String, recipientID: String, reqBody: ServiceVOIPCallQueueRecipientLoginLogoutData, completion: @escaping (_ data: ServiceDocsCallQueueResponseShort?, _ error: Error?) -> Void)
```

Login as Recipient

Agents must log in to receive calls. Depending on their membership, they can log in to one or more queues. (If an agent is a member of more than one queue, they will receive calls from all the queues they are a part of.)

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let recipientID = "recipientID_example" // String | Recipient ID, 32 alpha numeric
let reqBody = service.VOIPCallQueueRecipientLoginLogoutData(action: "action_example") // ServiceVOIPCallQueueRecipientLoginLogoutData | payload fields

// Login as Recipient
CallQueueRecipientAPI.v1AccountAccountIDLoginrecipientRecipientIDPost(accountID: accountID, recipientID: recipientID, reqBody: reqBody) { (response, error) in
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
 **recipientID** | **String** | Recipient ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPCallQueueRecipientLoginLogoutData**](ServiceVOIPCallQueueRecipientLoginLogoutData.md) | payload fields | 

### Return type

[**ServiceDocsCallQueueResponseShort**](ServiceDocsCallQueueResponseShort.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDQueuerecipientGet**
```swift
    open class func v1AccountAccountIDQueuerecipientGet(accountID: String, completion: @escaping (_ data: ServiceDocsGetQueueRecipients?, _ error: Error?) -> Void)
```

Change Recipient Status

Get a list of all recipients in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric

// Change Recipient Status
CallQueueRecipientAPI.v1AccountAccountIDQueuerecipientGet(accountID: accountID) { (response, error) in
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

[**ServiceDocsGetQueueRecipients**](ServiceDocsGetQueueRecipients.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDRecipientRecipientIDStatusPost**
```swift
    open class func v1AccountAccountIDRecipientRecipientIDStatusPost(accountID: String, recipientID: String, reqBody: ServiceVOIPCallQueueRecipientStatusData, completion: @escaping (_ data: ServiceAPIResponse?, _ error: Error?) -> Void)
```

Get Recipient List

Change the status of a recipient to ready, away, etc.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let recipientID = "recipientID_example" // String | Recipient ID, 32 alpha numeric
let reqBody = service.VOIPCallQueueRecipientStatusData(status: "status_example") // ServiceVOIPCallQueueRecipientStatusData | payload fields

// Get Recipient List
CallQueueRecipientAPI.v1AccountAccountIDRecipientRecipientIDStatusPost(accountID: accountID, recipientID: recipientID, reqBody: reqBody) { (response, error) in
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
 **recipientID** | **String** | Recipient ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPCallQueueRecipientStatusData**](ServiceVOIPCallQueueRecipientStatusData.md) | payload fields | 

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

