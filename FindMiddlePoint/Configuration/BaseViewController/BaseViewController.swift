//
//  BaseViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/28.
//

import UIKit

class BaseViewController: UIViewController {
    
    // Fade in/out 사용을 위한 뷰
    let darkView: UIView = {
        let darkView = UIView()
        darkView.backgroundColor = .black
        darkView.alpha = 0
        return darkView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 네비게이션 바 투명
    func transparentNavigationbar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }


}
