# MediaAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountIDMediaMediaIDFileGet**](MediaAPI.md#v1accountaccountidmediamediaidfileget) | **GET** /v1/account/{accountID}/media/{mediaID}/file | Get Media File
[**v1AccountAccountIDMediaMediaIDFilePost**](MediaAPI.md#v1accountaccountidmediamediaidfilepost) | **POST** /v1/account/{accountID}/media/{mediaID}/file | Add Media File
[**v1AccountAccountidMediaGet**](MediaAPI.md#v1accountaccountidmediaget) | **GET** /v1/account/{accountid}/media | Get Media List
[**v1AccountAccountidMediaMediaidDelete**](MediaAPI.md#v1accountaccountidmediamediaiddelete) | **DELETE** /v1/account/{accountid}/media/{mediaid} | Delete Media
[**v1AccountAccountidMediaMediaidGet**](MediaAPI.md#v1accountaccountidmediamediaidget) | **GET** /v1/account/{accountid}/media/{mediaid} | Get Media Details
[**v1AccountAccountidMediaPost**](MediaAPI.md#v1accountaccountidmediapost) | **POST** /v1/account/{accountid}/media | Create Media


# **v1AccountAccountIDMediaMediaIDFileGet**
```swift
    open class func v1AccountAccountIDMediaMediaIDFileGet(accountID: String, mediaID: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

Get Media File

Gather data about the media objects in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let mediaID = "mediaID_example" // String | Media ID, 32 alpha numeric

// Get Media File
MediaAPI.v1AccountAccountIDMediaMediaIDFileGet(accountID: accountID, mediaID: mediaID) { (response, error) in
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
 **mediaID** | **String** | Media ID, 32 alpha numeric | 

### Return type

**URL**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, audio/mp3, audio/mpeg, audio/mpeg3, audio/x-wav, audio/wav, audio/ogg, video/x-flv, video/h264, video/mpeg, video/quicktime, video/mp4, video/webm

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountIDMediaMediaIDFilePost**
```swift
    open class func v1AccountAccountIDMediaMediaIDFilePost(accountID: String, mediaID: String, file: URL, completion: @escaping (_ data: ServiceDocsMediaGetSingle?, _ error: Error?) -> Void)
```

Add Media File

Include a media file that is connected to a media object in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountID = "accountID_example" // String | Account ID, 32 alpha numeric
let mediaID = "mediaID_example" // String | Media ID, 32 alpha numeric
let file = URL(string: "https://example.com")! // URL | Media file

// Add Media File
MediaAPI.v1AccountAccountIDMediaMediaIDFilePost(accountID: accountID, mediaID: mediaID, file: file) { (response, error) in
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
 **mediaID** | **String** | Media ID, 32 alpha numeric | 
 **file** | **URL** | Media file | 

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidMediaGet**
```swift
    open class func v1AccountAccountidMediaGet(accountid: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsMediaGetAll?, _ error: Error?) -> Void)
```

Get Media List

View all media files for an account in your organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Media List
MediaAPI.v1AccountAccountidMediaGet(accountid: accountid, startKey: startKey, pageSize: pageSize) { (response, error) in
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

[**ServiceDocsMediaGetAll**](ServiceDocsMediaGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidMediaMediaidDelete**
```swift
    open class func v1AccountAccountidMediaMediaidDelete(accountid: String, mediaid: String, completion: @escaping (_ data: ServiceDocsMediaGetSingle?, _ error: Error?) -> Void)
```

Delete Media

Remove a media file that is no longer in use from an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let mediaid = "mediaid_example" // String | Device ID, 32 alpha numeric

// Delete Media
MediaAPI.v1AccountAccountidMediaMediaidDelete(accountid: accountid, mediaid: mediaid) { (response, error) in
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
 **mediaid** | **String** | Device ID, 32 alpha numeric | 

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidMediaMediaidGet**
```swift
    open class func v1AccountAccountidMediaMediaidGet(accountid: String, mediaid: String, completion: @escaping (_ data: ServiceDocsMediaGetSingle?, _ error: Error?) -> Void)
```

Get Media Details

Permit users to view an account's specific media information.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let mediaid = "mediaid_example" // String | Media ID, 32 alpha numeric

// Get Media Details
MediaAPI.v1AccountAccountidMediaMediaidGet(accountid: accountid, mediaid: mediaid) { (response, error) in
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
 **mediaid** | **String** | Media ID, 32 alpha numeric | 

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidMediaPost**
```swift
    open class func v1AccountAccountidMediaPost(accountid: String, media: ServiceVOIPMediaAddEditData, completion: @escaping (_ data: ServiceDocsMediaGetSingle?, _ error: Error?) -> Void)
```

Create Media

Generate a media object to allow users to upload a media file in an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let media = service.VOIPMediaAddEditData(description: "description_example", mediaSource: "mediaSource_example", name: "name_example", tts: service.TTS(text: "text_example", voice: "voice_example")) // ServiceVOIPMediaAddEditData | Media creation or update payload

// Create Media
MediaAPI.v1AccountAccountidMediaPost(accountid: accountid, media: media) { (response, error) in
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
 **media** | [**ServiceVOIPMediaAddEditData**](ServiceVOIPMediaAddEditData.md) | Media creation or update payload | 

### Return type

[**ServiceDocsMediaGetSingle**](ServiceDocsMediaGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

