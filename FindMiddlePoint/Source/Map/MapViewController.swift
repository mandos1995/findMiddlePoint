//
//  MapViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/02.
//

import UIKit
import NMapsMap

class MapViewController: BaseViewController {
    @IBOutlet weak var mapView: NMFMapView!
    var distances = DistanceManager.shared.distances
    override func viewDidLoad() {
        super.viewDidLoad()
        let marker = NMFMarker()
        let middlePoint = getMiddlePoint()
        marker.position = NMGLatLng(lat: middlePoint.1, lng: middlePoint.0)
        marker.mapView = mapView
    }
    
    func getMiddlePoint() -> (Double, Double){
        var x: Double = 0
        var y: Double = 0
        switch distances.count {
        case 2:
            x = (Double(distances[0].x) ?? 0) + (Double(distances[1].x) ?? 0) / 2
            y = (Double(distances[0].y) ?? 0) + (Double(distances[1].y) ?? 0) / 2
        default:
            print("")
        }
        return (x, y)
    }
}
