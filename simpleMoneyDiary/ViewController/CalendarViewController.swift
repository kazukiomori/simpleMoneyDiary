//
//  CalendarViewController.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/02/23.
//

import UIKit
import FSCalendar
import CalculateCalendarLogic

class CalendarViewController: UIViewController, FSCalendarDelegate, FSCalendarDataSource, FSCalendarDelegateAppearance {
    @IBOutlet weak var calendar: FSCalendar!
    
    // MARK: ライフサイクル
    override func viewDidLoad() {
        super.viewDidLoad()
        calendar.delegate = self
        calendar.dataSource = self
    }
}
