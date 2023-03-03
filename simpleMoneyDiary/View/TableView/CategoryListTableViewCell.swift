//
//  CategoryListTableViewCell.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/03/03.
//

import UIKit
import RxSwift

class CategoryListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
