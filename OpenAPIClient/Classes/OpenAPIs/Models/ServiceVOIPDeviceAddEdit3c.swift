//
// ServiceVOIPDeviceAddEdit3c.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceVOIPDeviceAddEdit3c: Codable, JSONEncodable, Hashable {

    public var emergency: ServiceVOIPDeviceAddEdit4?
    public var external: ServiceVOIPDeviceAddEdit4?
    public var _internal: ServiceVOIPDeviceAddEdit4?

    public init(emergency: ServiceVOIPDeviceAddEdit4? = nil, external: ServiceVOIPDeviceAddEdit4? = nil, _internal: ServiceVOIPDeviceAddEdit4? = nil) {
        self.emergency = emergency
        self.external = external
        self._internal = _internal
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case emergency
        case external
        case _internal = "internal"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(emergency, forKey: .emergency)
        try container.encodeIfPresent(external, forKey: .external)
        try container.encodeIfPresent(_internal, forKey: ._internal)
    }
}

