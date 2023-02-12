//
// ForecastResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ForecastResponse: Codable {

    public var city: City?
    public var values: [Forecast]?

    public init(city: City? = nil, values: [Forecast]? = nil) {
        self.city = city
        self.values = values
    }


}