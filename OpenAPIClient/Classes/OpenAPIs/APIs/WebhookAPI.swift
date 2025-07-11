//
// WebhookAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class WebhookAPI {

    /**
     Get Webhook List
     
     - parameter accountID: (path) Account ID 
     - parameter pageSize: (query) number of records to return, range 1 to 50 (optional)
     - parameter currentPage: (query) Current Page (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1WebhookAccountAccountIDGet(accountID: String, pageSize: Int? = nil, currentPage: Int? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsWebhookGetAll?, _ error: Error?) -> Void)) -> RequestTask {
        return v1WebhookAccountAccountIDGetWithRequestBuilder(accountID: accountID, pageSize: pageSize, currentPage: currentPage).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Webhook List
     - GET /v1/webhook/account/{accountID}
     - Retrieve the webhook list in an account.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID 
     - parameter pageSize: (query) number of records to return, range 1 to 50 (optional)
     - parameter currentPage: (query) Current Page (optional)
     - returns: RequestBuilder<ServiceDocsWebhookGetAll> 
     */
    open class func v1WebhookAccountAccountIDGetWithRequestBuilder(accountID: String, pageSize: Int? = nil, currentPage: Int? = nil) -> RequestBuilder<ServiceDocsWebhookGetAll> {
        var localVariablePath = "/v1/webhook/account/{accountID}"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "page_size": (wrappedValue: pageSize?.encodeToJSON(), isExplode: false),
            "current_page": (wrappedValue: currentPage?.encodeToJSON(), isExplode: false),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsWebhookGetAll>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create Webhook
     
     - parameter accountID: (path) Account ID 
     - parameter body: (body) Webhook data 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1WebhookAccountAccountIDPost(accountID: String, body: ServiceWebhookAdd, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsWebhookGetSingle?, _ error: Error?) -> Void)) -> RequestTask {
        return v1WebhookAccountAccountIDPostWithRequestBuilder(accountID: accountID, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Webhook
     - POST /v1/webhook/account/{accountID}
     - Create a webhook for a specific account ID.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID 
     - parameter body: (body) Webhook data 
     - returns: RequestBuilder<ServiceDocsWebhookGetSingle> 
     */
    open class func v1WebhookAccountAccountIDPostWithRequestBuilder(accountID: String, body: ServiceWebhookAdd) -> RequestBuilder<ServiceDocsWebhookGetSingle> {
        var localVariablePath = "/v1/webhook/account/{accountID}"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsWebhookGetSingle>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete Webhook
     
     - parameter accountID: (path) Account ID 
     - parameter webhookID: (path) Webhook ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1WebhookAccountAccountIDWebhookIDDelete(accountID: String, webhookID: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsWebhookDelete?, _ error: Error?) -> Void)) -> RequestTask {
        return v1WebhookAccountAccountIDWebhookIDDeleteWithRequestBuilder(accountID: accountID, webhookID: webhookID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Webhook
     - DELETE /v1/webhook/account/{accountID}/{webhookID}
     - Remove a webhook identified by its ID for a particular account ID.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID 
     - parameter webhookID: (path) Webhook ID 
     - returns: RequestBuilder<ServiceDocsWebhookDelete> 
     */
    open class func v1WebhookAccountAccountIDWebhookIDDeleteWithRequestBuilder(accountID: String, webhookID: Int) -> RequestBuilder<ServiceDocsWebhookDelete> {
        var localVariablePath = "/v1/webhook/account/{accountID}/{webhookID}"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let webhookIDPreEscape = "\(APIHelper.mapValueToPathItem(webhookID))"
        let webhookIDPostEscape = webhookIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{webhookID}", with: webhookIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsWebhookDelete>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Webhook Details
     
     - parameter accountID: (path) Account ID 
     - parameter webhookID: (path) Webhook ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1WebhookAccountAccountIDWebhookIDGet(accountID: String, webhookID: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsWebhookGetSingle?, _ error: Error?) -> Void)) -> RequestTask {
        return v1WebhookAccountAccountIDWebhookIDGetWithRequestBuilder(accountID: accountID, webhookID: webhookID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Webhook Details
     - GET /v1/webhook/account/{accountID}/{webhookID}
     - Access details about a single webhook ID for an individual account ID.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID 
     - parameter webhookID: (path) Webhook ID 
     - returns: RequestBuilder<ServiceDocsWebhookGetSingle> 
     */
    open class func v1WebhookAccountAccountIDWebhookIDGetWithRequestBuilder(accountID: String, webhookID: Int) -> RequestBuilder<ServiceDocsWebhookGetSingle> {
        var localVariablePath = "/v1/webhook/account/{accountID}/{webhookID}"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let webhookIDPreEscape = "\(APIHelper.mapValueToPathItem(webhookID))"
        let webhookIDPostEscape = webhookIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{webhookID}", with: webhookIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsWebhookGetSingle>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update Webhook
     
     - parameter accountID: (path) Account ID 
     - parameter webhookID: (path) Webhook ID 
     - parameter body: (body) Updated webhook data 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1WebhookAccountAccountIDWebhookIDPut(accountID: String, webhookID: String, body: ServiceWebhookEdit, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsWebhookGetSingle?, _ error: Error?) -> Void)) -> RequestTask {
        return v1WebhookAccountAccountIDWebhookIDPutWithRequestBuilder(accountID: accountID, webhookID: webhookID, body: body).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Webhook
     - PUT /v1/webhook/account/{accountID}/{webhookID}
     - Update a webhook identified by its ID for a distinct account ID.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID 
     - parameter webhookID: (path) Webhook ID 
     - parameter body: (body) Updated webhook data 
     - returns: RequestBuilder<ServiceDocsWebhookGetSingle> 
     */
    open class func v1WebhookAccountAccountIDWebhookIDPutWithRequestBuilder(accountID: String, webhookID: String, body: ServiceWebhookEdit) -> RequestBuilder<ServiceDocsWebhookGetSingle> {
        var localVariablePath = "/v1/webhook/account/{accountID}/{webhookID}"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let webhookIDPreEscape = "\(APIHelper.mapValueToPathItem(webhookID))"
        let webhookIDPostEscape = webhookIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{webhookID}", with: webhookIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsWebhookGetSingle>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
