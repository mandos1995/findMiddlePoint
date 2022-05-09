//
//  DistanceProtocol.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/09.
//

protocol DistanceDelegate {
    func getPathResponse(start: String, end: String, delegate: DistanceViewDelegate)
}

protocol DistanceViewDelegate {
    func didSuccessGetPathResponse(_ response: GetPathResponse)
    func failedToGetPathResponse(message: String)
}
