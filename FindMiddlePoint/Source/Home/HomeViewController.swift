//
//  HomeViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/27.
//

import UIKit

class HomeViewController: BaseViewController {
    private lazy var dataManager: HomeDelegate = HomeDataManager()
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
        }
    }
    var distanceList: [User] = []
    @IBOutlet weak var confirmButton: UIButton! {
        didSet {
            confirmButton.layer.cornerRadius = 8
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transparentNavigationbar()
        buttonSetting()
    }
    @IBAction func addDistanceButtonTouchUpInside(_ sender: UIButton) {
        presentDistanceInputPopUp { name, address in
            self.showIndicator()
            self.dataManager.getCoordResponse(name: name, address: address, delegate: self)
        }
    }
    @IBAction func confirmButtonTouchUpInside(_ sender: UIButton) {

        
    }
    @IBAction func settingButtonTapped(_ sender: UIBarButtonItem) {
        if Constants.isLogin {
            performSegue(withIdentifier: "settingButtonSegue", sender: nil)
        } else {
            // 로그인 해주세요
        }
    }
    func buttonSetting() {
        if DistanceManager.shared.distances.count > 1 {
            confirmButton.isEnabled = true
            confirmButton.backgroundColor = .systemIndigo
        } else {
            confirmButton.isEnabled = false
            confirmButton.backgroundColor = .gray
        }
    }
    
}
