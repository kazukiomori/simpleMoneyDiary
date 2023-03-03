//
//  CategoryListViewController.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/03/01.
//

import UIKit

class CategoryListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryListTableViewCell", for: indexPath) as? CategoryListTableViewCell else { return UITableViewCell() }
        switch indexPath.row {
        case 0:
            cell.categoryLabel?.text = "食費"
            cell.categoryImageView.image = UIImage(systemName: <#T##String#>)
        default:
            break
        }
        
        return cell
    }
    
   
}
