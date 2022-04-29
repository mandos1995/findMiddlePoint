//
//  BasePopUpViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/29.
//

import UIKit

class BasePopUpViewController: UIViewController {
    let delegate: BasePopUpDelegate?
    
    init(nibName: String, delegate: BasePopUpDelegate?) {
        self.delegate = delegate
        super.init(nibName: nibName, bundle: nil)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        delegate?.fadeIn()
    }
}
