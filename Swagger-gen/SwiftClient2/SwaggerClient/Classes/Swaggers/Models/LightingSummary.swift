//
// LightingSummary.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** ok */

public struct LightingSummary: Codable {

    public var zones: [LightingZone]?
    public var zoneStatus: [LightingZoneStatus]?

    public init(zones: [LightingZone]? = nil, zoneStatus: [LightingZoneStatus]? = nil) {
        self.zones = zones
        self.zoneStatus = zoneStatus
    }


}
