//
//  MemoTableViewCell.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/02/25.
//

import UIKit

class MemoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var memoImageView: UIImageView!
    @IBOutlet weak var memoTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
