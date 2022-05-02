//
//  DistanceInputPopUpViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/28.
//

import UIKit

class DistanceInputPopUpViewController: BasePopUpViewController {
    @IBOutlet weak var popUpView: UIView! {
        didSet {
            popUpView.layer.cornerRadius = 8
        }
    }
    @IBOutlet weak var addressView: UIView! {
        didSet {
            addressView.layer.cornerRadius = 8
            addressView.layer.borderColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0).cgColor
            addressView.layer.borderWidth = 1
        }
    }
    @IBOutlet weak var nameView: UIView! {
        didSet {
            nameView.layer.cornerRadius = 8
            nameView.layer.borderColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1.0).cgColor
            nameView.layer.borderWidth = 1
        }
    }
    @IBOutlet weak var confirmButton: UIButton! {
        didSet {
            confirmButton.layer.cornerRadius = 8
        }
    }
    init(delegate: BasePopUpDelegate, completion: @escaping ((String, String) -> Void)) {
        self.completion = completion
        nameText = ""
        addressText = ""
        super.init(nibName: "DistanceInputPopUpViewController", delegate: delegate)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(addressWrite(_:)), name: Notification.Name("addressInput"), object: nil)
    }
    private let completion: ((String, String) -> Void)
    var nameText: String
    var addressText: String
    @IBOutlet weak var addressLabel: UILabel! {
        didSet {
            addressLabel.text = addressText
        }
    }
    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            nameTextField.delegate = self
            nameTextField.text = nameText
        }
    }
    @IBAction func searchButtonTouchUpInside(_ sender: UIButton) {
        let webVC = AddressWebViewController()
        webVC.modalPresentationStyle = .overFullScreen
        present(webVC, animated: true)
    }
    
    @IBAction func confirmButtonTouchUpInside(_ sender: UIButton) {
        if let text = nameTextField.text {
            dismiss(animated: false) {
                self.completion(text, self.addressText)
                self.delegate?.fadeOut()
            }
        }
    }
    @objc func addressWrite(_ notification: Notification) {
        if let address = notification.object as? String {
            addressText = address
            addressLabel.text = addressText
        }
    }
}
extension DistanceInputPopUpViewController: UITextFieldDelegate {
    
}
