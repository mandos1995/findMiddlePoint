//
//  GetWeatherResponse.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/06.
//

struct GetWeatherResponse: Decodable {
    let weather: [Weather]
    let main: Main
    let wind: Wind
}

struct Weather: Decodable {
    let main: String
}

struct Main: Decodable {
    let temp: Double
}

struct Wind: Decodable {
    let speed: Double
}
