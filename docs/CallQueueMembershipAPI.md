# CallQueueMembershipAPI

All URIs are relative to *http://api.beta.cpaaslabs.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDQueuemembershipPost**](CallQueueMembershipAPI.md#v1accountaccountidqueuemembershippost) | **POST** /v1/account/{accountID}/queuemembership | Grant Queue Membership to User
[**v1AccountAccountIDQueuemembershipRecipientIDDisablePost**](CallQueueMembershipAPI.md#v1accountaccountidqueuemembershiprecipientiddisablepost) | **POST** /v1/account/{accountID}/queuemembership/{recipientID}/disable | Disable Queue Membership
[**v1AccountAccountIDQueuemembershipRecipientIDEnablePost**](CallQueueMembershipAPI.md#v1accountaccountidqueuemembershiprecipientidenablepost) | **POST** /v1/account/{accountID}/queuemembership/{recipientID}/enable | Enable Queue Membership


# **v1AccountAccountIDQueuemembershipPost**
```swift
    open class func v1AccountAccountIDQueuemembershipPost(accountID: String, reqBody: ServiceVOIPQueueMembershipAddData, completion: @escaping (_ data: ServiceDocsQueueMembershipOutput?, _ error: Error?) -> Void)
```

Grant Queue Membership to User

Allow users to create queue memberships for recipients.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let reqBody = service.VOIPQueueMembershipAddData(recipientId: "recipientId_example") // ServiceVOIPQueueMembershipAddData | payload fields

// Grant Queue Membership to User
CallQueueMembershipAPI.v1AccountAccountIDQueuemembershipPost(accountID: accountID, reqBody: reqBody) { (response, error) in
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
 **reqBody** | [**ServiceVOIPQueueMembershipAddData**](ServiceVOIPQueueMembershipAddData.md) | payload fields | 

### Return type

[**ServiceDocsQueueMembershipOutput**](ServiceDocsQueueMembershipOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDQueuemembershipRecipientIDDisablePost**
```swift
    open class func v1AccountAccountIDQueuemembershipRecipientIDDisablePost(accountID: String, recipientID: String, completion: @escaping (_ data: ServiceAPIResponse?, _ error: Error?) -> Void)
```

Disable Queue Membership

Deactivate queue membership for a recipient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let recipientID = "recipientID_example" // String | Recipient ID, 32 alpha numeric

// Disable Queue Membership
CallQueueMembershipAPI.v1AccountAccountIDQueuemembershipRecipientIDDisablePost(accountID: accountID, recipientID: recipientID) { (response, error) in
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

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDQueuemembershipRecipientIDEnablePost**
```swift
    open class func v1AccountAccountIDQueuemembershipRecipientIDEnablePost(accountID: String, recipientID: String, reqBody: ServiceVOIPCallQueueEnableMembershipData, completion: @escaping (_ data: ServiceAPIResponse?, _ error: Error?) -> Void)
```

Enable Queue Membership

Activate queue membership for a recipient.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let recipientID = "recipientID_example" // String | Recipient ID, 32 alpha numeric
let reqBody = service.VOIPCallQueueEnableMembershipData(acceptCharges: false) // ServiceVOIPCallQueueEnableMembershipData | payload fields

// Enable Queue Membership
CallQueueMembershipAPI.v1AccountAccountIDQueuemembershipRecipientIDEnablePost(accountID: accountID, recipientID: recipientID, reqBody: reqBody) { (response, error) in
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
 **reqBody** | [**ServiceVOIPCallQueueEnableMembershipData**](ServiceVOIPCallQueueEnableMembershipData.md) | payload fields | 

### Return type

[**ServiceAPIResponse**](ServiceAPIResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

