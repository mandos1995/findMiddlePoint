//
//  DistanceViewController + ViewDelegate.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/09.
//

import UIKit

extension DistanceViewController: DistanceViewDelegate {
    func didSuccessGetPathResponse(_ response: GetPathResponse) {
        distances.append(response.route.traoptimal[0].summary.distance)
        times.append(response.route.traoptimal[0].summary.duration)
        print(distances, times)
    }
    
    func failedToGetPathResponse(message: String) {
        print(message)
    }
    
    
}
