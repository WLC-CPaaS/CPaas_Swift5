//
// MetaflowAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class MetaflowAPI {

    /**
     Delete Device Metaflow
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter deviceID: (path) Device ID, 32 alpha numeric 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDDeviceDeviceIDMetaflowDelete(accountID: String, deviceID: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDDeviceDeviceIDMetaflowDeleteWithRequestBuilder(accountID: accountID, deviceID: deviceID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Device Metaflow
     - DELETE /v1/account/{accountID}/device/{deviceID}/metaflow
     - Delete all metaflows associated with a device.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter deviceID: (path) Device ID, 32 alpha numeric 
     - returns: RequestBuilder<ServiceDocsMetaflowGet> 
     */
    open class func v1AccountAccountIDDeviceDeviceIDMetaflowDeleteWithRequestBuilder(accountID: String, deviceID: String) -> RequestBuilder<ServiceDocsMetaflowGet> {
        var localVariablePath = "/v1/account/{accountID}/device/{deviceID}/metaflow"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let deviceIDPreEscape = "\(APIHelper.mapValueToPathItem(deviceID))"
        let deviceIDPostEscape = deviceIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{deviceID}", with: deviceIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsMetaflowGet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Device Metaflow List
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter deviceID: (path) Device ID, 32 alpha numeric 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDDeviceDeviceIDMetaflowGet(accountID: String, deviceID: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDDeviceDeviceIDMetaflowGetWithRequestBuilder(accountID: accountID, deviceID: deviceID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Device Metaflow List
     - GET /v1/account/{accountID}/device/{deviceID}/metaflow
     - Get the list of metaflows for a device.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter deviceID: (path) Device ID, 32 alpha numeric 
     - returns: RequestBuilder<ServiceDocsMetaflowGet> 
     */
    open class func v1AccountAccountIDDeviceDeviceIDMetaflowGetWithRequestBuilder(accountID: String, deviceID: String) -> RequestBuilder<ServiceDocsMetaflowGet> {
        var localVariablePath = "/v1/account/{accountID}/device/{deviceID}/metaflow"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let deviceIDPreEscape = "\(APIHelper.mapValueToPathItem(deviceID))"
        let deviceIDPostEscape = deviceIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{deviceID}", with: deviceIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsMetaflowGet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create Device Metaflow
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter deviceID: (path) Device ID, 32 alpha numeric 
     - parameter reqBody: (body) payload fields 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDDeviceDeviceIDMetaflowPost(accountID: String, deviceID: String, reqBody: ServiceVOIPMetaflowAddData, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDDeviceDeviceIDMetaflowPostWithRequestBuilder(accountID: accountID, deviceID: deviceID, reqBody: reqBody).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Device Metaflow
     - POST /v1/account/{accountID}/device/{deviceID}/metaflow
     - Create a metaflow or multiple metaflows for a device.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter deviceID: (path) Device ID, 32 alpha numeric 
     - parameter reqBody: (body) payload fields 
     - returns: RequestBuilder<ServiceDocsMetaflowGet> 
     */
    open class func v1AccountAccountIDDeviceDeviceIDMetaflowPostWithRequestBuilder(accountID: String, deviceID: String, reqBody: ServiceVOIPMetaflowAddData) -> RequestBuilder<ServiceDocsMetaflowGet> {
        var localVariablePath = "/v1/account/{accountID}/device/{deviceID}/metaflow"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let deviceIDPreEscape = "\(APIHelper.mapValueToPathItem(deviceID))"
        let deviceIDPostEscape = deviceIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{deviceID}", with: deviceIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: reqBody)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsMetaflowGet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete Account Metaflow
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDMetaflowDelete(accountID: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDMetaflowDeleteWithRequestBuilder(accountID: accountID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Account Metaflow
     - DELETE /v1/account/{accountID}/metaflow
     - Remove all metaflows from an account.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - returns: RequestBuilder<ServiceDocsMetaflowGet> 
     */
    open class func v1AccountAccountIDMetaflowDeleteWithRequestBuilder(accountID: String) -> RequestBuilder<ServiceDocsMetaflowGet> {
        var localVariablePath = "/v1/account/{accountID}/metaflow"
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

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsMetaflowGet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get Account Metaflow List
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDMetaflowGet(accountID: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDMetaflowGetWithRequestBuilder(accountID: accountID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Account Metaflow List
     - GET /v1/account/{accountID}/metaflow
     - Get an account's metaflow list.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - returns: RequestBuilder<ServiceDocsMetaflowGet> 
     */
    open class func v1AccountAccountIDMetaflowGetWithRequestBuilder(accountID: String) -> RequestBuilder<ServiceDocsMetaflowGet> {
        var localVariablePath = "/v1/account/{accountID}/metaflow"
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

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsMetaflowGet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create Account Metaflow
     
     - parameter accountID: (path) Account ID 
     - parameter metaflow: (body) Metaflow fields 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDMetaflowPost(accountID: String, metaflow: ServiceVOIPMetaflowAddData, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDMetaflowPostWithRequestBuilder(accountID: accountID, metaflow: metaflow).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Account Metaflow
     - POST /v1/account/{accountID}/metaflow
     - Generate a metaflow for an account.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID 
     - parameter metaflow: (body) Metaflow fields 
     - returns: RequestBuilder<ServiceDocsMetaflowGet> 
     */
    open class func v1AccountAccountIDMetaflowPostWithRequestBuilder(accountID: String, metaflow: ServiceVOIPMetaflowAddData) -> RequestBuilder<ServiceDocsMetaflowGet> {
        var localVariablePath = "/v1/account/{accountID}/metaflow"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: metaflow)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsMetaflowGet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete User Metaflow
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter userID: (path) user ID, 32 alpha numeric 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDUserUserIDMetaflowDelete(accountID: String, userID: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDUserUserIDMetaflowDeleteWithRequestBuilder(accountID: accountID, userID: userID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete User Metaflow
     - DELETE /v1/account/{accountID}/user/{userID}/metaflow
     - Delete all metaflows associated with a user.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter userID: (path) user ID, 32 alpha numeric 
     - returns: RequestBuilder<ServiceDocsMetaflowGet> 
     */
    open class func v1AccountAccountIDUserUserIDMetaflowDeleteWithRequestBuilder(accountID: String, userID: String) -> RequestBuilder<ServiceDocsMetaflowGet> {
        var localVariablePath = "/v1/account/{accountID}/user/{userID}/metaflow"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let userIDPreEscape = "\(APIHelper.mapValueToPathItem(userID))"
        let userIDPostEscape = userIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userID}", with: userIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsMetaflowGet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Get User Metaflow List
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter userID: (path) user ID, 32 alpha numeric 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDUserUserIDMetaflowGet(accountID: String, userID: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDUserUserIDMetaflowGetWithRequestBuilder(accountID: accountID, userID: userID).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get User Metaflow List
     - GET /v1/account/{accountID}/user/{userID}/metaflow
     - Get the list of metaflows for a user.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter userID: (path) user ID, 32 alpha numeric 
     - returns: RequestBuilder<ServiceDocsMetaflowGet> 
     */
    open class func v1AccountAccountIDUserUserIDMetaflowGetWithRequestBuilder(accountID: String, userID: String) -> RequestBuilder<ServiceDocsMetaflowGet> {
        var localVariablePath = "/v1/account/{accountID}/user/{userID}/metaflow"
        let accountIDPreEscape = "\(APIHelper.mapValueToPathItem(accountID))"
        let accountIDPostEscape = accountIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{accountID}", with: accountIDPostEscape, options: .literal, range: nil)
        let userIDPreEscape = "\(APIHelper.mapValueToPathItem(userID))"
        let userIDPostEscape = userIDPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{userID}", with: userIDPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsMetaflowGet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Create User Metaflow
     
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter userID: (path) user ID, 32 alpha numeric 
     - parameter reqBody: (body) payload fields 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func v1AccountAccountIDUserUserIDMetaflowPost(accountID: String, userID: String, reqBody: ServiceVOIPMetaflowAddData, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ServiceDocsMetaflowGet?, _ error: Error?) -> Void)) -> RequestTask {
        return v1AccountAccountIDUserUserIDMetaflowPostWithRequestBuilder(accountID: accountID, userID: userID, reqBody: reqBody).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create User Metaflow
     - POST /v1/account/{accountID}/user/{userID}/metaflow
     - Add a metaflow or multiple metaflows for a user in an account.
     - API Key:
       - type: apiKey Authorization (HEADER)
       - name: BearerAuth
     - parameter accountID: (path) Account ID, 32 alpha numeric 
     - parameter userID: (path) user ID, 32 alpha numeric 
     - parameter reqBody: (body) payload fields 
     - returns: RequestBuilder<ServiceDocsMetaflowGet> 
     */
    open class func v1AccountAccountIDUserUserIDMetaflowPostWithRequestBuilder(accountID: String, userID: String, reqBody: ServiceVOIPMetaflowAddData) -> RequestBuilder<ServiceDocsMetaflowGet> {
        var localVariablePath = "/v1/account/{accountID}/user/{userID}/metaflow"
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

        let localVariableRequestBuilder: RequestBuilder<ServiceDocsMetaflowGet>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
