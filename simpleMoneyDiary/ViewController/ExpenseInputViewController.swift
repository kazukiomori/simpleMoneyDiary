//
//  ExpenseInputViewController.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/02/23.
//

import UIKit

class ExpenseInputViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    // MARK: ライフサイクル
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: tableView関連
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
