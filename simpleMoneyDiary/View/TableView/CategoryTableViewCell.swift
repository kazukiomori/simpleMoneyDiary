//
//  CategoryTableViewCell.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/02/25.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
