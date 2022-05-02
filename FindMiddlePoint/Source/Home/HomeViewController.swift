//
//  HomeViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/27.
//

import UIKit

class HomeViewController: BaseViewController {
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
            let user = User(name: name, address: address)
            self.distanceList.append(user)
            self.buttonSetting()
            self.tableView.reloadData()
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
        if distanceList.count > 1 {
            confirmButton.isEnabled = true
            confirmButton.backgroundColor = .systemIndigo
        } else {
            confirmButton.isEnabled = false
            confirmButton.backgroundColor = .gray
        }
    }
    
}
