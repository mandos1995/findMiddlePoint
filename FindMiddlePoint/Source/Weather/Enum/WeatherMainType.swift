//
//  WeatherMainType.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/06.
//

enum WeatherMainType: String {
    case clear = "Clear"
    case clouds = "Clouds"
    case rain = "Rain"
    case snow = "Snow"
    
    var weatherName: String {
        switch self {
        case .clear:
            return "Clear"
        case .clouds:
            return "Clouds"
        case .rain:
            return "Rain"
        case .snow:
            return "Snow"
        }
    }
    
    init(weatherName: String) {
        switch weatherName {
        case "Clear":
            self = .clear
        case "Clouds":
            self = .clouds
        case "Rain":
            self = .rain
        case "Snow":
            self = .snow
        default:
            self = .clear
        }
    }
}
