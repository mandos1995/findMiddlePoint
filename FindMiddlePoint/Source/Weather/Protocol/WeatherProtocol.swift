//
//  WeatherProtocol.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/06.
//

protocol WeatherDelegate {
    func getWeatherResponse(y: Double, x: Double, delegate: WeatherViewDelegate)
}
protocol WeatherViewDelegate {
    func didSuccessGetWeatherResponse(_ response: GetWeatherResponse)
    func failedToGetWeatherResponse(message: String)
}
