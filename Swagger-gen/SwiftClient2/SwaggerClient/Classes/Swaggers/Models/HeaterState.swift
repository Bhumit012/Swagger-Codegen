//
// HeaterState.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct HeaterState: Codable {

    public var _id: String?
    public var state: String?

    public init(_id: String? = nil, state: String? = nil) {
        self._id = _id
        self.state = state
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case state
    }

}
