//
//  FirstViewController.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/17.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    let SCREEN_W =  UIScreen.main.bounds.width
    let SCREEN_H =  UIScreen.main.bounds.height

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        let nagationView = CustomNagationView.init(frame: CGRect.init(x: 0, y:0, width: SCREEN_W, height:60))
        nagationView.centerLable.text = "个人中心"
        
        self.view.addSubview(nagationView)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
