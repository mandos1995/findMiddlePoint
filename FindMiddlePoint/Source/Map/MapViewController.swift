//
//  MapViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/02.
//

import UIKit
import NMapsMap

class MapViewController: BaseViewController {
    private lazy var dataManager: MapDelegate = MapDataManager()
    @IBOutlet weak var mapView: NMFMapView!
    var distances = DistanceManager.shared.distances
    var middleAddress = ""
    let middlePointMarker = NMFMarker()
    override func viewDidLoad() {
        super.viewDidLoad()
        drawMarker()
        drawLine()
    }
    
    func getMiddlePoint() -> (Double, Double){
        var x: Double = 0
        var y: Double = 0
        switch distances.count {
        case 2:
            x = ((Double(distances[0].x) ?? 0) + (Double(distances[1].x) ?? 0)) / 2
            y = ((Double(distances[0].y) ?? 0) + (Double(distances[1].y) ?? 0)) / 2
        case 3:
            for distance in distances {
                x += Double(distance.x) ?? 0
                y += Double(distance.y) ?? 0
            }
            x /= 3
            y /= 3
        default:
            print("")
        }
        return (x, y)
    }
    
    func drawMarker() {
        for distance in distances {
            let marker = NMFMarker()
            marker.position = NMGLatLng(lat: Double(distance.y) ?? 0, lng: Double(distance.x) ?? 0)
            marker.captionText = distance.name
            marker.mapView = mapView
        }
        let middlePoint = getMiddlePoint()
        middlePointMarker.position = NMGLatLng(lat: middlePoint.1, lng: middlePoint.0)
        middlePointMarker.mapView = mapView
        let cameraUpdate = NMFCameraUpdate(scrollTo: NMGLatLng(lat: middlePoint.1, lng: middlePoint.0))
        mapView.moveCamera(cameraUpdate)
        DistanceManager.shared.middleX = "\(middlePoint.0)"
        DistanceManager.shared.middleY = "\(middlePoint.1)"
        dataManager.getReverseCoordResponse(x: "\(middlePoint.0)", y: "\(middlePoint.1)", delegate: self)
    }
    
    func drawLine() {
        let pathOverlay = NMFPath()
        var pathes: [NMGLatLng] = []
        for distance in distances {
            let line = NMGLatLng(lat: Double(distance.y) ?? 0, lng: Double(distance.x) ?? 0)
            pathes.append(line)
        }
        let lastLine = NMGLatLng(lat: Double(distances[0].y) ?? 0, lng: Double(distances[0].x) ?? 0)
        pathes.append(lastLine)
        pathOverlay.path = NMGLineString(points:pathes)
        pathOverlay.color = UIColor.gray
        pathOverlay.mapView = mapView
        
    }
}
