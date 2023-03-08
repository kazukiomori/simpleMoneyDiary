//
//  ExpenseModel.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/03/08.
//

import RealmSwift

class ExpenseModel {
    
    func addData(expense: Expense) {
        let realm = try! Realm()
        try! realm.write{
            realm.add(expense)
        }
    }
    
    func getAllWExpenseData() -> Results<Expense> {
//        let config = RealmSwift.Realm.Configuration(schemaVersion: 1)
//        Realm.Configuration.defaultConfiguration = config
        let realm = try! Realm()
        var results: Results<Expense>
        results = realm.objects(Expense.self)
        return results
    }
    
    func getTheDayData(date: String) -> Results<Expense> {
        let realm = try! Realm()
        var results: Results<Expense>
        results = realm.objects(Expense.self).where{($0.date == date)}
        return results
    }
}
