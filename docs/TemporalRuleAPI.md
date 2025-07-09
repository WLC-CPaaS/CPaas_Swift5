# TemporalRuleAPI

All URIs are relative to *http://api.beta.cpaaslabs.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDTemporalruleGet**](TemporalRuleAPI.md#v1accountaccountidtemporalruleget) | **GET** /v1/account/{accountID}/temporalrule | Get Temporal Rule List
[**v1AccountAccountIDTemporalrulePost**](TemporalRuleAPI.md#v1accountaccountidtemporalrulepost) | **POST** /v1/account/{accountID}/temporalrule | Create Temporal Rule
[**v1AccountAccountIDTemporalruleTemporalRuleIDDelete**](TemporalRuleAPI.md#v1accountaccountidtemporalruletemporalruleiddelete) | **DELETE** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Delete Temporal Rule
[**v1AccountAccountIDTemporalruleTemporalRuleIDGet**](TemporalRuleAPI.md#v1accountaccountidtemporalruletemporalruleidget) | **GET** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Get Temporal Rule Details
[**v1AccountAccountIDTemporalruleTemporalRuleIDPut**](TemporalRuleAPI.md#v1accountaccountidtemporalruletemporalruleidput) | **PUT** /v1/account/{accountID}/temporalrule/{temporalRuleID} | Update Temporal Rule


# **v1AccountAccountIDTemporalruleGet**
```swift
    open class func v1AccountAccountIDTemporalruleGet(accountID: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsTemporalRuleGetAll?, _ error: Error?) -> Void)
```

Get Temporal Rule List

Access all temporal rules for an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Temporal Rule List
TemporalRuleAPI.v1AccountAccountIDTemporalruleGet(accountID: accountID, startKey: startKey, pageSize: pageSize) { (response, error) in
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

[**ServiceDocsTemporalRuleGetAll**](ServiceDocsTemporalRuleGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDTemporalrulePost**
```swift
    open class func v1AccountAccountIDTemporalrulePost(accountID: String, temporalrule: ServiceVOIPTemporalRuleAddEdit2, completion: @escaping (_ data: ServiceDocsTemporalRuleGetSingle?, _ error: Error?) -> Void)
```

Create Temporal Rule

Create temporal rules for an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alphanumeric
let temporalrule = service.VOIPTemporalRuleAddEdit2(cycle: "cycle_example", days: [123], enabled: false, interval: 123, month: 123, name: "name_example", ordinal: "ordinal_example", startDate: 123, startDateReq: "startDateReq_example", timeWindowStart: 123, timeWindowStartReq: "timeWindowStartReq_example", timeWindowStop: 123, timeWindowStopReq: "timeWindowStopReq_example", wdays: ["wdays_example"]) // ServiceVOIPTemporalRuleAddEdit2 | payload fields

// Create Temporal Rule
TemporalRuleAPI.v1AccountAccountIDTemporalrulePost(accountID: accountID, temporalrule: temporalrule) { (response, error) in
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
 **temporalrule** | [**ServiceVOIPTemporalRuleAddEdit2**](ServiceVOIPTemporalRuleAddEdit2.md) | payload fields | 

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDTemporalruleTemporalRuleIDDelete**
```swift
    open class func v1AccountAccountIDTemporalruleTemporalRuleIDDelete(accountID: String, temporalRuleID: String, completion: @escaping (_ data: ServiceDocsTemporalRuleGetSingle?, _ error: Error?) -> Void)
```

Delete Temporal Rule

Remove a temporal rule from an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let temporalRuleID = "temporalRuleID_example" // String | temporal rule ID, 32 alpha numeric

// Delete Temporal Rule
TemporalRuleAPI.v1AccountAccountIDTemporalruleTemporalRuleIDDelete(accountID: accountID, temporalRuleID: temporalRuleID) { (response, error) in
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
 **temporalRuleID** | **String** | temporal rule ID, 32 alpha numeric | 

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDTemporalruleTemporalRuleIDGet**
```swift
    open class func v1AccountAccountIDTemporalruleTemporalRuleIDGet(accountID: String, temporalRuleID: String, completion: @escaping (_ data: ServiceDocsTemporalRuleGetSingle?, _ error: Error?) -> Void)
```

Get Temporal Rule Details

View details about individual time rules.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let temporalRuleID = "temporalRuleID_example" // String | Temporal Rule ID, 32 alpha numeric

// Get Temporal Rule Details
TemporalRuleAPI.v1AccountAccountIDTemporalruleTemporalRuleIDGet(accountID: accountID, temporalRuleID: temporalRuleID) { (response, error) in
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
 **temporalRuleID** | **String** | Temporal Rule ID, 32 alpha numeric | 

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDTemporalruleTemporalRuleIDPut**
```swift
    open class func v1AccountAccountIDTemporalruleTemporalRuleIDPut(accountID: String, temporalRuleID: String, reqBody: ServiceVOIPTemporalRuleAddEdit2, completion: @escaping (_ data: ServiceDocsTemporalRuleGetSingle?, _ error: Error?) -> Void)
```

Update Temporal Rule

Edit the existing temporal rules in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let temporalRuleID = "temporalRuleID_example" // String | Temporal Rule ID, 32 alpha numeric
let reqBody = service.VOIPTemporalRuleAddEdit2(cycle: "cycle_example", days: [123], enabled: false, interval: 123, month: 123, name: "name_example", ordinal: "ordinal_example", startDate: 123, startDateReq: "startDateReq_example", timeWindowStart: 123, timeWindowStartReq: "timeWindowStartReq_example", timeWindowStop: 123, timeWindowStopReq: "timeWindowStopReq_example", wdays: ["wdays_example"]) // ServiceVOIPTemporalRuleAddEdit2 | payload fields

// Update Temporal Rule
TemporalRuleAPI.v1AccountAccountIDTemporalruleTemporalRuleIDPut(accountID: accountID, temporalRuleID: temporalRuleID, reqBody: reqBody) { (response, error) in
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
 **temporalRuleID** | **String** | Temporal Rule ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPTemporalRuleAddEdit2**](ServiceVOIPTemporalRuleAddEdit2.md) | payload fields | 

### Return type

[**ServiceDocsTemporalRuleGetSingle**](ServiceDocsTemporalRuleGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

