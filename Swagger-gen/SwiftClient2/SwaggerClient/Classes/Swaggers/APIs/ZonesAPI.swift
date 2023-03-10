//
// ZonesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class ZonesAPI {
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getZones(completion: @escaping ((_ data: [String]?,_ error: Error?) -> Void)) {
        getZonesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /zones
     - 

     - examples: [{contentType=application/json, example=[ "", "" ]}]

     - returns: RequestBuilder<[String]> 
     */
    open class func getZonesWithRequestBuilder() -> RequestBuilder<[String]> {
        let path = "/zones"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[String]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     * enum for parameter zoneId
     */
    public enum ZoneId_quietZone: String { 
        case basement = "basement"
        case firstFloor = "first-floor"
        case secondFloor = "second-floor"
    }

    /**

     - parameter zoneId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func quietZone(zoneId: ZoneId_quietZone, completion: @escaping ((_ data: Void?,_ error: Error?) -> Void)) {
        quietZoneWithRequestBuilder(zoneId: zoneId).execute { (response, error) -> Void in
            if error == nil {
                completion((), error)
            } else {
                completion(nil, error)
            }
        }
    }


    /**
     - GET /zones/{zoneId}/quiet
     - 

     - parameter zoneId: (path)  

     - returns: RequestBuilder<Void> 
     */
    open class func quietZoneWithRequestBuilder(zoneId: ZoneId_quietZone) -> RequestBuilder<Void> {
        var path = "/zones/{zoneId}/quiet"
        let zoneIdPreEscape = "\(zoneId.rawValue)"
        let zoneIdPostEscape = zoneIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{zoneId}", with: zoneIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Void>.Type = SwaggerClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
