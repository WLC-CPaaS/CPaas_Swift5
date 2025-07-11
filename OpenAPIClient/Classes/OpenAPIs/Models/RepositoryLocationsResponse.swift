//
// RepositoryLocationsResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RepositoryLocationsResponse: Codable, JSONEncodable, Hashable {

    public var locationId: String?
    public var phoneNumber: String?

    public init(locationId: String? = nil, phoneNumber: String? = nil) {
        self.locationId = locationId
        self.phoneNumber = phoneNumber
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case locationId = "location_id"
        case phoneNumber = "phone_number"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(locationId, forKey: .locationId)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
    }
}

