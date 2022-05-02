//
//  HomeDistanceCell.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/04/28.
//

import UIKit

class HomeDistanceCell: UITableViewCell {
    @IBOutlet weak var view: UIView! {
        didSet {
            view.layer.cornerRadius = 8
            view.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0).cgColor
            view.layer.borderWidth = 1.0
        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUI(name: String, address: String) {
        nameLabel.text = name
        addressLabel.text = address
    }

}
