//
//  MapProtocol.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/06.
//

protocol MapDelegate {
    func getReverseCoordResponse(x: String, y: String, delegate: MapViewDelegate)
}

protocol MapViewDelegate {
    func didSuccessGetReverseCoordResponse(_ response: Region)
    func failedToGetCoordResponse(message: String)
}
