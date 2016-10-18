//
//  ViewController.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/17.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let SCREEN_W =  UIScreen.main.bounds.width
    let SCREEN_H =  UIScreen.main.bounds.height

    let controllerS = [FirstViewController(),SecondController(),ThirdController(),FourController(),FiveController()] as [UIViewController]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = RGB.RGBColor(r: 255, g: 252, b: 236, a: 1)     // Do any additional setup after loading the view, typically from a nib.
        let TBController = CustomTB()
        TBController.frame = CGRect.init(x: 0, y: SCREEN_H - 49, width: SCREEN_W, height: 49)
        TBController.addControllers(controllers: controllerS , imageArray: ["个人","圈子","赛事","协会","新闻"], titlesArray: ["个人","圈子","赛事","协会","新闻"],fatherView:self.view)
        TBController.defaultController(number: 0)
        self.view.addSubview(TBController)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

