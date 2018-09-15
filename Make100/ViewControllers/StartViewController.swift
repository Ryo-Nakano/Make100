//
//  StartViewController.swift
//  Make100
//
//  Created by Ryohei Nanano on 2018/09/13.
//  Copyright © 2018年 GeekSalon. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    let storyboardID: String = "GameViewController"
    
    @IBOutlet weak var userNameButton: UIButton!
    @IBOutlet weak var rankingButton: UIButton!
    @IBOutlet var button: UIButton!//StartButtonを宣言

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonCustomize(button: button)//startButtonをちょっとおしゃれにする
    }
    
    //Buttonをちょっとおしゃれにする為の関数
    func buttonCustomize(button : UIButton)//引数にUIButton型の変数buttonとる
    {
        button.layer.borderWidth = 0.5// 枠線の幅
        button.layer.borderColor = UIColor.black.cgColor// 枠線の色
        button.layer.cornerRadius = 5.0//角丸
    }
    
    //StartButtonが押された時に呼ばれる関数
    @IBAction func StartButton()
    {
//        print("Pushed StartButton")
        //画面遷移のコード
        let storyboard = UIStoryboard(name: "Game", bundle: Bundle.main)//①先ずは遷移先のStoryboardを取ってくる
        let gameViewController = storyboard.instantiateViewController(withIdentifier: storyboardID)//②画面遷移先のViewControllerを取ってくる！
        navigationController?.pushViewController(gameViewController, animated: true)//取って来たViewControllerにpushで画面遷移！
    }
    
    //RankingButtonが押された時に呼ばれる関数
    @IBAction func RankingButton()
    {
        print("Pushed RankingButton")
    }
    
    //UserNameButtonが押された時に呼ばれる関数
    @IBAction func UserNameBiutton()
    {
//        print("Pushed UserNameButton")
    }
    
    //UIColor→UIImageへ変換する関数
    private func createImageFromUIColor(color: UIColor) -> UIImage {
        // 1x1のbitmapを作成
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        // bitmapを塗りつぶし
        context!.setFillColor(color.cgColor)
        context!.fill(rect)
        // UIImageに変換
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }

}
