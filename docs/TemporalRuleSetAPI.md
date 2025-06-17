# TemporalRuleSetAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDTemporalrulesetGet**](TemporalRuleSetAPI.md#v1accountaccountidtemporalrulesetget) | **GET** /v1/account/{accountID}/temporalruleset | Get Temporal Rule Set List
[**v1AccountAccountIDTemporalrulesetPost**](TemporalRuleSetAPI.md#v1accountaccountidtemporalrulesetpost) | **POST** /v1/account/{accountID}/temporalruleset | Create Temporal Rule Set
[**v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete**](TemporalRuleSetAPI.md#v1accountaccountidtemporalrulesettemporalrulesetiddelete) | **DELETE** /v1/account/{accountID}/temporalruleset/{temporalRuleSetID} | Delete Temporal Rule Set
[**v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet**](TemporalRuleSetAPI.md#v1accountaccountidtemporalrulesettemporalrulesetidget) | **GET** /v1/account/{accountID}/temporalruleset/{temporalRuleSetID} | Get Temporal Rule Set Details
[**v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut**](TemporalRuleSetAPI.md#v1accountaccountidtemporalrulesettemporalrulesetidput) | **PUT** /v1/account/{accountID}/temporalruleset/{temporalRuleSetID} | Update Temporal Rule Set


# **v1AccountAccountIDTemporalrulesetGet**
```swift
    open class func v1AccountAccountIDTemporalrulesetGet(accountID: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsTemporalRuleSetGetAll?, _ error: Error?) -> Void)
```

Get Temporal Rule Set List

Access the temporal rule set list in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Temporal Rule Set List
TemporalRuleSetAPI.v1AccountAccountIDTemporalrulesetGet(accountID: accountID, startKey: startKey, pageSize: pageSize) { (response, error) in
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

[**ServiceDocsTemporalRuleSetGetAll**](ServiceDocsTemporalRuleSetGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDTemporalrulesetPost**
```swift
    open class func v1AccountAccountIDTemporalrulesetPost(accountID: String, temporalruleset: ServiceVOIPTemporalRuleSetAddEditData, completion: @escaping (_ data: ServiceDocsTemporalRuleSetGetSingle?, _ error: Error?) -> Void)
```

Create Temporal Rule Set

Develop a new temporal rule set for an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alphanumeric
let temporalruleset = service.VOIPTemporalRuleSetAddEditData(name: "name_example", temporalRules: ["temporalRules_example"]) // ServiceVOIPTemporalRuleSetAddEditData | payload fields

// Create Temporal Rule Set
TemporalRuleSetAPI.v1AccountAccountIDTemporalrulesetPost(accountID: accountID, temporalruleset: temporalruleset) { (response, error) in
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
 **temporalruleset** | [**ServiceVOIPTemporalRuleSetAddEditData**](ServiceVOIPTemporalRuleSetAddEditData.md) | payload fields | 

### Return type

[**ServiceDocsTemporalRuleSetGetSingle**](ServiceDocsTemporalRuleSetGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete**
```swift
    open class func v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete(accountID: String, temporalRuleSetID: String, completion: @escaping (_ data: ServiceDocsTemporalRuleSetGetSingle?, _ error: Error?) -> Void)
```

Delete Temporal Rule Set

Delete the temporal rule set from an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let temporalRuleSetID = "temporalRuleSetID_example" // String | temporal rule set ID, 32 alpha numeric

// Delete Temporal Rule Set
TemporalRuleSetAPI.v1AccountAccountIDTemporalrulesetTemporalRuleSetIDDelete(accountID: accountID, temporalRuleSetID: temporalRuleSetID) { (response, error) in
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
 **temporalRuleSetID** | **String** | temporal rule set ID, 32 alpha numeric | 

### Return type

[**ServiceDocsTemporalRuleSetGetSingle**](ServiceDocsTemporalRuleSetGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet**
```swift
    open class func v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet(accountID: String, temporalRuleSetID: String, completion: @escaping (_ data: ServiceDocsTemporalRuleSetGetSingle?, _ error: Error?) -> Void)
```

Get Temporal Rule Set Details

Acquire details about a temporal rule set in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let temporalRuleSetID = "temporalRuleSetID_example" // String | Temporal Ruleset ID, 32 alpha numeric

// Get Temporal Rule Set Details
TemporalRuleSetAPI.v1AccountAccountIDTemporalrulesetTemporalRuleSetIDGet(accountID: accountID, temporalRuleSetID: temporalRuleSetID) { (response, error) in
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
 **temporalRuleSetID** | **String** | Temporal Ruleset ID, 32 alpha numeric | 

### Return type

[**ServiceDocsTemporalRuleSetGetSingle**](ServiceDocsTemporalRuleSetGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut**
```swift
    open class func v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut(accountID: String, temporalRuleSetID: String, reqBody: ServiceVOIPTemporalRuleSetAddEditData, completion: @escaping (_ data: ServiceDocsTemporalRuleSetGetSingle?, _ error: Error?) -> Void)
```

Update Temporal Rule Set

Efficiently adjust the temporal rule set in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let temporalRuleSetID = "temporalRuleSetID_example" // String | Temporal Ruleset ID, 32 alpha numeric
let reqBody = service.VOIPTemporalRuleSetAddEditData(name: "name_example", temporalRules: ["temporalRules_example"]) // ServiceVOIPTemporalRuleSetAddEditData | payload fields

// Update Temporal Rule Set
TemporalRuleSetAPI.v1AccountAccountIDTemporalrulesetTemporalRuleSetIDPut(accountID: accountID, temporalRuleSetID: temporalRuleSetID, reqBody: reqBody) { (response, error) in
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
 **temporalRuleSetID** | **String** | Temporal Ruleset ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPTemporalRuleSetAddEditData**](ServiceVOIPTemporalRuleSetAddEditData.md) | payload fields | 

### Return type

[**ServiceDocsTemporalRuleSetGetSingle**](ServiceDocsTemporalRuleSetGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

