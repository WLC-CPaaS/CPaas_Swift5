# VoicemailAPI

All URIs are relative to *http://api.beta.cpaaslabs.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDVoicemailGet**](VoicemailAPI.md#v1accountaccountidvoicemailget) | **GET** /v1/account/{accountID}/voicemail | Get Voicemail Box List
[**v1AccountAccountIDVoicemailPost**](VoicemailAPI.md#v1accountaccountidvoicemailpost) | **POST** /v1/account/{accountID}/voicemail | Create Voicemail Box
[**v1AccountAccountIDVoicemailVoicemailIDDelete**](VoicemailAPI.md#v1accountaccountidvoicemailvoicemailiddelete) | **DELETE** /v1/account/{accountID}/voicemail/{voicemailID} | Delete Voicemail Box
[**v1AccountAccountIDVoicemailVoicemailIDGet**](VoicemailAPI.md#v1accountaccountidvoicemailvoicemailidget) | **GET** /v1/account/{accountID}/voicemail/{voicemailID} | Get Voicemail Box Details
[**v1AccountAccountIDVoicemailVoicemailIDMessageGet**](VoicemailAPI.md#v1accountaccountidvoicemailvoicemailidmessageget) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message | Get Voicemail Message List
[**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete**](VoicemailAPI.md#v1accountaccountidvoicemailvoicemailidmessagemessageiddelete) | **DELETE** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Delete Voicemail Message
[**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet**](VoicemailAPI.md#v1accountaccountidvoicemailvoicemailidmessagemessageidget) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Get Voicemail Message Details
[**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut**](VoicemailAPI.md#v1accountaccountidvoicemailvoicemailidmessagemessageidput) | **PUT** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID} | Update Voicemail Message
[**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet**](VoicemailAPI.md#v1accountaccountidvoicemailvoicemailidmessagemessageidrawget) | **GET** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}/raw | Get Voicemail Message File
[**v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost**](VoicemailAPI.md#v1accountaccountidvoicemailvoicemailidmessagemessageidrawpost) | **POST** /v1/account/{accountID}/voicemail/{voicemailID}/message/{messageID}/raw | Add Voicemail Message File
[**v1AccountAccountIDVoicemailVoicemailIDMessagePost**](VoicemailAPI.md#v1accountaccountidvoicemailvoicemailidmessagepost) | **POST** /v1/account/{accountID}/voicemail/{voicemailID}/message | Create Voicemail Message
[**v1AccountAccountIDVoicemailVoicemailIDPut**](VoicemailAPI.md#v1accountaccountidvoicemailvoicemailidput) | **PUT** /v1/account/{accountID}/voicemail/{voicemailID} | Update Voicemail Box


# **v1AccountAccountIDVoicemailGet**
```swift
    open class func v1AccountAccountIDVoicemailGet(accountID: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsVoicemailGetAll?, _ error: Error?) -> Void)
```

Get Voicemail Box List

List all voicemail boxes in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Voicemail Box List
VoicemailAPI.v1AccountAccountIDVoicemailGet(accountID: accountID, startKey: startKey, pageSize: pageSize) { (response, error) in
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

[**ServiceDocsVoicemailGetAll**](ServiceDocsVoicemailGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailPost**
```swift
    open class func v1AccountAccountIDVoicemailPost(accountID: String, voicemail: ServiceVOIPVoicemailAddEditData, completion: @escaping (_ data: ServiceDocsVoicemailGetSingle?, _ error: Error?) -> Void)
```

Create Voicemail Box

Create a voicemail box for receiving and storing voicemail messages.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | account ID, 32 alphanumeric
let voicemail = service.VOIPVoicemailAddEditData(mailbox: "mailbox_example", media: service.VoicemailMedia(unavailable: "unavailable_example"), mediaExtension: "mediaExtension_example", name: "name_example", ownerId: "ownerId_example", pin: "pin_example", requirePin: false, timezone: "timezone_example") // ServiceVOIPVoicemailAddEditData | voicemail payload fields

// Create Voicemail Box
VoicemailAPI.v1AccountAccountIDVoicemailPost(accountID: accountID, voicemail: voicemail) { (response, error) in
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
 **accountID** | **String** | account ID, 32 alphanumeric | 
 **voicemail** | [**ServiceVOIPVoicemailAddEditData**](ServiceVOIPVoicemailAddEditData.md) | voicemail payload fields | 

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailVoicemailIDDelete**
```swift
    open class func v1AccountAccountIDVoicemailVoicemailIDDelete(accountID: String, voicemailID: String, completion: @escaping (_ data: ServiceDocsVoicemailGetSingle?, _ error: Error?) -> Void)
```

Delete Voicemail Box

Delete a voicemail box in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let voicemailID = "voicemailID_example" // String | Voicemail ID, 32 alpha numeric

// Delete Voicemail Box
VoicemailAPI.v1AccountAccountIDVoicemailVoicemailIDDelete(accountID: accountID, voicemailID: voicemailID) { (response, error) in
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
 **voicemailID** | **String** | Voicemail ID, 32 alpha numeric | 

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailVoicemailIDGet**
```swift
    open class func v1AccountAccountIDVoicemailVoicemailIDGet(accountID: String, voicemailID: String, completion: @escaping (_ data: ServiceDocsVoicemailGetSingle?, _ error: Error?) -> Void)
```

Get Voicemail Box Details

Get information about a single voicemail box.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let voicemailID = "voicemailID_example" // String | Voicemail ID, 32 alpha numeric

// Get Voicemail Box Details
VoicemailAPI.v1AccountAccountIDVoicemailVoicemailIDGet(accountID: accountID, voicemailID: voicemailID) { (response, error) in
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
 **voicemailID** | **String** | Voicemail ID, 32 alpha numeric | 

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailVoicemailIDMessageGet**
```swift
    open class func v1AccountAccountIDVoicemailVoicemailIDMessageGet(accountID: String, voicemailID: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsVoicemailMessageGetAll?, _ error: Error?) -> Void)
```

Get Voicemail Message List

Get a list of voicemail messages from an account's voicemail box.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let voicemailID = "voicemailID_example" // String | voicemail ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Voicemail Message List
VoicemailAPI.v1AccountAccountIDVoicemailVoicemailIDMessageGet(accountID: accountID, voicemailID: voicemailID, startKey: startKey, pageSize: pageSize) { (response, error) in
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
 **voicemailID** | **String** | voicemail ID, 32 alpha numeric | 
 **startKey** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] 
 **pageSize** | **Int** | number of records to return, range 1 to 50 | [optional] 

### Return type

[**ServiceDocsVoicemailMessageGetAll**](ServiceDocsVoicemailMessageGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete**
```swift
    open class func v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete(accountID: String, voicemailID: String, messageID: String, completion: @escaping (_ data: ServiceDocsVoicemailMessageGetSingle?, _ error: Error?) -> Void)
```

Delete Voicemail Message

Delete a voicemail message from a voicemail box in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let voicemailID = "voicemailID_example" // String | Voicemail ID, 32 alpha numeric
let messageID = "messageID_example" // String | message ID, 32 alpha numeric

// Delete Voicemail Message
VoicemailAPI.v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDDelete(accountID: accountID, voicemailID: voicemailID, messageID: messageID) { (response, error) in
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
 **voicemailID** | **String** | Voicemail ID, 32 alpha numeric | 
 **messageID** | **String** | message ID, 32 alpha numeric | 

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet**
```swift
    open class func v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet(accountID: String, voicemailID: String, messageID: String, completion: @escaping (_ data: ServiceDocsVoicemailMessageGetSingle?, _ error: Error?) -> Void)
```

Get Voicemail Message Details

Retrieve the container details of an individual voicemail message. This includes a reference to the audio file, but not the message itself.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let voicemailID = "voicemailID_example" // String | Voicemail ID, 32 alpha numeric
let messageID = "messageID_example" // String | Message ID, 39 (yyyymm-<32 id>)

// Get Voicemail Message Details
VoicemailAPI.v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDGet(accountID: accountID, voicemailID: voicemailID, messageID: messageID) { (response, error) in
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
 **voicemailID** | **String** | Voicemail ID, 32 alpha numeric | 
 **messageID** | **String** | Message ID, 39 (yyyymm-&lt;32 id&gt;) | 

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut**
```swift
    open class func v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut(accountID: String, voicemailID: String, messageID: String, reqBody: ServiceVOIPVoicemailMessageChange, completion: @escaping (_ data: ServiceDocsVoicemailMessageGetSingle?, _ error: Error?) -> Void)
```

Update Voicemail Message

Copy or move a voicemail message to a different folder in the same voicemail box or move the message to a separate voicemail box.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let voicemailID = "voicemailID_example" // String | Voicemail ID, 32 alpha numeric
let messageID = "messageID_example" // String | Message ID, 39 (yyyymm-<32 id>)
let reqBody = service.VOIPVoicemailMessageChange(folder: "folder_example", sourceId: 123) // ServiceVOIPVoicemailMessageChange | payload fields

// Update Voicemail Message
VoicemailAPI.v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDPut(accountID: accountID, voicemailID: voicemailID, messageID: messageID, reqBody: reqBody) { (response, error) in
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
 **voicemailID** | **String** | Voicemail ID, 32 alpha numeric | 
 **messageID** | **String** | Message ID, 39 (yyyymm-&lt;32 id&gt;) | 
 **reqBody** | [**ServiceVOIPVoicemailMessageChange**](ServiceVOIPVoicemailMessageChange.md) | payload fields | 

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet**
```swift
    open class func v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet(accountID: String, voicemailID: String, messageID: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Get Voicemail Message File

Get the original audio content of a specific voicemail message identified by its unique ID within an account's voicemail box. URL Param \"voicemailID\" is a unique 32-character alphanumeric identifier assigned by the system, which refers to a specific voicemail box. URL Param \"messageID\" is a unique 32-character alphanumeric identifier assigned by the system, which refers to a specific message within a voicemail box.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, unique 32-character alphanumeric identifier
let voicemailID = "voicemailID_example" // String | Voicemail Box ID, unique 32-character alphanumeric identifier
let messageID = "messageID_example" // String | Message ID, unique 32-character alphanumeric identifier

// Get Voicemail Message File
VoicemailAPI.v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawGet(accountID: accountID, voicemailID: voicemailID, messageID: messageID) { (response, error) in
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
 **accountID** | **String** | Account ID, unique 32-character alphanumeric identifier | 
 **voicemailID** | **String** | Voicemail Box ID, unique 32-character alphanumeric identifier | 
 **messageID** | **String** | Message ID, unique 32-character alphanumeric identifier | 

### Return type

**URL**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost**
```swift
    open class func v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost(accountID: String, voicemailID: String, messageID: String, file: URL, completion: @escaping (_ data: [String: AnyCodable]?, _ error: Error?) -> Void)
```

Add Voicemail Message File

Associate an audio recording file with the voicemail to fully complete the message.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alphanumeric characters
let voicemailID = "voicemailID_example" // String | Voicemail ID, 32 alphanumeric characters
let messageID = "messageID_example" // String | Message ID, 32 alphanumeric characters
let file = URL(string: "https://example.com")! // URL | Audio file to upload

// Add Voicemail Message File
VoicemailAPI.v1AccountAccountIDVoicemailVoicemailIDMessageMessageIDRawPost(accountID: accountID, voicemailID: voicemailID, messageID: messageID, file: file) { (response, error) in
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
 **accountID** | **String** | Account ID, 32 alphanumeric characters | 
 **voicemailID** | **String** | Voicemail ID, 32 alphanumeric characters | 
 **messageID** | **String** | Message ID, 32 alphanumeric characters | 
 **file** | **URL** | Audio file to upload | 

### Return type

**[String: AnyCodable]**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailVoicemailIDMessagePost**
```swift
    open class func v1AccountAccountIDVoicemailVoicemailIDMessagePost(accountID: String, voicemailID: String, message: ServiceVOIPVoicemailMessageAddData, completion: @escaping (_ data: ServiceDocsVoicemailMessageGetSingle?, _ error: Error?) -> Void)
```

Create Voicemail Message

Create the container information for a recorded voicemail message in a voicemail box.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | account ID, 32 alphanumeric
let voicemailID = "voicemailID_example" // String | voicemail ID, 32 alphanumeric
let message = service.VOIPVoicemailMessageAddData(callerIdName: "callerIdName_example", callerIdNumber: "callerIdNumber_example", folder: "folder_example", from: "from_example", to: "to_example") // ServiceVOIPVoicemailMessageAddData | voicemail message payload fields

// Create Voicemail Message
VoicemailAPI.v1AccountAccountIDVoicemailVoicemailIDMessagePost(accountID: accountID, voicemailID: voicemailID, message: message) { (response, error) in
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
 **accountID** | **String** | account ID, 32 alphanumeric | 
 **voicemailID** | **String** | voicemail ID, 32 alphanumeric | 
 **message** | [**ServiceVOIPVoicemailMessageAddData**](ServiceVOIPVoicemailMessageAddData.md) | voicemail message payload fields | 

### Return type

[**ServiceDocsVoicemailMessageGetSingle**](ServiceDocsVoicemailMessageGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDVoicemailVoicemailIDPut**
```swift
    open class func v1AccountAccountIDVoicemailVoicemailIDPut(accountID: String, voicemailID: String, reqBody: ServiceVOIPVoicemailAddEditData, completion: @escaping (_ data: ServiceDocsVoicemailGetSingle?, _ error: Error?) -> Void)
```

Update Voicemail Box

Update the settings in an individual voicemail box, such as the owner, PIN, etc.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let voicemailID = "voicemailID_example" // String | Voicemail ID, 32 alpha numeric
let reqBody = service.VOIPVoicemailAddEditData(mailbox: "mailbox_example", media: service.VoicemailMedia(unavailable: "unavailable_example"), mediaExtension: "mediaExtension_example", name: "name_example", ownerId: "ownerId_example", pin: "pin_example", requirePin: false, timezone: "timezone_example") // ServiceVOIPVoicemailAddEditData | payload fields

// Update Voicemail Box
VoicemailAPI.v1AccountAccountIDVoicemailVoicemailIDPut(accountID: accountID, voicemailID: voicemailID, reqBody: reqBody) { (response, error) in
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
 **voicemailID** | **String** | Voicemail ID, 32 alpha numeric | 
 **reqBody** | [**ServiceVOIPVoicemailAddEditData**](ServiceVOIPVoicemailAddEditData.md) | payload fields | 

### Return type

[**ServiceDocsVoicemailGetSingle**](ServiceDocsVoicemailGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

