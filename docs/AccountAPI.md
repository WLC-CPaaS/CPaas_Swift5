# AccountAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1AccountAccountidChildrenGet**](AccountAPI.md#v1accountaccountidchildrenget) | **GET** /v1/account/{accountid}/children | Get Sub Account List
[**v1AccountAccountidDelete**](AccountAPI.md#v1accountaccountiddelete) | **DELETE** /v1/account/{accountid} | Delete Account
[**v1AccountAccountidDnsrecordGet**](AccountAPI.md#v1accountaccountiddnsrecordget) | **GET** /v1/account/{accountid}/dnsrecord | Get Account DNS Record
[**v1AccountAccountidDnsrecordPost**](AccountAPI.md#v1accountaccountiddnsrecordpost) | **POST** /v1/account/{accountid}/dnsrecord | Create Account DNS Record
[**v1AccountAccountidDnsrecordPut**](AccountAPI.md#v1accountaccountiddnsrecordput) | **PUT** /v1/account/{accountid}/dnsrecord | Convert Account DNS Record
[**v1AccountAccountidGet**](AccountAPI.md#v1accountaccountidget) | **GET** /v1/account/{accountid} | Get Account Details
[**v1AccountAccountidLimitGet**](AccountAPI.md#v1accountaccountidlimitget) | **GET** /v1/account/{accountid}/limit | Get Account Limits
[**v1AccountAccountidLimitPut**](AccountAPI.md#v1accountaccountidlimitput) | **PUT** /v1/account/{accountid}/limit | Set Account Limits
[**v1AccountAccountidPost**](AccountAPI.md#v1accountaccountidpost) | **POST** /v1/account/{accountid} | Create Sub Account
[**v1AccountAccountidProvisioningdetailsGet**](AccountAPI.md#v1accountaccountidprovisioningdetailsget) | **GET** /v1/account/{accountid}/provisioningdetails | Get Account Provisioning Details
[**v1AccountAccountidProvisioningdetailsResetpwPut**](AccountAPI.md#v1accountaccountidprovisioningdetailsresetpwput) | **PUT** /v1/account/{accountid}/provisioningdetails/resetpw | Reset the provisioning details password.
[**v1AccountAccountidPut**](AccountAPI.md#v1accountaccountidput) | **PUT** /v1/account/{accountid} | Update Account
[**v1AccountApikeyGet**](AccountAPI.md#v1accountapikeyget) | **GET** /v1/account/apikey | 
[**v1AccountGet**](AccountAPI.md#v1accountget) | **GET** /v1/account | Get Account List
[**v1AccountPost**](AccountAPI.md#v1accountpost) | **POST** /v1/account | Create Account


# **v1AccountAccountidChildrenGet**
```swift
    open class func v1AccountAccountidChildrenGet(accountid: String, startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsAccountGetAll?, _ error: Error?) -> Void)
```

Get Sub Account List

Conveniently access the list of children accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Sub Account List
AccountAPI.v1AccountAccountidChildrenGet(accountid: accountid, startKey: startKey, pageSize: pageSize) { (response, error) in
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

[**ServiceDocsAccountGetAll**](ServiceDocsAccountGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidDelete**
```swift
    open class func v1AccountAccountidDelete(accountid: String, completion: @escaping (_ data: ServiceDocsAccountGetSingle?, _ error: Error?) -> Void)
```

Delete Account

Delete an account within your organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric

// Delete Account
AccountAPI.v1AccountAccountidDelete(accountid: accountid) { (response, error) in
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

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidDnsrecordGet**
```swift
    open class func v1AccountAccountidDnsrecordGet(accountid: String, completion: @escaping (_ data: ServiceDocsAccountGetSingle?, _ error: Error?) -> Void)
```

Get Account DNS Record

Get the DNS record of an account from the Route 53 entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric

// Get Account DNS Record
AccountAPI.v1AccountAccountidDnsrecordGet(accountid: accountid) { (response, error) in
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

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidDnsrecordPost**
```swift
    open class func v1AccountAccountidDnsrecordPost(accountid: String, completion: @escaping (_ data: ServiceDocsAccountGetSingle?, _ error: Error?) -> Void)
```

Create Account DNS Record

Create the DNS record of an account with the help realm in the Route 53 entry.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric

// Create Account DNS Record
AccountAPI.v1AccountAccountidDnsrecordPost(accountid: accountid) { (response, error) in
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

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidDnsrecordPut**
```swift
    open class func v1AccountAccountidDnsrecordPut(accountid: String, dnsrecord: ServiceUpdateRecordTypeForAccount, completion: @escaping (_ data: ServiceDocsAccountGetSingle?, _ error: Error?) -> Void)
```

Convert Account DNS Record

Toggle the realm DNS record between srv and cname.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let dnsrecord = service.UpdateRecordTypeForAccount(recordType: "recordType_example") // ServiceUpdateRecordTypeForAccount | record type fields with value SRV, CNAME

// Convert Account DNS Record
AccountAPI.v1AccountAccountidDnsrecordPut(accountid: accountid, dnsrecord: dnsrecord) { (response, error) in
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
 **dnsrecord** | [**ServiceUpdateRecordTypeForAccount**](ServiceUpdateRecordTypeForAccount.md) | record type fields with value SRV, CNAME | 

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidGet**
```swift
    open class func v1AccountAccountidGet(accountid: String, completion: @escaping (_ data: ServiceDocsAccountGetSingle?, _ error: Error?) -> Void)
```

Get Account Details

This endpoint will not allow for modifying or making updates, it will only allow users to view/retrieve details.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric

// Get Account Details
AccountAPI.v1AccountAccountidGet(accountid: accountid) { (response, error) in
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

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidLimitGet**
```swift
    open class func v1AccountAccountidLimitGet(accountid: String, completion: @escaping (_ data: ServiceDocsAccountLimit?, _ error: Error?) -> Void)
```

Get Account Limits

Check the maximum number of inbound, outbound, and two-way trunks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric

// Get Account Limits
AccountAPI.v1AccountAccountidLimitGet(accountid: accountid) { (response, error) in
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

### Return type

[**ServiceDocsAccountLimit**](ServiceDocsAccountLimit.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidLimitPut**
```swift
    open class func v1AccountAccountidLimitPut(accountid: String, limit: ServiceVOIPAccountLimit2, completion: @escaping (_ data: ServiceDocsAccountLimit?, _ error: Error?) -> Void)
```

Set Account Limits

Apply parameters to restrict access to inbound, outbound, and two-way trunks.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let limit = service.VOIPAccountLimit2(inboundTrunks: 123, outboundTrunks: 123, twowayTrunks: 123) // ServiceVOIPAccountLimit2 | account fields

// Set Account Limits
AccountAPI.v1AccountAccountidLimitPut(accountid: accountid, limit: limit) { (response, error) in
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
 **limit** | [**ServiceVOIPAccountLimit2**](ServiceVOIPAccountLimit2.md) | account fields | 

### Return type

[**ServiceDocsAccountLimit**](ServiceDocsAccountLimit.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidPost**
```swift
    open class func v1AccountAccountidPost(accountid: String, account: ServiceVOIPAccountAddData, completion: @escaping (_ data: ServiceDocsAccountGetSingle?, _ error: Error?) -> Void)
```

Create Sub Account

Establish a sub account to enable an administrator within your organization to create accounts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let account = service.VOIPAccountAddData(callerId: models.VOIPAccountOutputFullCallerid(emergency: models.AccountOutputFullCalleridEmergency(number: "number_example"), external: models.AccountOutputFullCalleridExternal(number: "number_example"), _internal: models.AccountOutputFullCalleridInternal(number: "number_example")), doNotDisturb: models.VOIPSharedDoNotDisturb(enabled: false), musicOnHold: models.VOIPAccountMusicOnHold(mediaId: "mediaId_example"), name: "name_example", realm: "realm_example", timezone: "timezone_example") // ServiceVOIPAccountAddData | account fields

// Create Sub Account
AccountAPI.v1AccountAccountidPost(accountid: accountid, account: account) { (response, error) in
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
 **account** | [**ServiceVOIPAccountAddData**](ServiceVOIPAccountAddData.md) | account fields | 

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidProvisioningdetailsGet**
```swift
    open class func v1AccountAccountidProvisioningdetailsGet(accountid: String, completion: @escaping (_ data: ServiceDocsAccountProvisioning?, _ error: Error?) -> Void)
```

Get Account Provisioning Details

Get the provisioning details of an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric

// Get Account Provisioning Details
AccountAPI.v1AccountAccountidProvisioningdetailsGet(accountid: accountid) { (response, error) in
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

### Return type

[**ServiceDocsAccountProvisioning**](ServiceDocsAccountProvisioning.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidProvisioningdetailsResetpwPut**
```swift
    open class func v1AccountAccountidProvisioningdetailsResetpwPut(accountid: String, completion: @escaping (_ data: ServiceDocsAccountProvisioning?, _ error: Error?) -> Void)
```

Reset the provisioning details password.

Reset the existing provisioning details password and set it to a new one.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric

// Reset the provisioning details password.
AccountAPI.v1AccountAccountidProvisioningdetailsResetpwPut(accountid: accountid) { (response, error) in
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

### Return type

[**ServiceDocsAccountProvisioning**](ServiceDocsAccountProvisioning.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountAccountidPut**
```swift
    open class func v1AccountAccountidPut(accountid: String, account: ServiceVOIPAccountEditData, completion: @escaping (_ data: ServiceDocsAccountGetSingle?, _ error: Error?) -> Void)
```

Update Account

Modify pertinent account data.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountid = "accountid_example" // String | Account ID, 32 alpha numeric
let account = service.VOIPAccountEditData(callerId: models.VOIPAccountOutputFullCallerid(emergency: models.AccountOutputFullCalleridEmergency(number: "number_example"), external: models.AccountOutputFullCalleridExternal(number: "number_example"), _internal: models.AccountOutputFullCalleridInternal(number: "number_example")), doNotDisturb: models.VOIPSharedDoNotDisturb(enabled: false), enabled: false, musicOnHold: models.VOIPAccountMusicOnHold(mediaId: "mediaId_example"), name: "name_example", timezone: "timezone_example") // ServiceVOIPAccountEditData | account fields

// Update Account
AccountAPI.v1AccountAccountidPut(accountid: accountid, account: account) { (response, error) in
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
 **account** | [**ServiceVOIPAccountEditData**](ServiceVOIPAccountEditData.md) | account fields | 

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountApikeyGet**
```swift
    open class func v1AccountApikeyGet(completion: @escaping (_ data: ServiceDocsAccountAPIKey?, _ error: Error?) -> Void)
```



Authenticate an application or user request to get the client ID and client secret for a CPaaS account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


AccountAPI.v1AccountApikeyGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**ServiceDocsAccountAPIKey**](ServiceDocsAccountAPIKey.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountGet**
```swift
    open class func v1AccountGet(startKey: String? = nil, pageSize: Int? = nil, completion: @escaping (_ data: ServiceDocsAccountGetAll?, _ error: Error?) -> Void)
```

Get Account List

Retrieve a list of all CPaaS accounts that exist within your organization.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let startKey = "startKey_example" // String | start_key for pagination that was returned as next_start_key from your previous call (optional)
let pageSize = 987 // Int | number of records to return, range 1 to 50 (optional)

// Get Account List
AccountAPI.v1AccountGet(startKey: startKey, pageSize: pageSize) { (response, error) in
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
 **startKey** | **String** | start_key for pagination that was returned as next_start_key from your previous call | [optional] 
 **pageSize** | **Int** | number of records to return, range 1 to 50 | [optional] 

### Return type

[**ServiceDocsAccountGetAll**](ServiceDocsAccountGetAll.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AccountPost**
```swift
    open class func v1AccountPost(account: ServiceVOIPAccountAddData, completion: @escaping (_ data: ServiceDocsAccountGetSingle?, _ error: Error?) -> Void)
```

Create Account

Create an account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let account = service.VOIPAccountAddData(callerId: models.VOIPAccountOutputFullCallerid(emergency: models.AccountOutputFullCalleridEmergency(number: "number_example"), external: models.AccountOutputFullCalleridExternal(number: "number_example"), _internal: models.AccountOutputFullCalleridInternal(number: "number_example")), doNotDisturb: models.VOIPSharedDoNotDisturb(enabled: false), musicOnHold: models.VOIPAccountMusicOnHold(mediaId: "mediaId_example"), name: "name_example", realm: "realm_example", timezone: "timezone_example") // ServiceVOIPAccountAddData | account fields

// Create Account
AccountAPI.v1AccountPost(account: account) { (response, error) in
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
 **account** | [**ServiceVOIPAccountAddData**](ServiceVOIPAccountAddData.md) | account fields | 

### Return type

[**ServiceDocsAccountGetSingle**](ServiceDocsAccountGetSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

