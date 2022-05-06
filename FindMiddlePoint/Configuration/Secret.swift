//
//  Secret.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/03.
//

import Alamofire

struct Secret {
    static var GEOCODING_HEADER: HTTPHeaders {
        return [
            "X-NCP-APIGW-API-KEY-ID": "ufssdv6zgr",
            "X-NCP-APIGW-API-KEY" : "NthRwBjCsu5DxDEZp06ijdUwXotqSqcQYpVjySrk"
        ]
    }
    static var WEATHER_API_KEY: String {
        return "4b889248731611b5487b7bb1efe9beea"
    }
}
