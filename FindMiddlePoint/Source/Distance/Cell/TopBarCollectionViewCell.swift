//
//  TopBarCollectionViewCell.swift
//  FindMiddlePoint
//
//  Created by 김민석 on 2022/05/10.
//

import UIKit

class TopBarCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var boarderVIew: UIView!
    func updateUI(title: String, isSelected: Bool) {
        label.text = title
        boarderVIew.backgroundColor = isSelected ? UIColor(hex: 0x444444) : .clear
    }
}
