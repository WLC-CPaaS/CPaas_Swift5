//
// ServiceE911RemoveLocationStatus.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceE911RemoveLocationStatus: Codable, JSONEncodable, Hashable {

    public var code: String?
    public var description: String?

    public init(code: String? = nil, description: String? = nil) {
        self.code = code
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(description, forKey: .description)
    }
}

