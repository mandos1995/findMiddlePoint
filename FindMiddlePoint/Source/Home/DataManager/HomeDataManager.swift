//
//  HomeDataManager.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/03.
//

import Alamofire

class HomeDataManager: HomeDelegate {
   
    func getCoordResponse(name: String, address: String, delegate: HomeViewDelegate) {
        let url = "https://naveropenapi.apigw.ntruss.com/map-geocode/v2/geocode?query=\(address)"
        let encodedString = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        AF.request(encodedString, method: .get, headers: Secret.GEOCODING_HEADER).validate().responseDecodable(of: GetCoordResponse.self) { response in
            switch response.result {
            case .success(let response):
                if response.status == "OK" {
                    delegate.didSuccessGetCoordResponse(name: name, response: response.addresses)
                } else {
                    delegate.failedToGetCoordResponse(message: "값 이상함")
                }
            case .failure(let _):
                delegate.failedToGetCoordResponse(message: "서버와의 연결이 원활하지 않습니다.")
            }
        }
    }
    
    
}
