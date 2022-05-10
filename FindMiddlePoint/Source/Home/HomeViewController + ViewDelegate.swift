//
//  HomeViewController + ViewDelegate.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/04.
//

import UIKit

extension HomeViewController: HomeViewDelegate {
    func didSuccessGetCoordResponse(name: String, response: [Address]) {
        dismissIndicator()
        DistanceManager.shared.distances.append(DistanceManager.Distance.init(name: name, address: response[0].roadAddress, x: response[0].x, y: response[0].y))
        self.buttonSetting()
        self.tableView.reloadData()
    }
    
    func failedToGetCoordResponse(message: String) {
        print(message)
    }
    
    
}
