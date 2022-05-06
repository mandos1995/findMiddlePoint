//
//  WeatherViewController + ViewDelegate.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/06.
//

import UIKit

extension WeatherViewController: WeatherViewDelegate {
    func didSuccessGetWeatherResponse(_ response: GetWeatherResponse) {
        temp = String(round((response.main.temp - 273.15) * 10) / 10)
        DistanceManager.shared.middleWeather = temp
        weatherType = WeatherMainType(weatherName: response.weather[0].main)
        switch weatherType {
        case .clear:
            weatherTypeImageView.image = UIImage(named: "icWeaherTypeClear")
        case .clouds:
            weatherTypeImageView.image = UIImage(named: "icWeatherTypeClouds")
        case .snow:
            weatherTypeImageView.image = UIImage(named: "icWeatherTypeSnow")
        case .rain:
            weatherTypeImageView.image = UIImage(named: "icWeahterRain")
        case .none:
            weatherTypeImageView.image = UIImage(named: "icWeaherTypeClear")
        }
        tempLabel.text = "온도 : \(temp) ℃"
        windSpeedLabel.text = "풍속 : \(response.wind.speed) m/s"
    }
    
    func failedToGetWeatherResponse(message: String) {
        print(message)
    }
    
    
}
