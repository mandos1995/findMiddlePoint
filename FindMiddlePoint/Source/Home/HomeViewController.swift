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
    var distanceList: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        transparentNavigationbar()
    }
    @IBAction func addDistanceButtonTouchUpInside(_ sender: UIButton) {
        presentDistanceInputPopUp { text in
            self.distanceList.append(text)
        }
    }
    @IBAction func settingButtonTapped(_ sender: UIBarButtonItem) {
        if Constants.isLogin {
            performSegue(withIdentifier: "settingButtonSegue", sender: nil)
        } else {
            // 로그인 해주세요
        }
    }
    
}
