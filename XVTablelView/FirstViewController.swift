//
//  FirstViewController.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/17.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        let view0 = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 200, height: 200))
        view0.backgroundColor = UIColor.black
        view0.layer.masksToBounds = true
        view0.center = self.view.center
        view0.layer.cornerRadius = 5
        self.view.addSubview(view0)
        
        let view1 = UIView.init(frame: CGRect.init(x:view0.frame.origin.x + 50, y: view0.frame.origin.y - 10, width: 50, height: 50))
        view1.backgroundColor = UIColor.yellow
        view1.layer.masksToBounds = true
        view1.layer.cornerRadius = 5
//        view0.addSubview(view1)
        self.view.insertSubview(view1, aboveSubview: view0)
        HomeApi().homeData { (result) in
            print(result)
        }
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
