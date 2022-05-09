//
//  DistanceInfoCell.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/09.
//

import UIKit

class DistanceInfoCell: UITableViewCell {

    @IBOutlet weak var view: UIView! {
        didSet {
            view.layer.cornerRadius = 8
            view.layer.borderColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0).cgColor
            view.layer.borderWidth = 1.0
        }
    }
    @IBOutlet weak var headLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
