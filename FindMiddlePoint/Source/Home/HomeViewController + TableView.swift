//
//  HomeViewController + TableView.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/28.
//

import UIKit

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return distanceList.isEmpty == true ? 70 : 114
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return distanceList.isEmpty == true ? 1 : distanceList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let emptyCell = tableView.dequeueReusableCell(withIdentifier: "HomeEmptyCell") as? HomeEmptyCell else {
            return UITableViewCell()
        }
        
        guard let distanceCell = tableView.dequeueReusableCell(withIdentifier: "HomeDistanceCell") as? HomeDistanceCell else {
            return UITableViewCell()
        }
        
        return distanceList.isEmpty == true ? emptyCell : distanceCell
    }
    
    
}
