//
//  ViewController.swift
//  simpleMoneyDiary
//
//  Created by Kazuki Omori on 2023/02/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeView: UIView!
    // MARK: ライフサイクル
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "ホーム"
        setBackGroundColor(firstColor: UIColor.red.cgColor, secondColor: UIColor.blue.cgColor)
    }
    
    func setBackGroundColor(firstColor: CGColor, secondColor: CGColor) {
        // グラデーションレイヤーを作成
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [firstColor, secondColor] // グラデーションの開始色と終了色を設定
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.frame = homeView.bounds // View全体にグラデーションを設定する
        
        // グラデーションレイヤーをViewの背景色として設定
        self.homeView.layer.insertSublayer(gradientLayer, at: 0)
    }


}

