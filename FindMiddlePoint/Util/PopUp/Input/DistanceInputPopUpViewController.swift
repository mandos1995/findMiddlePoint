//
//  DistanceInputPopUpViewController.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/28.
//

import UIKit

class DistanceInputPopUpViewController: BasePopUpViewController {
    init(delegate: BasePopUpDelegate, completion: @escaping ((String) -> Void)) {
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
        
        // Do any additional setup after loading the view.
    }
    private let completion: ((String) -> Void)
    var nameText: String
    var addressText: String
    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            nameTextField.delegate = self
            nameTextField.text = nameText
        }
    }
    
    @IBAction func confirmButtonTouchUpInside(_ sender: UIButton) {
        if let text = nameTextField.text {
            dismiss(animated: false) {
                self.completion(text)
                self.delegate?.fadeOut()
            }
        }
        
    }
}
extension DistanceInputPopUpViewController: UITextFieldDelegate {
    
}
