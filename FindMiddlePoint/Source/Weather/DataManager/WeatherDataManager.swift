//
//  WeatherDataManager.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/06.
//

import Alamofire

class WeahterDataManager: WeatherDelegate {
    func getWeatherResponse(y: Double, x: Double, delegate: WeatherViewDelegate) {
        let url = "https://api.openweathermap.org/data/2.5/weather?lat=\(y)&lon=\(x)&appid=\(Secret.WEATHER_API_KEY)"
        AF.request(url, method: .get).validate().responseDecodable(of: GetWeatherResponse.self) { response in
            switch response.result {
            case .success(let response):
                delegate.didSuccessGetWeatherResponse(response)
            case .failure:
                delegate.failedToGetWeatherResponse(message: "서버와의 연결이 원활하지 않습니다.")
            }
        }
    }
    
    
}
