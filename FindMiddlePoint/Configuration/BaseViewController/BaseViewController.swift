//
//  BaseViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/28.
//

import UIKit
import SnapKit

class BaseViewController: UIViewController, BasePopUpDelegate {
    
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
    
    func presentDistanceInputPopUp(completion: @escaping ((String) -> Void)) {
        let popUpViewController = DistanceInputPopUpViewController(delegate: self, completion: completion)
        popUpViewController.modalPresentationStyle = .overFullScreen
        present(popUpViewController, animated: false)
    }
    
    func fadeIn() {
        view.addSubview(darkView)
        navigationController?.navigationBar.addSubview(darkView)
        navigationController?.view.addSubview(darkView)
        tabBarController?.view.addSubview(darkView)
        darkView.snp.makeConstraints { $0.edges.equalToSuperview() }
        
        UIView.animateKeyframes(
            withDuration: 0.2,
            delay: 0,
            options: .calculationModeLinear,
            animations: { self.darkView.alpha = 0.3 },
            completion: nil
        )
    }
    
    func fadeOut() {
        UIView.animateKeyframes(
            withDuration: 0.3,
            delay: 0,
            options: .calculationModeLinear,
            animations: { self.darkView.alpha = 0 },
            completion: { _ in self.darkView.removeFromSuperview() }
        )
    }
    

}
