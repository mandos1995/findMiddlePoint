//
//  HomeViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/27.
//

import UIKit

class HomeViewController: BaseViewController {
    @IBOutlet weak var tableView: UITableView!
    var distanceList: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        transparentNavigationbar()
    }
    
}
