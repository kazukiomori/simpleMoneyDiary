//
//  MoneyTableViewCell.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/02/25.
//

import UIKit

class MoneyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var moneyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
