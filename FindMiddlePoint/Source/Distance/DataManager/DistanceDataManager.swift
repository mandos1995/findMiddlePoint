//
//  DistanceDataManager.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/09.
//

import Alamofire

class DistanceDataManager: DistanceDelegate {
    func getPathResponse(start: String, end: String, delegate: DistanceViewDelegate) {
        let url = "https://naveropenapi.apigw.ntruss.com/map-direction/v1/driving?start=\(start)&goal=\(end)"
        AF.request(url, method: .get, headers: Secret.GEOCODING_HEADER).validate().responseDecodable(of: GetPathResponse.self) { response in
            switch response.result {
            case .success(let response):
                if response.code == 0 {
                    delegate.didSuccessGetPathResponse(response)
                } else {
                    delegate.failedToGetPathResponse(message: response.message)
                }
            case .failure:
                delegate.failedToGetPathResponse(message: "서버와의 연결이 원활하지 않습니다.")
            }
        }
    }
    
    
}
