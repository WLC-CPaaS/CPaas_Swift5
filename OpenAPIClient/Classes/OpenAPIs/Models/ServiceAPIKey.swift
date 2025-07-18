//
// ServiceAPIKey.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceAPIKey: Codable, JSONEncodable, Hashable {

    public var clientId: String?
    public var clientSecret: String?

    public init(clientId: String? = nil, clientSecret: String? = nil) {
        self.clientId = clientId
        self.clientSecret = clientSecret
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case clientId = "client_id"
        case clientSecret = "client_secret"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(clientId, forKey: .clientId)
        try container.encodeIfPresent(clientSecret, forKey: .clientSecret)
    }
}

