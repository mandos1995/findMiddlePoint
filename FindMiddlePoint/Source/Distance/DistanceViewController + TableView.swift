//
//  DistanceViewController + TableView.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/09.
//

import UIKit

extension DistanceViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DistanceManager.shared.distances.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DistanceInfoCell") as? DistanceInfoCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    
}
