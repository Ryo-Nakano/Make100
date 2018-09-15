//
//  GameViewController.swift
//  Make100
//
//  Created by Ryohei Nanano on 2018/09/13.
//  Copyright © 2018年 GeekSalon. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!//結果のLabel
    @IBOutlet weak var calcLabel: UILabel!//加減乗するLabel
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstNum: Int = generateRandomNumber(min: 0, max: 40, delta: 20)//初期値として-20から20の整数取得
        calcLabel.text = String(firstNum)
        

    }

    //『+』ボタン押した時のアクション
    @IBAction func PlusButton() {
        print("Pushed PlusButton")
        let calNum =  Int(calcLabel.text!)
        var resultNum = Int(resultLabel.text!)
        resultNum = resultNum! + calNum!//計算
        resultLabel.text = String(resultNum!)//計算結果をreslutLabelに反映
        
        calcLabel.text = String(generateRandomNumber(min: 0, max: 40, delta: 20))//計算と同時に次の数字をランダム表示
    }
    
    //『-』ボタン押した時のアクション
    @IBAction func MinusButton() {
        print("Pushed MinusButton")
        let calNum =  Int(calcLabel.text!)
        var resultNum = Int(resultLabel.text!)
        resultNum = resultNum! - calNum!//計算
        resultLabel.text = String(resultNum!)//計算結果をreslutLabelに反映
        
        calcLabel.text = String(generateRandomNumber(min: 0, max: 40, delta: 20))//計算と同時に次の数字をランダム表示
    }
    
    //『×』ボタン押した時のアクション
    @IBAction func MultipleButton() {
        print("Pushed MultipleButton")
        let calNum =  Int(calcLabel.text!)
        var resultNum = Int(resultLabel.text!)
        resultNum = resultNum! * calNum!//計算
        resultLabel.text = String(resultNum!)//計算結果をreslutLabelに反映
        
        calcLabel.text = String(generateRandomNumber(min: 0, max: 40, delta: 20))//計算と同時に次の数字をランダム表示
    }
    
    //乱数を発生させて、Int型で返してくれるメソッド(deltaで数字の調整できる)
    func generateRandomNumber(min: UInt32, max: UInt32, delta: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max - min + 1)) + min) - delta
    }
    
    // MARK: カスタムボタンの定義
    @IBDesignable
    class CustomButton: UIButton {
        
        // 角丸の半径(0で四角形)
        @IBInspectable var cornerRadius: CGFloat = 0.0
        
        // 枠
        @IBInspectable var borderColor: UIColor = UIColor.clear
        @IBInspectable var borderWidth: CGFloat = 0.0
        
        // バックグラウンドカラー
        @IBInspectable var nonHighlightedBackgroundColor :UIColor?
        @IBInspectable var highlightedBackgroundColor :UIColor?
        
        override func draw(_ rect: CGRect) {
            // 角丸
            self.layer.cornerRadius = cornerRadius
            self.clipsToBounds = (cornerRadius > 0)
            
            // 枠線
            self.layer.borderColor = borderColor.cgColor
            self.layer.borderWidth = borderWidth
            
            super.draw(rect)
        }
        
        // バックグラウンドカラー
        override var isHighlighted :Bool {
            didSet {
                if isHighlighted {
                    self.backgroundColor = highlightedBackgroundColor
                }
                else {
                    self.backgroundColor = nonHighlightedBackgroundColor
                }
            }
        }
    }
    
    // MARK: カスタムラベルの定義
    @IBDesignable class CustomLabel: UILabel {
        
        // 角丸の半径(0で四角形)
        @IBInspectable var cornerRadius: CGFloat = 0.0
        
        // 枠
        @IBInspectable var borderColor: UIColor = UIColor.clear
        @IBInspectable var borderWidth: CGFloat = 0.0
        
        override func draw(_ rect: CGRect) {
            // 角丸
            self.layer.cornerRadius = cornerRadius
            self.clipsToBounds = (cornerRadius > 0)
            
            // 枠線
            self.layer.borderColor = borderColor.cgColor
            self.layer.borderWidth = borderWidth
            
            super.draw(rect)
        }
    }
    
    // MARK: カスタムテキストビューの定義
    @IBDesignable class CustomTextView: UITextView {
        
        // 角丸の半径(0で四角形)
        @IBInspectable var cornerRadius: CGFloat = 0.0
        
        // 枠
        @IBInspectable var borderColor: UIColor = UIColor.clear
        @IBInspectable var borderWidth: CGFloat = 0.0
        
        override func draw(_ rect: CGRect) {
            // 角丸
            self.layer.cornerRadius = cornerRadius
            self.clipsToBounds = (cornerRadius > 0)
            
            // 枠線
            self.layer.borderColor = borderColor.cgColor
            self.layer.borderWidth = borderWidth
            
            super.draw(rect)
        }
    }

    
}
