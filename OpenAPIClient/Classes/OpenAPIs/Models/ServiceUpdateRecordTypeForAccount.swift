//
// ServiceUpdateRecordTypeForAccount.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceUpdateRecordTypeForAccount: Codable, JSONEncodable, Hashable {

    public var recordType: String

    public init(recordType: String) {
        self.recordType = recordType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recordType = "record_type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(recordType, forKey: .recordType)
    }
}

