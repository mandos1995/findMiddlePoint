//
//  MapViewController + ViewDelegate.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/03.
//

import UIKit

extension MapViewController: MapViewDelegate {
    func didSuccessGetReverseCoordResponse(_ response: Region) {
        middleAddress = "\(response.area1.name) \(response.area2.name) \(response.area3.name)"
        DistanceManager.shared.middleAddress = middleAddress
        middlePointMarker.captionRequestedWidth = 70
        middlePointMarker.captionText = middleAddress
    }
    
    func failedToGetCoordResponse(message: String) {
        print(message)
    }
    

}
