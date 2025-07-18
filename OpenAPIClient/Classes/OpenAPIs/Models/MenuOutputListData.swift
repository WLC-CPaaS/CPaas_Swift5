//
// MenuOutputListData.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MenuOutputListData: Codable, JSONEncodable, Hashable {

    /** Features used in this menu */
    public var features: [String]?
    /** Flags set by external applications */
    public var flags: [String]?
    /** ID of the menu */
    public var id: String?
    /** A friendly name for the menu */
    public var name: String?

    public init(features: [String]? = nil, flags: [String]? = nil, id: String? = nil, name: String? = nil) {
        self.features = features
        self.flags = flags
        self.id = id
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case features
        case flags
        case id
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(features, forKey: .features)
        try container.encodeIfPresent(flags, forKey: .flags)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension MenuOutputListData: Identifiable {}
