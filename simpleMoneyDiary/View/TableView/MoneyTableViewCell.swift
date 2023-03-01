//
//  MoneyTableViewCell.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/02/25.
//

import UIKit
import RxSwift

class MoneyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var moneyTextField: UITextField!
    
    var disposeBag = DisposeBag()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.disposeBag = DisposeBag()
    }
}
