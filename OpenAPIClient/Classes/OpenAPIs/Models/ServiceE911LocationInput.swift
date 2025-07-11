//
// ServiceE911LocationInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceE911LocationInput: Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Codable, CaseIterable {
        case address = "ADDRESS"
    }
    public var address1: String?
    public var address2: String?
    public var community: String?
    public var plusFour: String?
    public var postalCode: String?
    public var state: String?
    public var type: ModelType

    public init(address1: String? = nil, address2: String? = nil, community: String? = nil, plusFour: String? = nil, postalCode: String? = nil, state: String? = nil, type: ModelType) {
        self.address1 = address1
        self.address2 = address2
        self.community = community
        self.plusFour = plusFour
        self.postalCode = postalCode
        self.state = state
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case address1 = "address_1"
        case address2 = "address_2"
        case community
        case plusFour = "plus_four"
        case postalCode = "postal_code"
        case state
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(address1, forKey: .address1)
        try container.encodeIfPresent(address2, forKey: .address2)
        try container.encodeIfPresent(community, forKey: .community)
        try container.encodeIfPresent(plusFour, forKey: .plusFour)
        try container.encodeIfPresent(postalCode, forKey: .postalCode)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encode(type, forKey: .type)
    }
}

