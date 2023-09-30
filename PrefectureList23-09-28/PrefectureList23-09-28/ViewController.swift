//
//  ViewController.swift
//  PrefectureList23-09-28
//
//  Created by 副山俊輔 on 2023/09/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!

    let prefectures: [String] = [
        "北海道","青森県","岩手県","宮城県","秋田県","山形県","福島県",
        "茨城県","栃木県","群馬県","埼玉県","千葉県","東京都","神奈川県",
        "新潟県","富山県","石川県","福井県","山梨県","長野県","岐阜県",
        "静岡県","愛知県","三重県","滋賀県","京都府","大阪府","兵庫県",
        "奈良県","和歌山県","鳥取県","島根県","岡山県","広島県","山口県",
        "徳島県","香川県","愛媛県","高知県","福岡県","佐賀県","長崎県",
        "熊本県","大分県","宮崎県","鹿児島県","沖縄県"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "PrefectureTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefectures.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(
            withIdentifier: "cell",
            for: indexPath) as? PrefectureTableViewCell {
            cell.prefectureLabel.text = prefectures[indexPath.row]
            cell.indexDescriptionLabel.text = "\(indexPath.row)番目の都道府県です"
            if indexPath.row % 3 == 0 {
                cell.backgroundColor = UIColor(named: "lightRed")
            } else if indexPath.row % 3 == 1 {
                cell.backgroundColor = UIColor(named: "lightGreen")
            } else {
                cell.backgroundColor = UIColor(named: "lightBlue")
            }
            return cell
        }
        return UITableViewCell()
    }
}
