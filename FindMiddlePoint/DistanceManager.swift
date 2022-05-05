//
//  DistanceManager.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/04.
//

import Foundation

class DistanceManager {
    static let shared = DistanceManager()
    
    private init() { }
    
    var distances: [Distance] = []
    var middleX: String?
    var middleY: String?
    var middleAddress: String?
    var middleWeather: String?
    
    struct Distance {
        var name: String
        var address: String
        var x: String
        var y: String
    }
    
    struct MiddlePoint {
        var x: String
        var y: String
        var address: String
        var weather: String
    }
}
