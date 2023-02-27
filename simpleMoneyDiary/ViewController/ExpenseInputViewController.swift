//
//  ExpenseInputViewController.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/02/23.
//

import UIKit

class ExpenseInputViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    // MARK: プロパティ
    @IBOutlet weak var tableView: UITableView!
    
    var moneyText = "¥0"
    var categoryText = "未入力"
    var categoryImage = UIImage(systemName: "tag")
    var dateImage = UIImage(systemName: "calendar.circle")
    var memoImage = UIImage(systemName: "note")
    
    
    // MARK: ライフサイクル
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
//        tableView.register(MoneyTableViewCell.self, forCellReuseIdentifier: "moneyTableViewCell")
//        tableView.register(CategoryTableViewCell.self, forCellReuseIdentifier: "categoryTableViewCell")
//        tableView.register(DateTableViewCell.self, forCellReuseIdentifier: "dateTableViewCell")
//        tableView.register(MemoTableViewCell.self, forCellReuseIdentifier: "memoTableViewCell")
    }
    
    
    // MARK: メソッド
    
    // MARK: tableView関連
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "moneyTableViewCell", for: indexPath) as? MoneyTableViewCell else { return UITableViewCell() }
            cell.moneyLabel?.text = self.moneyText
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "categoryTableViewCell", for: indexPath) as? CategoryTableViewCell else { return UITableViewCell() }
            cell.categoryImageView?.image = self.categoryImage
            cell.categoryTextField?.text = self.categoryText
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dateTableViewCell", for: indexPath) as? DateTableViewCell else { return UITableViewCell() }
            cell.dateImageView?.image = self.dateImage
            return cell
        default:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "memoTableViewCell", for: indexPath) as? MemoTableViewCell else { return UITableViewCell() }
            cell.memoImageView?.image = memoImage
            return cell
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        if indexPath.row == 0 {
            // 計算機のviewをキーボードみたいに下から表示する
            // 計算機で入力した値とラベルで表示してる金額を紐づける
        } else if indexPath.row == 1 {
            // カテゴリ一覧のviewを表示
            // 選択したカテゴリのimageとカテゴリ名をcellに表示
        } else if indexPath.row == 2 {
            // datePickerで日付を表示
            // 初期値は当日の日付
        } else {
           // メモ用のキーボード表示
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
