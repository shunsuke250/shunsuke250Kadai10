//
//  PrefectureTableViewCell.swift
//  PrefectureList23-09-28
//
//  Created by 副山俊輔 on 2023/09/28.
//

import UIKit

class PrefectureTableViewCell: UITableViewCell {
    @IBOutlet private weak var prefectureLabel: UILabel!
    @IBOutlet private weak var indexDescriptionLabel: UILabel!

    func configure(name: String, row: Int) {
        prefectureLabel.text = name
        indexDescriptionLabel.text = "\(row + 1)番目の都道府県です"

        let colorNames = ["lightRed", "lightGreen", "lightBlue"]
        backgroundColor = UIColor(named: colorNames[row % colorNames.count])
    }
}
