//
//  SetingViewController.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/25.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class SetingViewController: BaseViewController,CustomSegmentDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        segmentControl.delegate = self
        segmentControl.createBack()
        
        segmentControl.createTitleView(title: "设置")
        // Do any additional setup after loading the view.
    }
    
    func NavLeftBtnClick() {
        self.navigationController?.popViewController(animated: true)

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
