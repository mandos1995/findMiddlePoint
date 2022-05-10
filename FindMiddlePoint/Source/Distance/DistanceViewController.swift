//
//  DistanceViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/02.
//

import UIKit

class DistanceViewController: UIViewController {
    private lazy var dataManager: DistanceDelegate = DistanceDataManager()
    @IBOutlet weak var topBarCollectionView: UICollectionView!
    
    var distances: [Int] = []
    var times: [Int] = []
    var page: Int = 0 {
        didSet {
            getDistanceInstance(index: page)
            topBarCollectionView.reloadData()
        }
    }
    @IBOutlet weak var startAddressLabel: UILabel!
    @IBOutlet weak var middleAddressLabel: UILabel! {
        didSet {
            middleAddressLabel.text = DistanceManager.shared.middleAddress ?? ""
        }
    }
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showIndicator()
        dataManager.getPathResponse(start: DistanceManager.shared.distances[0].x + "," + DistanceManager.shared.distances[0].y, end: (DistanceManager.shared.middleX ?? "") + "," + (DistanceManager.shared.middleY ?? "" ), delegate: self)
        startAddressLabel.text = DistanceManager.shared.distances[0].address
    }
    
    
    func getDistanceInstance(index: Int) {
        startAddressLabel.text = DistanceManager.shared.distances[index].address
        showIndicator()
        dataManager.getPathResponse(start: DistanceManager.shared.distances[index].x + "," + DistanceManager.shared.distances[index].y, end: (DistanceManager.shared.middleX ?? "") + "," + (DistanceManager.shared.middleY ?? "" ), delegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.title = "거리"
    }
}
