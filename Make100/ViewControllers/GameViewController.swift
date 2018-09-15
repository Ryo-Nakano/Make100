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
        
        let firstCalcNum: Int = generateRandomNumber(min: 0, max: 40, delta: 20)//初期値として-20から20の整数取得
        let firseResultNum: Int = generateRandomNumber(min: 0, max: 20, delta: 10)//初期値として-10から10の整数取得
        calcLabel.text = String(firstCalcNum)
        resultLabel.text = String(firseResultNum)
        

    }

    
    ///===============各Buttonのアクション===============
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
    
    @IBAction func SkipButton()
    {
        print("Pushed SkipButton")
        calcLabel.text = String(generateRandomNumber(min: 0, max: 40, delta: 20))//計算と同時に次の数字をランダム表示
    }
    
    
    ///===============その他メソッド===============
    //乱数を発生させて、Int型で返してくれるメソッド(deltaで数字の調整できる)
    func generateRandomNumber(min: UInt32, max: UInt32, delta: Int) -> Int {
        return Int(arc4random_uniform(UInt32(max - min + 1)) + min) - delta
    }
    
}
