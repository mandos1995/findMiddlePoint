//
//  SettingViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/29.
//

import UIKit
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

class SettingViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func logoutButtonTouchUpInside(_ sender: UIButton) {
        UserApi.shared.logout {(error) in
            if let error = error {
                print(error)
            }
            else {
                // 로그아웃 성공시
                print("logout() success.")
                Constants.isLogin = false
                let storyBoard = UIStoryboard(name: "Login", bundle: nil)
                let loginVC = storyBoard.instantiateViewController(withIdentifier: "LoginNavigationController")
                if let window = UIApplication.shared.windows.first {
                    window.rootViewController = loginVC
                    UIView.transition(with: window, duration: 0.5, options: .transitionCrossDissolve, animations: nil)
                }
            }
        }
    }
}
