//
//  DistanceViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/02.
//

import UIKit

class DistanceViewController: UIViewController {
    private lazy var dataManager: DistanceDelegate = DistanceDataManager()
    var distances: [Int] = []
    var times: [Int] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        DistanceManager.shared.distances.forEach {
            dataManager.getPathResponse(start: $0.x + "," + $0.y, end: (DistanceManager.shared.middleX ?? "") + "," + (DistanceManager.shared.middleY ?? ""), delegate: self)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
