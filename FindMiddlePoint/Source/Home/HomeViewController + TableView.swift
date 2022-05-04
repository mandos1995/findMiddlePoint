//
//  HomeViewController + TableView.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/28.
//

import UIKit

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return DistanceManager.shared.distances.isEmpty == true ? 70 : 114
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DistanceManager.shared.distances.isEmpty == true ? 1 : DistanceManager.shared.distances.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if DistanceManager.shared.distances.isEmpty {
            guard let emptyCell = tableView.dequeueReusableCell(withIdentifier: "HomeEmptyCell") as? HomeEmptyCell else {
                return UITableViewCell()
            }
            return emptyCell
        } else {
            guard let distanceCell = tableView.dequeueReusableCell(withIdentifier: "HomeDistanceCell") as? HomeDistanceCell else {
                return UITableViewCell()
            }
            distanceCell.setUI(name: DistanceManager.shared.distances[indexPath.row].name, address: DistanceManager.shared.distances[indexPath.row].address)
            return distanceCell
        }
        
    }
    
    
}
