//
//  ExpenseViewModel.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/03/08.
//

import Foundation
import RealmSwift

class ExpenseViewModel {
    
    let model = ExpenseModel()
    
    func fetchAllData() -> [Expense] {
        var expenseList: [Expense] = []
        let results = model.getAllWExpenseData()
        for result in results {
            let expense = Expense()
            expense.money = result.money
            expense.category = result.category
            expense.date = result.date
            expense.memo = result.memo
            expenseList.append(expense)
        }
        return expenseList
    }
    
    func fetchTheDayData(date: String) -> [Expense] {
        var expenseList: [Expense] = []
        let results = model.getTheDayData(date: date)
        for result in results {
            let expense = Expense()
            expense.money = result.money
            expense.category = result.category
            expense.date = result.date
            expense.memo = result.memo
            expenseList.append(expense)
        }
        return expenseList
    }
    
    // viewで入力した値をFoodList型の変数にまとめて、FoodListModelでrealmに保存する
    func addData(money: Int, category: String, date: String, memo: String){
        let expense = Expense()
        expense.money = money
        expense.category = category
        expense.date = date
        expense.memo = memo
        model.addData(expense: expense)
    }
}
