# SMSAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1SmsAccountAccountIDCampaignCampaignIDImportGet**](SMSAPI.md#v1smsaccountaccountidcampaigncampaignidimportget) | **GET** /v1/sms/account/{accountID}/campaign/{campaignID}/import | 
[**v1SmsAccountAccountIDCampaignCampaignIDImportPost**](SMSAPI.md#v1smsaccountaccountidcampaigncampaignidimportpost) | **POST** /v1/sms/account/{accountID}/campaign/{campaignID}/import | 
[**v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet**](SMSAPI.md#v1smsaccountaccountidcampaigncampaignidphonenumberget) | **GET** /v1/sms/account/{accountID}/campaign/{campaignID}/phonenumber | 
[**v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut**](SMSAPI.md#v1smsaccountaccountidcampaigncampaignidphonenumberput) | **PUT** /v1/sms/account/{accountID}/campaign/{campaignID}/phonenumber | 
[**v1SmsAccountAccountIDCampaignImportGet**](SMSAPI.md#v1smsaccountaccountidcampaignimportget) | **GET** /v1/sms/account/{accountID}/campaign/import | 


# **v1SmsAccountAccountIDCampaignCampaignIDImportGet**
```swift
    open class func v1SmsAccountAccountIDCampaignCampaignIDImportGet(accountID: String, campaignID: String, completion: @escaping (_ data: ServiceDocsCampaignImportOutput?, _ error: Error?) -> Void)
```



Get details about a single imported campaign in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let campaignID = "campaignID_example" // String | Campaign ID

SMSAPI.v1SmsAccountAccountIDCampaignCampaignIDImportGet(accountID: accountID, campaignID: campaignID) { (response, error) in
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
 **campaignID** | **String** | Campaign ID | 

### Return type

[**ServiceDocsCampaignImportOutput**](ServiceDocsCampaignImportOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SmsAccountAccountIDCampaignCampaignIDImportPost**
```swift
    open class func v1SmsAccountAccountIDCampaignCampaignIDImportPost(accountID: String, campaignID: String, completion: @escaping (_ data: ServiceDocsCampaignImportOutput?, _ error: Error?) -> Void)
```



Import campaign

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let campaignID = "campaignID_example" // String | Campaign ID

SMSAPI.v1SmsAccountAccountIDCampaignCampaignIDImportPost(accountID: accountID, campaignID: campaignID) { (response, error) in
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
 **campaignID** | **String** | Campaign ID | 

### Return type

[**ServiceDocsCampaignImportOutput**](ServiceDocsCampaignImportOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet**
```swift
    open class func v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet(accountID: String, campaignID: String, pageNum: Double? = nil, pageSize: Double? = nil, completion: @escaping (_ data: ServiceDocsCampaignPhoneNumberOutput?, _ error: Error?) -> Void)
```



Get telephone numbers associated with a campaign.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let campaignID = "campaignID_example" // String | Campaign ID
let pageNum = 987 // Double | Page number (optional)
let pageSize = 987 // Double | Page size (optional)

SMSAPI.v1SmsAccountAccountIDCampaignCampaignIDPhonenumberGet(accountID: accountID, campaignID: campaignID, pageNum: pageNum, pageSize: pageSize) { (response, error) in
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
 **campaignID** | **String** | Campaign ID | 
 **pageNum** | **Double** | Page number | [optional] 
 **pageSize** | **Double** | Page size | [optional] 

### Return type

[**ServiceDocsCampaignPhoneNumberOutput**](ServiceDocsCampaignPhoneNumberOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut**
```swift
    open class func v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut(accountID: String, campaignID: String, reqBody: ServiceCampaignTagDetagPhonenumbers, completion: @escaping (_ data: ServiceDocsCampaignTagDetagPhonenumbersOutput?, _ error: Error?) -> Void)
```



Associate or dissociate telephone numbers with a campaign.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let campaignID = "campaignID_example" // String | Campaign ID, 32 alpha numeric
let reqBody = service.CampaignTagDetagPhonenumbers(detag: false, phoneNumbers: ["phoneNumbers_example"]) // ServiceCampaignTagDetagPhonenumbers | payload fields

SMSAPI.v1SmsAccountAccountIDCampaignCampaignIDPhonenumberPut(accountID: accountID, campaignID: campaignID, reqBody: reqBody) { (response, error) in
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
 **campaignID** | **String** | Campaign ID, 32 alpha numeric | 
 **reqBody** | [**ServiceCampaignTagDetagPhonenumbers**](ServiceCampaignTagDetagPhonenumbers.md) | payload fields | 

### Return type

[**ServiceDocsCampaignTagDetagPhonenumbersOutput**](ServiceDocsCampaignTagDetagPhonenumbersOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1SmsAccountAccountIDCampaignImportGet**
```swift
    open class func v1SmsAccountAccountIDCampaignImportGet(accountID: String, pageNum: Double? = nil, pageSize: Double? = nil, completion: @escaping (_ data: ServiceDocsCampaignImportedGetAllOutput?, _ error: Error?) -> Void)
```



Get a list of all imported campaigns in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let pageNum = 987 // Double | Page number (optional)
let pageSize = 987 // Double | Page size (optional)

SMSAPI.v1SmsAccountAccountIDCampaignImportGet(accountID: accountID, pageNum: pageNum, pageSize: pageSize) { (response, error) in
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
 **pageNum** | **Double** | Page number | [optional] 
 **pageSize** | **Double** | Page size | [optional] 

### Return type

[**ServiceDocsCampaignImportedGetAllOutput**](ServiceDocsCampaignImportedGetAllOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

