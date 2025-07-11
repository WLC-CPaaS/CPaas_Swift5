//
// ServiceMediaOutputShort.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceMediaOutputShort: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var isPrompt: Bool?
    public var language: String?
    public var mediaSource: String?
    public var name: String?

    public init(id: String? = nil, isPrompt: Bool? = nil, language: String? = nil, mediaSource: String? = nil, name: String? = nil) {
        self.id = id
        self.isPrompt = isPrompt
        self.language = language
        self.mediaSource = mediaSource
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case isPrompt = "is_prompt"
        case language
        case mediaSource = "media_source"
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(isPrompt, forKey: .isPrompt)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(mediaSource, forKey: .mediaSource)
        try container.encodeIfPresent(name, forKey: .name)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ServiceMediaOutputShort: Identifiable {}
