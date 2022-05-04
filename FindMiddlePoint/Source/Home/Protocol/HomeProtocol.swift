//
//  MapProtocol.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/03.
//

protocol HomeDelegate {
    func getCoordResponse(name: String, address: String, delegate: HomeViewDelegate)
}

protocol HomeViewDelegate {
    func didSuccessGetCoordResponse(name: String, response: [Address])
    func failedToGetCoordResponse(message: String)
}
