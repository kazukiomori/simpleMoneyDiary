//
//  Expense.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/03/03.
//

import UIKit
import RealmSwift

@objcMembers
class Expense: Object {
    @objc dynamic var money: Int = 0
    @objc dynamic var category: String = ""
    @objc dynamic var date: String = ""
    @objc dynamic var memo: String = ""
}
