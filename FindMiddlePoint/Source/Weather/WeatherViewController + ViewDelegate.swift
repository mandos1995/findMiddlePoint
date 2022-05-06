//
//  WeatherViewController + ViewDelegate.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/06.
//

extension WeatherViewController: WeatherViewDelegate {
    func didSuccessGetWeatherResponse(_ response: GetWeatherResponse) {
        temp = String(response.main.temp - 273.15)
        print(temp)
    }
    
    func failedToGetWeatherResponse(message: String) {
        print(message)
    }
    
    
}
