//
//  UINavigationCustomController.swift
//  Make100
//
//  Created by Ryohei Nanano on 2018/09/15.
//  Copyright © 2018年 GeekSalon. All rights reserved.
//

import UIKit

class UINavigationCustomController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        //もともとのアニメーションを削除
        self.view.layer.removeAllAnimations()
        if(animated){
            //新しいアニメーションをつける
            let transition:CATransition = CATransition()
            transition.duration = 0.25
            transition.type = kCATransitionMoveIn
            transition.subtype = kCATransitionFromTop
            self.view.layer.add(transition,forKey:kCATransition)
        }
        return super.pushViewController(viewController, animated: false)
    }

}
