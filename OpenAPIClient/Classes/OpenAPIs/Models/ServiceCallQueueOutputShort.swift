//
// ServiceCallQueueOutputShort.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceCallQueueOutputShort: Codable, JSONEncodable, Hashable {

    public var features: [String: AnyCodable]?
    public var id: String?
    public var name: String?

    public init(features: [String: AnyCodable]? = nil, id: String? = nil, name: String? = nil) {
        self.features = features
        self.id = id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case features
        case id
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(features, forKey: .features)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ServiceCallQueueOutputShort: Identifiable {}
