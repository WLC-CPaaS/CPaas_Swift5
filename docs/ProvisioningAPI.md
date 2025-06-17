# ProvisioningAPI

All URIs are relative to *http://API_HOSTNAME*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1ApBrandBrandFamilyFamilyGet**](ProvisioningAPI.md#v1apbrandbrandfamilyfamilyget) | **GET** /v1/ap/brand/{brand}/family/{family} | Get Family
[**v1ApBrandBrandFamilyFamilyModelGet**](ProvisioningAPI.md#v1apbrandbrandfamilyfamilymodelget) | **GET** /v1/ap/brand/{brand}/family/{family}/model | Get Model List
[**v1ApBrandBrandFamilyFamilyModelModelGet**](ProvisioningAPI.md#v1apbrandbrandfamilyfamilymodelmodelget) | **GET** /v1/ap/brand/{brand}/family/{family}/model/{model} | Get Model
[**v1ApBrandBrandFamilyFamilyModelModelTemplateGet**](ProvisioningAPI.md#v1apbrandbrandfamilyfamilymodelmodeltemplateget) | **GET** /v1/ap/brand/{brand}/family/{family}/model/{model}/template | Get Template List
[**v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet**](ProvisioningAPI.md#v1apbrandbrandfamilyfamilymodelmodeltemplatetemplateget) | **GET** /v1/ap/brand/{brand}/family/{family}/model/{model}/template/{template} | Get Template
[**v1ApBrandBrandFamilyGet**](ProvisioningAPI.md#v1apbrandbrandfamilyget) | **GET** /v1/ap/brand/{brand}/family | Get Family List
[**v1ApBrandBrandGet**](ProvisioningAPI.md#v1apbrandbrandget) | **GET** /v1/ap/brand/{brand} | Get Brand
[**v1ApBrandGet**](ProvisioningAPI.md#v1apbrandget) | **GET** /v1/ap/brand | Get Brand
[**v1ApConfigfileGeneratePost**](ProvisioningAPI.md#v1apconfigfilegeneratepost) | **POST** /v1/ap/configfile/generate | Generate config file


# **v1ApBrandBrandFamilyFamilyGet**
```swift
    open class func v1ApBrandBrandFamilyFamilyGet(brand: String, family: String, completion: @escaping (_ data: ProvisioningDocsDocsFamilyOutputSingle?, _ error: Error?) -> Void)
```

Get Family

Retrieve a family's details by the randomly generated ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let brand = "brand_example" // String | brand
let family = "family_example" // String | family

// Get Family
ProvisioningAPI.v1ApBrandBrandFamilyFamilyGet(brand: brand, family: family) { (response, error) in
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
 **brand** | **String** | brand | 
 **family** | **String** | family | 

### Return type

[**ProvisioningDocsDocsFamilyOutputSingle**](ProvisioningDocsDocsFamilyOutputSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApBrandBrandFamilyFamilyModelGet**
```swift
    open class func v1ApBrandBrandFamilyFamilyModelGet(brand: String, family: String, modelName: String? = nil, pageSize: Int? = nil, startKey: String? = nil, status: Status_v1ApBrandBrandFamilyFamilyModelGet? = nil, completion: @escaping (_ data: ProvisioningDocsDocsModelOutput?, _ error: Error?) -> Void)
```

Get Model List

Retrieve a list of all models within a family for a brand (e.g., Yealink and Polycom).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let brand = "brand_example" // String | brand
let family = "family_example" // String | family
let modelName = "modelName_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startKey = "startKey_example" // String |  (optional)
let status = "status_example" // String |  (optional)

// Get Model List
ProvisioningAPI.v1ApBrandBrandFamilyFamilyModelGet(brand: brand, family: family, modelName: modelName, pageSize: pageSize, startKey: startKey, status: status) { (response, error) in
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
 **brand** | **String** | brand | 
 **family** | **String** | family | 
 **modelName** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startKey** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 

### Return type

[**ProvisioningDocsDocsModelOutput**](ProvisioningDocsDocsModelOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApBrandBrandFamilyFamilyModelModelGet**
```swift
    open class func v1ApBrandBrandFamilyFamilyModelModelGet(brand: String, family: String, model: String, completion: @escaping (_ data: ProvisioningDocsDocsModelOutputSingle?, _ error: Error?) -> Void)
```

Get Model

Retrieve a model's details by the randomly generated ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let brand = "brand_example" // String | brand
let family = "family_example" // String | family
let model = "model_example" // String | model

// Get Model
ProvisioningAPI.v1ApBrandBrandFamilyFamilyModelModelGet(brand: brand, family: family, model: model) { (response, error) in
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
 **brand** | **String** | brand | 
 **family** | **String** | family | 
 **model** | **String** | model | 

### Return type

[**ProvisioningDocsDocsModelOutputSingle**](ProvisioningDocsDocsModelOutputSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApBrandBrandFamilyFamilyModelModelTemplateGet**
```swift
    open class func v1ApBrandBrandFamilyFamilyModelModelTemplateGet(brand: String, family: String, model: String, firmware: String? = nil, pageSize: Int? = nil, startKey: String? = nil, status: Status_v1ApBrandBrandFamilyFamilyModelModelTemplateGet? = nil, templateName: String? = nil, completion: @escaping (_ data: ProvisioningDocsDocsTemplatesOutput?, _ error: Error?) -> Void)
```

Get Template List

Retrieve a list of all templates for a model within a brand (e.g., Yealink and Polycom).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let brand = "brand_example" // String | brand
let family = "family_example" // String | family
let model = "model_example" // String | model
let firmware = "firmware_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startKey = "startKey_example" // String |  (optional)
let status = "status_example" // String |  (optional)
let templateName = "templateName_example" // String |  (optional)

// Get Template List
ProvisioningAPI.v1ApBrandBrandFamilyFamilyModelModelTemplateGet(brand: brand, family: family, model: model, firmware: firmware, pageSize: pageSize, startKey: startKey, status: status, templateName: templateName) { (response, error) in
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
 **brand** | **String** | brand | 
 **family** | **String** | family | 
 **model** | **String** | model | 
 **firmware** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startKey** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 
 **templateName** | **String** |  | [optional] 

### Return type

[**ProvisioningDocsDocsTemplatesOutput**](ProvisioningDocsDocsTemplatesOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet**
```swift
    open class func v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet(brand: String, family: String, model: String, template: String, completion: @escaping (_ data: ProvisioningDocsDocsTemplateOutputSingle?, _ error: Error?) -> Void)
```

Get Template

Retrieve details about a template for a model by the randomly generated ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let brand = "brand_example" // String | brand
let family = "family_example" // String | family
let model = "model_example" // String | model
let template = "template_example" // String | template

// Get Template
ProvisioningAPI.v1ApBrandBrandFamilyFamilyModelModelTemplateTemplateGet(brand: brand, family: family, model: model, template: template) { (response, error) in
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
 **brand** | **String** | brand | 
 **family** | **String** | family | 
 **model** | **String** | model | 
 **template** | **String** | template | 

### Return type

[**ProvisioningDocsDocsTemplateOutputSingle**](ProvisioningDocsDocsTemplateOutputSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApBrandBrandFamilyGet**
```swift
    open class func v1ApBrandBrandFamilyGet(brand: String, familyName: String? = nil, pageSize: Int? = nil, startKey: String? = nil, status: Status_v1ApBrandBrandFamilyGet? = nil, completion: @escaping (_ data: ProvisioningDocsDocsFamilyOutput?, _ error: Error?) -> Void)
```

Get Family List

Retrieve a list of all families for a brand (e.g., Yealink and Polycom).

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let brand = "brand_example" // String | brand
let familyName = "familyName_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startKey = "startKey_example" // String |  (optional)
let status = "status_example" // String |  (optional)

// Get Family List
ProvisioningAPI.v1ApBrandBrandFamilyGet(brand: brand, familyName: familyName, pageSize: pageSize, startKey: startKey, status: status) { (response, error) in
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
 **brand** | **String** | brand | 
 **familyName** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startKey** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 

### Return type

[**ProvisioningDocsDocsFamilyOutput**](ProvisioningDocsDocsFamilyOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApBrandBrandGet**
```swift
    open class func v1ApBrandBrandGet(brand: String, completion: @escaping (_ data: ProvisioningDocsDocsBrandOutputSingle?, _ error: Error?) -> Void)
```

Get Brand

Retrieve a brand's details by the randomly generated ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let brand = "brand_example" // String | brand id to retrieve a brand

// Get Brand
ProvisioningAPI.v1ApBrandBrandGet(brand: brand) { (response, error) in
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
 **brand** | **String** | brand id to retrieve a brand | 

### Return type

[**ProvisioningDocsDocsBrandOutputSingle**](ProvisioningDocsDocsBrandOutputSingle.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApBrandGet**
```swift
    open class func v1ApBrandGet(brandName: String? = nil, pageSize: Int? = nil, startKey: String? = nil, status: Status_v1ApBrandGet? = nil, completion: @escaping (_ data: ProvisioningDocsDocsBrandsOutput?, _ error: Error?) -> Void)
```

Get Brand

Retrieve a list of all brands (e.g., Yealink and Polycom) by client.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let brandName = "brandName_example" // String |  (optional)
let pageSize = 987 // Int |  (optional)
let startKey = "startKey_example" // String |  (optional)
let status = "status_example" // String |  (optional)

// Get Brand
ProvisioningAPI.v1ApBrandGet(brandName: brandName, pageSize: pageSize, startKey: startKey, status: status) { (response, error) in
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
 **brandName** | **String** |  | [optional] 
 **pageSize** | **Int** |  | [optional] 
 **startKey** | **String** |  | [optional] 
 **status** | **String** |  | [optional] 

### Return type

[**ProvisioningDocsDocsBrandsOutput**](ProvisioningDocsDocsBrandsOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1ApConfigfileGeneratePost**
```swift
    open class func v1ApConfigfileGeneratePost(params: ModelsGenerateConfigFileRequest, completion: @escaping (_ data: ProvisioningDocsDocsConfigFileOutput?, _ error: Error?) -> Void)
```

Generate config file

Generate a configuration file that includes a list of parameters passed to the specified template_id in the request payload, with populated values returned in the response.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let params = models.GenerateConfigFileRequest(parameters: models.ConfigFileParameter(_extension: "_extension_example", httpsHost: "httpsHost_example", httpsPassword: "httpsPassword_example", httpsUsername: "httpsUsername_example", macAddress: "macAddress_example", realm: "realm_example", sipPassword: "sipPassword_example", sipUsername: "sipUsername_example", timezone: "timezone_example", voicemailBoxNumber: "voicemailBoxNumber_example"), templateFileId: "templateFileId_example", templateId: "templateId_example") // ModelsGenerateConfigFileRequest | body params to generate config file

// Generate config file
ProvisioningAPI.v1ApConfigfileGeneratePost(params: params) { (response, error) in
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
 **params** | [**ModelsGenerateConfigFileRequest**](ModelsGenerateConfigFileRequest.md) | body params to generate config file | 

### Return type

[**ProvisioningDocsDocsConfigFileOutput**](ProvisioningDocsDocsConfigFileOutput.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

