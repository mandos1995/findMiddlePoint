//
//  MapDataManager.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/06.
//

import Alamofire

class MapDataManager: MapDelegate {
    func getReverseCoordResponse(x: String, y: String, delegate: MapViewDelegate) {
        let url = "https://naveropenapi.apigw.ntruss.com/map-reversegeocode/v2/gc?coords=\(x),\(y)&output=json"
        AF.request(url, method: .get, headers: Secret.GEOCODING_HEADER).validate().responseDecodable(of: GetReverseCoordResponse.self) { response in
            switch response.result {
            case .success(let response):
                if response.status.code == 0 {
                    delegate.didSuccessGetReverseCoordResponse(response.results[0].region)
                } else {
                    delegate.failedToGetCoordResponse(message: response.status.message)
                }
            case .failure:
                delegate.failedToGetCoordResponse(message: "서버와의 연결이 원활하지 않습니다.")
            }
        }
    }
    
    
}
