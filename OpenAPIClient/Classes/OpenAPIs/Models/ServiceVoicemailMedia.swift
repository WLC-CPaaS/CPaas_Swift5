//
// ServiceVoicemailMedia.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceVoicemailMedia: Codable, JSONEncodable, Hashable {

    public var unavailable: String?

    public init(unavailable: String? = nil) {
        self.unavailable = unavailable
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case unavailable
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(unavailable, forKey: .unavailable)
    }
}

