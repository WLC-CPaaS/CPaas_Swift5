//
// ServiceCallRecordingOutput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceCallRecordingOutput: Codable, JSONEncodable, Hashable {

    public var callId: String?
    public var calleeIdName: String?
    public var calleeIdNumber: String?
    public var callerIdName: String?
    public var callerIdNumber: String?
    public var cdrId: String?
    public var contentType: String?
    public var customChannelVars: [String: AnyCodable]?
    public var description: String?
    public var direction: String?
    public var duration: Int?
    public var durationMs: Int?
    public var endpointId: String?
    public var from: String?
    public var id: String?
    public var interactionId: String?
    public var mediaSource: String?
    public var mediaType: String?
    public var name: String?
    public var origin: String?
    public var ownerId: String?
    public var request: String?
    public var sourceType: String?
    public var start: Int?
    public var to: String?
    public var url: String?

    public init(callId: String? = nil, calleeIdName: String? = nil, calleeIdNumber: String? = nil, callerIdName: String? = nil, callerIdNumber: String? = nil, cdrId: String? = nil, contentType: String? = nil, customChannelVars: [String: AnyCodable]? = nil, description: String? = nil, direction: String? = nil, duration: Int? = nil, durationMs: Int? = nil, endpointId: String? = nil, from: String? = nil, id: String? = nil, interactionId: String? = nil, mediaSource: String? = nil, mediaType: String? = nil, name: String? = nil, origin: String? = nil, ownerId: String? = nil, request: String? = nil, sourceType: String? = nil, start: Int? = nil, to: String? = nil, url: String? = nil) {
        self.callId = callId
        self.calleeIdName = calleeIdName
        self.calleeIdNumber = calleeIdNumber
        self.callerIdName = callerIdName
        self.callerIdNumber = callerIdNumber
        self.cdrId = cdrId
        self.contentType = contentType
        self.customChannelVars = customChannelVars
        self.description = description
        self.direction = direction
        self.duration = duration
        self.durationMs = durationMs
        self.endpointId = endpointId
        self.from = from
        self.id = id
        self.interactionId = interactionId
        self.mediaSource = mediaSource
        self.mediaType = mediaType
        self.name = name
        self.origin = origin
        self.ownerId = ownerId
        self.request = request
        self.sourceType = sourceType
        self.start = start
        self.to = to
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case callId = "call_id"
        case calleeIdName = "callee_id_name"
        case calleeIdNumber = "callee_id_number"
        case callerIdName = "caller_id_name"
        case callerIdNumber = "caller_id_number"
        case cdrId = "cdr_id"
        case contentType = "content_type"
        case customChannelVars = "custom_channel_vars"
        case description
        case direction
        case duration
        case durationMs = "duration_ms"
        case endpointId = "endpoint_id"
        case from
        case id
        case interactionId = "interaction_id"
        case mediaSource = "media_source"
        case mediaType = "media_type"
        case name
        case origin
        case ownerId = "owner_id"
        case request
        case sourceType = "source_type"
        case start
        case to
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(callId, forKey: .callId)
        try container.encodeIfPresent(calleeIdName, forKey: .calleeIdName)
        try container.encodeIfPresent(calleeIdNumber, forKey: .calleeIdNumber)
        try container.encodeIfPresent(callerIdName, forKey: .callerIdName)
        try container.encodeIfPresent(callerIdNumber, forKey: .callerIdNumber)
        try container.encodeIfPresent(cdrId, forKey: .cdrId)
        try container.encodeIfPresent(contentType, forKey: .contentType)
        try container.encodeIfPresent(customChannelVars, forKey: .customChannelVars)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(direction, forKey: .direction)
        try container.encodeIfPresent(duration, forKey: .duration)
        try container.encodeIfPresent(durationMs, forKey: .durationMs)
        try container.encodeIfPresent(endpointId, forKey: .endpointId)
        try container.encodeIfPresent(from, forKey: .from)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(interactionId, forKey: .interactionId)
        try container.encodeIfPresent(mediaSource, forKey: .mediaSource)
        try container.encodeIfPresent(mediaType, forKey: .mediaType)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(origin, forKey: .origin)
        try container.encodeIfPresent(ownerId, forKey: .ownerId)
        try container.encodeIfPresent(request, forKey: .request)
        try container.encodeIfPresent(sourceType, forKey: .sourceType)
        try container.encodeIfPresent(start, forKey: .start)
        try container.encodeIfPresent(to, forKey: .to)
        try container.encodeIfPresent(url, forKey: .url)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ServiceCallRecordingOutput: Identifiable {}
