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
    var moneyTableViewCell: MoneyTableViewCell!
    var categoryTableViewCell: CategoryTableViewCell!
    var dateTableViewCell: DateTableViewCell!
    var memoTableViewCell: MemoTableViewCell!
    
    var moneyText = "¥0"
    var categoryText = "未入力"
    var categoryImage = UIImage(systemName: "tag")
    var dateImage = UIImage(systemName: "calendar.circle")
    var memoImage = UIImage(systemName: "note")
    var datePicker: UIDatePicker = UIDatePicker()
    var textField: UITextField!
    
    
    // MARK: ライフサイクル
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        datePickerSet()
        navigationItemSet()
    }
    
    
    // MARK: メソッド
    
    func navigationItemSet() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        var addBarButtonItem = UIBarButtonItem(title: "保存", style: .done, target: self, action: #selector(addButtonTapped))
        addBarButtonItem.tintColor = .black
        self.navigationItem.rightBarButtonItems = [addBarButtonItem]
        navigationItem.title = "入力"
    }
    
    func datePickerSet() {
        datePicker.datePickerMode = .date
        datePicker.timeZone = NSTimeZone.local
        datePicker.locale = Locale.current
        datePicker.maximumDate = Date()
        
        if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        }
        datePicker.addTarget(self, action: #selector(changeDatePicker), for: .valueChanged)
    }
    
    func createToolBar () -> UIToolbar {
        let dateToolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 40))
        let spacerItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let dateDoneItem = UIBarButtonItem(title: "決定", style: .done, target: self, action: #selector(dateSelect))
        dateToolBar.setItems([spacerItem, dateDoneItem], animated: true)
        
        return dateToolBar
    }
    
    @objc func addButtonTapped() {
        
    }
    
    @objc func changeDatePicker(sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        textField.text = "\(formatter.string(from: sender.date))"
        textField.sendActions(for: .valueChanged)
    }
    
    @objc func dateSelect() {
        textField.endEditing(true)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年MM月dd日"
        textField.text = "\(formatter.string(from: datePicker.date))"
    }
    
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
            cell.categoryButton?.setTitle(self.categoryText, for: .normal)
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "dateTableViewCell", for: indexPath) as? DateTableViewCell else { return UITableViewCell() }
            cell.dateImageView?.image = self.dateImage
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy年MM月dd日"
            cell.dateTextField?.text = "\(formatter.string(from: Date()))"
            cell.dateTextField?.inputView = datePicker
            cell.dateTextField?.inputAccessoryView = createToolBar()
            textField = cell.dateTextField
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
