# VoIPUserAPI

All URIs are relative to *http://api.beta.cpaaslabs.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountidUserGet**](VoIPUserAPI.md#v1accountaccountiduserget) | **GET** /v1/account/{accountid}/user | Get User List
[**v1AccountAccountidUserPost**](VoIPUserAPI.md#v1accountaccountiduserpost) | **POST** /v1/account/{accountid}/user | Create User
[**v1AccountAccountidUserUseridDelete**](VoIPUserAPI.md#v1accountaccountiduseruseriddelete) | **DELETE** /v1/account/{accountid}/user/{userid} | Delete User
[**v1AccountAccountidUserUseridGet**](VoIPUserAPI.md#v1accountaccountiduseruseridget) | **GET** /v1/account/{accountid}/user/{userid} | Get User Details
[**v1AccountAccountidUserUseridPut**](VoIPUserAPI.md#v1accountaccountiduseruseridput) | **PUT** /v1/account/{accountid}/user/{userid} | Update User
[**v1AccountAccountidUserUseridUserauthPost**](VoIPUserAPI.md#v1accountaccountiduseruseriduserauthpost) | **POST** /v1/account/{accountid}/user/{userid}/userauth | Impersonate a User


# **v1AccountAccountidUserGet**
```swift
    open class func v1AccountAccountidUserGet(accountid: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsUserGetAll?, _ error: Error?) -> Void)
```

Get User List

Get a list of all VoIP users that includes first and last names, email addresses, extensions, and account statuses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get User List
VoIPUserAPI.v1AccountAccountidUserGet(accountid: accountid, startKey: startKey, pageSize: pageSize) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **startKey** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] 
 **pageSize** | **Int** | number of records to return, range 1 to 50 | [optional] 

### Return type

[**ServiceDocsUserGetAll**](ServiceDocsUserGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidUserPost**
```swift
    open class func v1AccountAccountidUserPost(accountid: String, user: ServiceVOIPUserAdd2, completion: @escaping (_ data: ServiceDocsUserGetSingle?, _ error: Error?) -> Void)
```

Create User

Add new users to the account. When a user is added, the system generates their unique 32 alpha numeric ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let user = service.VOIPUserAdd2(callForward: models.CallForward(enabled: false, number: "number_example"), callRecording: models.CallRecordingSettings(any: models.CallRecordingSource(any: models.CallRecordingParameters(enabled: false, format: "format_example", recordMinSec: 123, recordOnAnswer: false, recordOnBridge: false, recordSampleRate: 123, timeLimit: 123, url: "url_example"), offnet: nil, onnet: nil), inbound: nil, outbound: nil), callerId: models.UserOutputFullCallerid(emergency: models.UserOutputFullCalleridEmergency(number: "number_example"), external: models.UserOutputFullCalleridExternal(number: "number_example"), _internal: models.UserOutputFullCalleridInternal(number: "number_example")), doNotDisturb: models.VOIPSharedDoNotDisturb(enabled: false), email: "email_example", enabled: false, firstName: "firstName_example", lastName: "lastName_example", musicOnHold: models.MusicOnHold(mediaId: "mediaId_example"), presenceId: "presenceId_example", timezone: "timezone_example", verified: false) // ServiceVOIPUserAdd2 | user fields

// Create User
VoIPUserAPI.v1AccountAccountidUserPost(accountid: accountid, user: user) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **user** | [**ServiceVOIPUserAdd2**](ServiceVOIPUserAdd2.md) | user fields | 

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidUserUseridDelete**
```swift
    open class func v1AccountAccountidUserUseridDelete(accountid: String, userid: String, completion: @escaping (_ data: ServiceDocsUserGetSingle?, _ error: Error?) -> Void)
```

Delete User

Delete VoIP user access to maintain the security of your accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let userid = "userid_example" // String | User ID, 32 alpha numeric

// Delete User
VoIPUserAPI.v1AccountAccountidUserUseridDelete(accountid: accountid, userid: userid) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **userid** | **String** | User ID, 32 alpha numeric | 

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidUserUseridGet**
```swift
    open class func v1AccountAccountidUserUseridGet(accountid: String, userid: String, completion: @escaping (_ data: ServiceDocsUserGetSingle?, _ error: Error?) -> Void)
```

Get User Details

View specific user details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let userid = "userid_example" // String | User ID, 32 alpha numeric

// Get User Details
VoIPUserAPI.v1AccountAccountidUserUseridGet(accountid: accountid, userid: userid) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **userid** | **String** | User ID, 32 alpha numeric | 

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidUserUseridPut**
```swift
    open class func v1AccountAccountidUserUseridPut(accountid: String, userid: String, user: ServiceVOIPUserAdd2, completion: @escaping (_ data: ServiceDocsUserGetSingle?, _ error: Error?) -> Void)
```

Update User

Keep user information current. Modify the first and last name, extension, and other pertinent information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let userid = "userid_example" // String | User ID, 32 alpha numeric
let user = service.VOIPUserAdd2(callForward: models.CallForward(enabled: false, number: "number_example"), callRecording: models.CallRecordingSettings(any: models.CallRecordingSource(any: models.CallRecordingParameters(enabled: false, format: "format_example", recordMinSec: 123, recordOnAnswer: false, recordOnBridge: false, recordSampleRate: 123, timeLimit: 123, url: "url_example"), offnet: nil, onnet: nil), inbound: nil, outbound: nil), callerId: models.UserOutputFullCallerid(emergency: models.UserOutputFullCalleridEmergency(number: "number_example"), external: models.UserOutputFullCalleridExternal(number: "number_example"), _internal: models.UserOutputFullCalleridInternal(number: "number_example")), doNotDisturb: models.VOIPSharedDoNotDisturb(enabled: false), email: "email_example", enabled: false, firstName: "firstName_example", lastName: "lastName_example", musicOnHold: models.MusicOnHold(mediaId: "mediaId_example"), presenceId: "presenceId_example", timezone: "timezone_example", verified: false) // ServiceVOIPUserAdd2 | user fields

// Update User
VoIPUserAPI.v1AccountAccountidUserUseridPut(accountid: accountid, userid: userid, user: user) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **userid** | **String** | User ID, 32 alpha numeric | 
 **user** | [**ServiceVOIPUserAdd2**](ServiceVOIPUserAdd2.md) | user fields | 

### Return type

[**ServiceDocsUserGetSingle**](ServiceDocsUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidUserUseridUserauthPost**
```swift
    open class func v1AccountAccountidUserUseridUserauthPost(accountid: String, userid: String, user: ServiceVOIPImpersonateUser, completion: @escaping (_ data: ServiceDocsImpersonateUserGetSingle?, _ error: Error?) -> Void)
```

Impersonate a User

Retrieve a token for making presence calls.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let userid = "userid_example" // String | User ID, 32 alpha numeric
let user = service.VOIPImpersonateUser(action: "action_example", data: 123) // ServiceVOIPImpersonateUser | Payload for impersonate a user

// Impersonate a User
VoIPUserAPI.v1AccountAccountidUserUseridUserauthPost(accountid: accountid, userid: userid, user: user) { (response, error) in
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
 **accountid** | **String** | Account ID, 32 alpha numeric | 
 **userid** | **String** | User ID, 32 alpha numeric | 
 **user** | [**ServiceVOIPImpersonateUser**](ServiceVOIPImpersonateUser.md) | Payload for impersonate a user | 

### Return type

[**ServiceDocsImpersonateUserGetSingle**](ServiceDocsImpersonateUserGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

