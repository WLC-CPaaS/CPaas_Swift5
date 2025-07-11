//
// PresenceAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PresenceAPI {

    /**
     Set/Reset Presence for Extension
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter _extension: (path) Extension 
     - parameter reqBody: (body) payload fields 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDPresenceExtensionPut(accountID: String, _extension: String, reqBody: ServiceVOIPPresenceSetResetEditData, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDPresenceExtensionPutWithRequestBuilder(accountID: accountID, _extension: _extension, reqBody: reqBody).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set/Reset Presence for Extension
     - PUT /v1/account/{accountID}/presence/{extension}
     - Set or reset the presence status of an extension.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter _extension: (path) Extension 
     - parameter reqBody: (body) payload fields 
     - returns: RequestBuilder<ServiceAPIResponse> 
     */
    open class func v1AccountAccountIDPresenceExtensionPutWithRequestBuilder(accountID: String, _extension: String, reqBody: ServiceVOIPPresenceSetResetEditData) -> RequestBuilder<ServiceAPIResponse> {
        var localVariablePath = "/v1/account/{accountID}/presence/{extension}"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let _extensionPreEscape = "\(APIHelper.mapValueToPathItem(_extension))"
        let _extensionPostEscape = _extensionPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{extension}", with: _extensionPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: reqBody)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Presence Details
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDPresenceGet(accountID: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsPresenceGet?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDPresenceGetWithRequestBuilder(accountID: accountID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Presence Details
     - GET /v1/account/{accountID}/presence
     - Retrieve details of presence subscriptions in an account.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - returns: RequestBuilder<ServiceDocsPresenceGet> 
     */
    open class func v1AccountAccountIDPresenceGetWithRequestBuilder(accountID: String) -> RequestBuilder<ServiceDocsPresenceGet> {
        var localVariablePath = "/v1/account/{accountID}/presence"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsPresenceGet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Set/Reset Presence for User
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter userID: (path) User ID, 32 alpha numeric 
     - parameter reqBody: (body) payload fields 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDUserUserIDPresencePut(accountID: String, userID: String, reqBody: ServiceVOIPPresenceSetResetEditData, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceAPIResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDUserUserIDPresencePutWithRequestBuilder(accountID: accountID, userID: userID, reqBody: reqBody).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set/Reset Presence for User
     - PUT /v1/account/{accountID}/user/{userID}/presence
     - Set or reset the presence status of a user within an account.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter userID: (path) User ID, 32 alpha numeric 
     - parameter reqBody: (body) payload fields 
     - returns: RequestBuilder<ServiceAPIResponse> 
     */
    open class func v1AccountAccountIDUserUserIDPresencePutWithRequestBuilder(accountID: String, userID: String, reqBody: ServiceVOIPPresenceSetResetEditData) -> RequestBuilder<ServiceAPIResponse> {
        var localVariablePath = "/v1/account/{accountID}/user/{userID}/presence"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let userIDPreEscape = "\(APIHelper.mapValueToPathItem(userID))"
        let userIDPostEscape = userIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userID}", with: userIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: reqBody)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceAPIResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
