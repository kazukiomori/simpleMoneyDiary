//
//  CategoryListViewController.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/03/01.
//

import UIKit

class CategoryListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UINavigationControllerDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var label = ""
    var image = UIImage(systemName: "fork.knife.circle")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 14
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryListTableViewCell", for: indexPath) as? CategoryListTableViewCell else { return UITableViewCell() }
        switch indexPath.row {
        case 0:
            cell.categoryLabel?.text = "食費"
            cell.categoryImageView.image = UIImage(systemName: "fork.knife.circle")
        case 1:
            cell.categoryLabel?.text = "日用品"
            cell.categoryImageView.image = UIImage(systemName: "sofa")
        case 2:
            cell.categoryLabel?.text = "衣服"
            cell.categoryImageView.image = UIImage(systemName: "tshirt")
        case 3:
            cell.categoryLabel?.text = "美容"
            cell.categoryImageView.image = UIImage(systemName: "comb")
        case 4:
            cell.categoryLabel?.text = "交際費"
            cell.categoryImageView.image = UIImage(systemName: "wineglass")
        case 5:
            cell.categoryLabel?.text = "医療費"
            cell.categoryImageView.image = UIImage(systemName: "pills")
        case 6:
            cell.categoryLabel?.text = "教育費"
            cell.categoryImageView.image = UIImage(systemName: "book")
        case 7:
            cell.categoryLabel?.text = "光熱費"
            cell.categoryImageView.image = UIImage(systemName: "lamp.ceiling")
        case 8:
            cell.categoryLabel?.text = "交通費"
            cell.categoryImageView.image = UIImage(systemName: "bus")
        case 9:
            cell.categoryLabel?.text = "通信費"
            cell.categoryImageView.image = UIImage(systemName: "iphone.smartbatterycase.gen2")
        case 10:
            cell.categoryLabel?.text = "住宅"
            cell.categoryImageView.image = UIImage(systemName: "house.circle")
        case 11:
            cell.categoryLabel?.text = "趣味"
            cell.categoryImageView.image = UIImage(systemName: "gamecontroller")
        case 12:
            cell.categoryLabel?.text = "カード"
            cell.categoryImageView.image = UIImage(systemName: "creditcard.circle")
        case 13:
            cell.categoryLabel?.text = "その他"
            cell.categoryImageView.image = UIImage(systemName: "questionmark.circle")
        default:
            break
        }
        label = cell.categoryLabel.text!
        image = cell.categoryImageView.image
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        if let controller = navigationController?.viewControllers.first as? ExpenseInputViewController {
            controller.categoryText = label
            controller.categoryImage = image
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
