# DataAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDCdrCdrIDGet**](DataAPI.md#v1accountaccountidcdrcdridget) | **GET** /v1/account/{accountID}/cdr/{cdrID} | Get CDR Details
[**v1AccountAccountIDCdrGet**](DataAPI.md#v1accountaccountidcdrget) | **GET** /v1/account/{accountID}/cdr | Get CDR List
[**v1DataCallDailySummaryGet**](DataAPI.md#v1datacalldailysummaryget) | **GET** /v1/data/call_daily_summary | Get Call Daily Summary List
[**v1DataCallDetailGet**](DataAPI.md#v1datacalldetailget) | **GET** /v1/data/call_detail | Get Call Detail List
[**v1DataCallMonthlySummaryGet**](DataAPI.md#v1datacallmonthlysummaryget) | **GET** /v1/data/call_monthly_summary | Get Call Detail List
[**v1DataEndpointListGet**](DataAPI.md#v1dataendpointlistget) | **GET** /v1/data/endpoint_list | Get Endpoint List
[**v1DataEventDailySummaryGet**](DataAPI.md#v1dataeventdailysummaryget) | **GET** /v1/data/event_daily_summary | Get Event Daily Summary List
[**v1DataEventDetailGet**](DataAPI.md#v1dataeventdetailget) | **GET** /v1/data/event_detail | Get Event Details
[**v1DataEventMonthlySummaryGet**](DataAPI.md#v1dataeventmonthlysummaryget) | **GET** /v1/data/event_monthly_summary | Get Event Monthly Summary List
[**v1DataFeatureDailySummaryGet**](DataAPI.md#v1datafeaturedailysummaryget) | **GET** /v1/data/feature_daily_summary | Get Feature Daily Summary List
[**v1DataFeatureMonthlySummaryGet**](DataAPI.md#v1datafeaturemonthlysummaryget) | **GET** /v1/data/feature_monthly_summary | Get Feature Monthly Summary List


# **v1AccountAccountIDCdrCdrIDGet**
```swift
    open class func v1AccountAccountIDCdrCdrIDGet(accountID: String, cdrID: String, completion: @escaping (_ data: ServiceDocsCdrGetSingle?, _ error: Error?) -> Void)
```

Get CDR Details

Retrieve the details of a single CDR record from an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let cdrID = "cdrID_example" // String | CDR ID, string

// Get CDR Details
DataAPI.v1AccountAccountIDCdrCdrIDGet(accountID: accountID, cdrID: cdrID) { (response, error) in
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
 **cdrID** | **String** | CDR ID, string | 

### Return type

[**ServiceDocsCdrGetSingle**](ServiceDocsCdrGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDCdrGet**
```swift
    open class func v1AccountAccountIDCdrGet(accountID: String, pageSize: String? = nil, startKey: String? = nil, createdFrom: String? = nil, createdTo: String? = nil, completion: @escaping (_ data: ServiceDocsCdrGetAll?, _ error: Error?) -> Void)
```

Get CDR List

Retrieve a list of CDRs in a specific account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let pageSize = "pageSize_example" // String | Page size (Maximum number of results to display per page) (optional)
let startKey = "startKey_example" // String | Start key (Starting offset for displaying results) (optional)
let createdFrom = "createdFrom_example" // String | For displaying records which are created on or after this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds) (optional)
let createdTo = "createdTo_example" // String | For displaying records which are created on or before this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds) (optional)

// Get CDR List
DataAPI.v1AccountAccountIDCdrGet(accountID: accountID, pageSize: pageSize, startKey: startKey, createdFrom: createdFrom, createdTo: createdTo) { (response, error) in
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
 **pageSize** | **String** | Page size (Maximum number of results to display per page) | [optional] 
 **startKey** | **String** | Start key (Starting offset for displaying results) | [optional] 
 **createdFrom** | **String** | For displaying records which are created on or after this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds) | [optional] 
 **createdTo** | **String** | For displaying records which are created on or before this timestamp (Supported timestamp formats: iso 8601, unix time in seconds or milliseconds or microseconds or nanoseconds) | [optional] 

### Return type

[**ServiceDocsCdrGetAll**](ServiceDocsCdrGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataCallDailySummaryGet**
```swift
    open class func v1DataCallDailySummaryGet(accountId: String? = nil, callType: String? = nil, endDate: String? = nil, pageSize: Int? = nil, startDate: String? = nil, startKey: String? = nil, completion: @escaping (_ data: ServiceDocsCallDailySummary?, _ error: Error?) -> Void)
```

Get Call Daily Summary List

Retrieve a daily summary of calls, including the account ID that made or received a call, the call type, the month and year, the duration, and other relevant information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountId = "accountId_example" // String |  (optional)
let callType = "callType_example" // String |  (optional)
let endDate = "endDate_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startDate = "startDate_example" // String |  (optional)
let startKey = "startKey_example" // String |  (optional)

// Get Call Daily Summary List
DataAPI.v1DataCallDailySummaryGet(accountId: accountId, callType: callType, endDate: endDate, pageSize: pageSize, startDate: startDate, startKey: startKey) { (response, error) in
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
 **accountId** | **String** |  | [optional] 
 **callType** | **String** |  | [optional] 
 **endDate** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startDate** | **String** |  | [optional] 
 **startKey** | **String** |  | [optional] 

### Return type

[**ServiceDocsCallDailySummary**](ServiceDocsCallDailySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataCallDetailGet**
```swift
    open class func v1DataCallDetailGet(account: String? = nil, callType: String? = nil, calleeName: String? = nil, calleeNumber: String? = nil, callerName: String? = nil, callerNumber: String? = nil, endDate: String? = nil, pageSize: Int? = nil, startDate: String? = nil, startKey: String? = nil, completion: @escaping (_ data: ServiceDocsCallDetail?, _ error: Error?) -> Void)
```

Get Call Detail List

Retrieve specific details about a call (e.g., caller, recipient, date, time, duration, etc.).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let account = "account_example" // String |  (optional)
let callType = "callType_example" // String |  (optional)
let calleeName = "calleeName_example" // String |  (optional)
let calleeNumber = "calleeNumber_example" // String |  (optional)
let callerName = "callerName_example" // String |  (optional)
let callerNumber = "callerNumber_example" // String |  (optional)
let endDate = "endDate_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startDate = "startDate_example" // String |  (optional)
let startKey = "startKey_example" // String |  (optional)

// Get Call Detail List
DataAPI.v1DataCallDetailGet(account: account, callType: callType, calleeName: calleeName, calleeNumber: calleeNumber, callerName: callerName, callerNumber: callerNumber, endDate: endDate, pageSize: pageSize, startDate: startDate, startKey: startKey) { (response, error) in
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
 **account** | **String** |  | [optional] 
 **callType** | **String** |  | [optional] 
 **calleeName** | **String** |  | [optional] 
 **calleeNumber** | **String** |  | [optional] 
 **callerName** | **String** |  | [optional] 
 **callerNumber** | **String** |  | [optional] 
 **endDate** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startDate** | **String** |  | [optional] 
 **startKey** | **String** |  | [optional] 

### Return type

[**ServiceDocsCallDetail**](ServiceDocsCallDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataCallMonthlySummaryGet**
```swift
    open class func v1DataCallMonthlySummaryGet(account: String? = nil, callType: String? = nil, endMonth: Int? = nil, endYear: Int? = nil, pageSize: Int? = nil, startKey: String? = nil, startMonth: Int? = nil, startYear: Int? = nil, completion: @escaping (_ data: ServiceDocsCallMonthlySummary?, _ error: Error?) -> Void)
```

Get Call Detail List

Retrieve a monthly summary of calls, including which accounts made or received calls, the call type, and other relevant information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let account = "account_example" // String |  (optional)
let callType = "callType_example" // String |  (optional)
let endMonth = 987 // Int |  (optional)
let endYear = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let startKey = "startKey_example" // String |  (optional)
let startMonth = 987 // Int |  (optional)
let startYear = 987 // Int |  (optional)

// Get Call Detail List
DataAPI.v1DataCallMonthlySummaryGet(account: account, callType: callType, endMonth: endMonth, endYear: endYear, pageSize: pageSize, startKey: startKey, startMonth: startMonth, startYear: startYear) { (response, error) in
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
 **account** | **String** |  | [optional] 
 **callType** | **String** |  | [optional] 
 **endMonth** | **Int** |  | [optional] 
 **endYear** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startKey** | **String** |  | [optional] 
 **startMonth** | **Int** |  | [optional] 
 **startYear** | **Int** |  | [optional] 

### Return type

[**ServiceDocsCallMonthlySummary**](ServiceDocsCallMonthlySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataEndpointListGet**
```swift
    open class func v1DataEndpointListGet(endpointName: String? = nil, featureName: String? = nil, pageSize: Int? = nil, startKey: String? = nil, transactionType: String? = nil, version: String? = nil, completion: @escaping (_ data: ServiceDocsEndpointList?, _ error: Error?) -> Void)
```

Get Endpoint List

Access the endpoint list for each CPaaS API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let endpointName = "endpointName_example" // String |  (optional)
let featureName = "featureName_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startKey = "startKey_example" // String |  (optional)
let transactionType = "transactionType_example" // String |  (optional)
let version = "version_example" // String |  (optional)

// Get Endpoint List
DataAPI.v1DataEndpointListGet(endpointName: endpointName, featureName: featureName, pageSize: pageSize, startKey: startKey, transactionType: transactionType, version: version) { (response, error) in
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
 **endpointName** | **String** |  | [optional] 
 **featureName** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startKey** | **String** |  | [optional] 
 **transactionType** | **String** |  | [optional] 
 **version** | **String** |  | [optional] 

### Return type

[**ServiceDocsEndpointList**](ServiceDocsEndpointList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataEventDailySummaryGet**
```swift
    open class func v1DataEventDailySummaryGet(accountId: String? = nil, component: String? = nil, endDate: String? = nil, pageSize: Int? = nil, startDate: String? = nil, startKey: String? = nil, completion: @escaping (_ data: ServiceDocsEventDailySummary?, _ error: Error?) -> Void)
```

Get Event Daily Summary List

Obtain a daily summary of events in a CPaaS account (e.g., setting/resetting the presence status for a user or extension).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountId = "accountId_example" // String |  (optional)
let component = "component_example" // String |  (optional)
let endDate = "endDate_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startDate = "startDate_example" // String |  (optional)
let startKey = "startKey_example" // String |  (optional)

// Get Event Daily Summary List
DataAPI.v1DataEventDailySummaryGet(accountId: accountId, component: component, endDate: endDate, pageSize: pageSize, startDate: startDate, startKey: startKey) { (response, error) in
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
 **accountId** | **String** |  | [optional] 
 **component** | **String** |  | [optional] 
 **endDate** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startDate** | **String** |  | [optional] 
 **startKey** | **String** |  | [optional] 

### Return type

[**ServiceDocsEventDailySummary**](ServiceDocsEventDailySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataEventDetailGet**
```swift
    open class func v1DataEventDetailGet(accountId: String? = nil, component: String? = nil, endDateTime: String? = nil, eventName: String? = nil, execStatus: String? = nil, pageSize: Int? = nil, startDateTime: String? = nil, startKey: String? = nil, username: String? = nil, completion: @escaping (_ data: ServiceDocsEventDetail?, _ error: Error?) -> Void)
```

Get Event Details

Obtain specific details about an event (e.g., an E911 notification, a deleted account, or a created user).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountId = "accountId_example" // String |  (optional)
let component = "component_example" // String |  (optional)
let endDateTime = "endDateTime_example" // String |  (optional)
let eventName = "eventName_example" // String |  (optional)
let execStatus = "execStatus_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startDateTime = "startDateTime_example" // String |  (optional)
let startKey = "startKey_example" // String |  (optional)
let username = "username_example" // String |  (optional)

// Get Event Details
DataAPI.v1DataEventDetailGet(accountId: accountId, component: component, endDateTime: endDateTime, eventName: eventName, execStatus: execStatus, pageSize: pageSize, startDateTime: startDateTime, startKey: startKey, username: username) { (response, error) in
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
 **accountId** | **String** |  | [optional] 
 **component** | **String** |  | [optional] 
 **endDateTime** | **String** |  | [optional] 
 **eventName** | **String** |  | [optional] 
 **execStatus** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startDateTime** | **String** |  | [optional] 
 **startKey** | **String** |  | [optional] 
 **username** | **String** |  | [optional] 

### Return type

[**ServiceDocsEventDetail**](ServiceDocsEventDetail.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataEventMonthlySummaryGet**
```swift
    open class func v1DataEventMonthlySummaryGet(accountId: String? = nil, component: String? = nil, endMonth: Int? = nil, endYear: Int? = nil, pageSize: Int? = nil, startKey: String? = nil, startMonth: Int? = nil, startYear: Int? = nil, completion: @escaping (_ data: ServiceDocsEventMonthlySummary?, _ error: Error?) -> Void)
```

Get Event Monthly Summary List

Obtain a monthly summary of events in a CPaaS account (e.g., adding media files or assigning phone numbers).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountId = "accountId_example" // String |  (optional)
let component = "component_example" // String |  (optional)
let endMonth = 987 // Int |  (optional)
let endYear = 987 // Int |  (optional)
let pageSize = 987 // Int |  (optional)
let startKey = "startKey_example" // String |  (optional)
let startMonth = 987 // Int |  (optional)
let startYear = 987 // Int |  (optional)

// Get Event Monthly Summary List
DataAPI.v1DataEventMonthlySummaryGet(accountId: accountId, component: component, endMonth: endMonth, endYear: endYear, pageSize: pageSize, startKey: startKey, startMonth: startMonth, startYear: startYear) { (response, error) in
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
 **accountId** | **String** |  | [optional] 
 **component** | **String** |  | [optional] 
 **endMonth** | **Int** |  | [optional] 
 **endYear** | **Int** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startKey** | **String** |  | [optional] 
 **startMonth** | **Int** |  | [optional] 
 **startYear** | **Int** |  | [optional] 

### Return type

[**ServiceDocsEventMonthlySummary**](ServiceDocsEventMonthlySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataFeatureDailySummaryGet**
```swift
    open class func v1DataFeatureDailySummaryGet(endDate: String? = nil, featureName: String? = nil, pageSize: Int? = nil, startDate: String? = nil, startKey: String? = nil, completion: @escaping (_ data: ServiceDocsFeatureDailySummary?, _ error: Error?) -> Void)
```

Get Feature Daily Summary List

Retrieve a daily summary about a feature, including usage, which accounts execute the steps, and other relevant information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let endDate = "endDate_example" // String |  (optional)
let featureName = "featureName_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startDate = "startDate_example" // String |  (optional)
let startKey = "startKey_example" // String |  (optional)

// Get Feature Daily Summary List
DataAPI.v1DataFeatureDailySummaryGet(endDate: endDate, featureName: featureName, pageSize: pageSize, startDate: startDate, startKey: startKey) { (response, error) in
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
 **endDate** | **String** |  | [optional] 
 **featureName** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startDate** | **String** |  | [optional] 
 **startKey** | **String** |  | [optional] 

### Return type

[**ServiceDocsFeatureDailySummary**](ServiceDocsFeatureDailySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1DataFeatureMonthlySummaryGet**
```swift
    open class func v1DataFeatureMonthlySummaryGet(endMonth: Int? = nil, endYear: Int? = nil, featureName: String? = nil, pageSize: Int? = nil, startKey: String? = nil, startMonth: Int? = nil, startYear: Int? = nil, completion: @escaping (_ data: ServiceDocsFeatureMonthlySummary?, _ error: Error?) -> Void)
```

Get Feature Monthly Summary List

Retrieve a monthly summary about a feature’s usage, new users, updates, and other relevant information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let endMonth = 987 // Int |  (optional)
let endYear = 987 // Int |  (optional)
let featureName = "featureName_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startKey = "startKey_example" // String |  (optional)
let startMonth = 987 // Int |  (optional)
let startYear = 987 // Int |  (optional)

// Get Feature Monthly Summary List
DataAPI.v1DataFeatureMonthlySummaryGet(endMonth: endMonth, endYear: endYear, featureName: featureName, pageSize: pageSize, startKey: startKey, startMonth: startMonth, startYear: startYear) { (response, error) in
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
 **endMonth** | **Int** |  | [optional] 
 **endYear** | **Int** |  | [optional] 
 **featureName** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startKey** | **String** |  | [optional] 
 **startMonth** | **Int** |  | [optional] 
 **startYear** | **Int** |  | [optional] 

### Return type

[**ServiceDocsFeatureMonthlySummary**](ServiceDocsFeatureMonthlySummary.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

