//
//  ResultViewController.swift
//  Make100
//
//  Created by Ryohei Nanano on 2018/09/15.
//  Copyright © 2018年 GeekSalon. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    let storyboardID: String = "StartViewController"

    @IBOutlet weak var reMakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ButtonCustomize(button: reMakeButton)
    }
    
    
    //Buttonをちょっとおしゃれにする為の関数
    func ButtonCustomize(button : UIButton)//引数にUIButton型の変数buttonとる
    {
        button.layer.borderWidth = 0.5// 枠線の幅
        button.layer.borderColor = UIColor.black.cgColor// 枠線の色
        button.layer.cornerRadius = 5.0//角丸
    }
    
    @IBAction func ReMakeButton()
    {
        //画面遷移のコード
        let storyboard = UIStoryboard(name: "Start", bundle: Bundle.main)//①先ずは遷移先のStoryboardを取ってくる
        let startViewController = storyboard.instantiateViewController(withIdentifier: storyboardID)//②画面遷移先のViewControllerを取ってくる！
        navigationController?.pushViewController(startViewController, animated: true)//取って来たViewControllerにpushで画面遷移！
    }
}
