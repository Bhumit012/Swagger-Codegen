//
// EnvironmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class EnvironmentAPI {
    /**

     - parameter days: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getForecast(days: Int, completion: @escaping ((_ data: ForecastResponse?,_ error: Error?) -> Void)) {
        getForecastWithRequestBuilder(days: days).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /temperature/forecast/{days}
     - 

     - examples: [{contentType=application/json, example={
  "city" : {
    "country" : "country",
    "name" : "name",
    "lon" : 1.4658129805029452,
    "id" : 0,
    "lat" : 6.027456183070403
  },
  "values" : [ {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "temperature" : {
      "high" : 3.616076749251911,
      "low" : 9.301444243932576,
      "night" : 1.2315135367772556,
      "evening" : 7.386281948385884,
      "day" : 4.145608029883936,
      "morning" : 2.027123023002322
    },
    "weather" : {
      "summary" : "summary",
      "icon" : "icon",
      "description" : "description"
    },
    "humidity" : 5,
    "pressure" : 5.962133916683182,
    "clouds" : 7,
    "windSpeed" : 2.3021358869347655
  }, {
    "date" : "2000-01-23T04:56:07.000+00:00",
    "temperature" : {
      "high" : 3.616076749251911,
      "low" : 9.301444243932576,
      "night" : 1.2315135367772556,
      "evening" : 7.386281948385884,
      "day" : 4.145608029883936,
      "morning" : 2.027123023002322
    },
    "weather" : {
      "summary" : "summary",
      "icon" : "icon",
      "description" : "description"
    },
    "humidity" : 5,
    "pressure" : 5.962133916683182,
    "clouds" : 7,
    "windSpeed" : 2.3021358869347655
  } ]
}}]
     - parameter days: (path)  

     - returns: RequestBuilder<ForecastResponse> 
     */
    open class func getForecastWithRequestBuilder(days: Int) -> RequestBuilder<ForecastResponse> {
        var path = "/temperature/forecast/{days}"
        let daysPreEscape = "\(days)"
        let daysPostEscape = daysPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{days}", with: daysPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ForecastResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter zoneId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getHeaterState(zoneId: String, completion: @escaping ((_ data: HeaterState?,_ error: Error?) -> Void)) {
        getHeaterStateWithRequestBuilder(zoneId: zoneId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /temperature/{zoneId}/heater

     - examples: [{contentType=application/json, example={
  "id" : "id",
  "state" : "state"
}}]
     - parameter zoneId: (path)  

     - returns: RequestBuilder<HeaterState> 
     */
    open class func getHeaterStateWithRequestBuilder(zoneId: String) -> RequestBuilder<HeaterState> {
        var path = "/temperature/{zoneId}/heater"
        let zoneIdPreEscape = "\(zoneId)"
        let zoneIdPostEscape = zoneIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{zoneId}", with: zoneIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<HeaterState>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter zoneId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getZoneTemperature(zoneId: String, completion: @escaping ((_ data: TemperatueZoneStatus?,_ error: Error?) -> Void)) {
        getZoneTemperatureWithRequestBuilder(zoneId: zoneId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /temperature/{zoneId}
     - 

     - examples: [{contentType=application/json, example={
  "name" : "name",
  "id" : "id",
  "units" : "fahrenheit",
  "value" : 5.962133916683182,
  "timestamp" : "2000-01-23T04:56:07.000+00:00"
}}]
     - parameter zoneId: (path)  

     - returns: RequestBuilder<TemperatueZoneStatus> 
     */
    open class func getZoneTemperatureWithRequestBuilder(zoneId: String) -> RequestBuilder<TemperatueZoneStatus> {
        var path = "/temperature/{zoneId}"
        let zoneIdPreEscape = "\(zoneId)"
        let zoneIdPostEscape = zoneIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{zoneId}", with: zoneIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemperatueZoneStatus>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     * enum for parameter state
     */
    public enum State_setHeaterState: String { 
        case _false = "false"
        case _true = "true"
    }

    /**

     - parameter zoneId: (path)  
     - parameter state: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func setHeaterState(zoneId: String, state: State_setHeaterState, completion: @escaping ((_ data: ApiResponse?,_ error: Error?) -> Void)) {
        setHeaterStateWithRequestBuilder(zoneId: zoneId, state: state).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /temperature/{zoneId}/heater/{state}

     - examples: [{contentType=application/json, example={
  "code" : 0,
  "message" : "everything is ok"
}}]
     - parameter zoneId: (path)  
     - parameter state: (path)  

     - returns: RequestBuilder<ApiResponse> 
     */
    open class func setHeaterStateWithRequestBuilder(zoneId: String, state: State_setHeaterState) -> RequestBuilder<ApiResponse> {
        var path = "/temperature/{zoneId}/heater/{state}"
        let zoneIdPreEscape = "\(zoneId)"
        let zoneIdPostEscape = zoneIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{zoneId}", with: zoneIdPostEscape, options: .literal, range: nil)
        let statePreEscape = "\(state.rawValue)"
        let statePostEscape = statePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{state}", with: statePostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ApiResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func temperatureSummary(completion: @escaping ((_ data: TemperatureSummary?,_ error: Error?) -> Void)) {
        temperatureSummaryWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /temperature
     - 

     - examples: [{contentType=application/json, example={
  "zoneStatus" : [ {
    "name" : "name",
    "id" : "id",
    "units" : "fahrenheit",
    "value" : 5.962133916683182,
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  }, {
    "name" : "name",
    "id" : "id",
    "units" : "fahrenheit",
    "value" : 5.962133916683182,
    "timestamp" : "2000-01-23T04:56:07.000+00:00"
  } ],
  "zones" : [ {
    "inputPosition" : 6,
    "outputPosition" : 1,
    "zone" : "zone",
    "name" : "name",
    "id" : 0
  }, {
    "inputPosition" : 6,
    "outputPosition" : 1,
    "zone" : "zone",
    "name" : "name",
    "id" : 0
  } ]
}}]

     - returns: RequestBuilder<TemperatureSummary> 
     */
    open class func temperatureSummaryWithRequestBuilder() -> RequestBuilder<TemperatureSummary> {
        let path = "/temperature"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<TemperatureSummary>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
