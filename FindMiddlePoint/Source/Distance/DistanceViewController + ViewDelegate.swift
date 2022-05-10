//
//  DistanceViewController + ViewDelegate.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/09.
//

import UIKit

extension DistanceViewController: DistanceViewDelegate {
    func didSuccessGetPathResponse(_ response: GetPathResponse) {
        dismissIndicator()
        var distance = Double(response.route.traoptimal[0].summary.distance) / 1000
        distance = round(distance * 10) / 10
        distanceLabel.text = "거리 : \(distance)km"
        let time = response.route.traoptimal[0].summary.duration / 1000
        let hour = time / 3600
        let min = time % 3600 / 60
        timeLabel.text = "시간 : \(hour)시간 \(min)분"
    }
    
    func failedToGetPathResponse(message: String) {
        print(message)
    }

}
