//
// TemperatureZone.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** a single temperature zone */

public struct TemperatureZone: Codable {

    /** the unique identifier for the zone */
    public var _id: Int
    public var name: String
    public var inputPosition: Int?
    public var outputPosition: Int?
    public var zone: String?

    public init(_id: Int, name: String, inputPosition: Int? = nil, outputPosition: Int? = nil, zone: String? = nil) {
        self._id = _id
        self.name = name
        self.inputPosition = inputPosition
        self.outputPosition = outputPosition
        self.zone = zone
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case inputPosition
        case outputPosition
        case zone
    }

}
