//
//  FiveController.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/17.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class FiveController: BaseViewController,CustomSegmentDelegate{
    
    let userBackView = UserMessageView()
    
    let myTb = MyTBViewController()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = RGB.BackGroundColor()
        self.createInterFace()
        
    }
    
    
    
    func createInterFace() {
        segmentControl.backgroundColor = RGB.MainColor()//        nagationView.centerLable.text = "新闻"
        segmentControl.delegate = self
        segmentControl.isBackImage = true
        segmentControl.createButtons(title: ["user_edit_image","user_seting_image"], controller: self)
        userBackView.frame = CGRect.init(x: 0, y:64, width:self.view.frame.width, height: SCREEN_H/3 - 70)
        userBackView.createUserMessage(userHead: "user_headDefault_image", userName: "阿花花酱", userSex: "user_female_image")
        self.view.addSubview(userBackView)
        let cellView = UserCellView.init(frame: CGRect.init(x: 0, y: userBackView.frame.origin.y+userBackView.frame.size.height, width: SCREEN_W, height: 45))
        cellView.createCell(imageName: "user_myActive_image", cellName: "我的动态")
        let cellView1 = UserCellView.init(frame: CGRect.init(x: 0, y: cellView.frame.origin.y+cellView.frame.size.height + 10, width: SCREEN_W, height: 45))
        cellView1.createCell(imageName: "user_myFoucs_image", cellName: "关注的人")
        
        let cellView2 = UserCellView.init(frame: CGRect.init(x: 0, y: cellView1.frame.origin.y+cellView1.frame.size.height, width: SCREEN_W, height: 45))
        cellView2.createCell(imageName: "user_myFans_image", cellName: "我的粉丝")
        
        self.view.addSubview(cellView)
        self.view.addSubview(cellView1)
        self.view.addSubview(cellView2)
        
        let tap  = UITapGestureRecognizer.init(target: self, action: #selector(self.click))
        cellView.addGestureRecognizer(tap)
        let tap1  = UITapGestureRecognizer.init(target: self, action: #selector(self.click1))
        cellView1.addGestureRecognizer(tap1)
        
        let tap2  = UITapGestureRecognizer.init(target: self, action: #selector(self.click2))
        cellView2.addGestureRecognizer(tap2)
    }
    func click() {
        print("我的动态")
    }
    
    func click1() {
        print("关注的人")
        
    }
    
    func click2() {
        print("我的粉丝")
        
    }
    
    func NavLeftBtnClick() {
        self.navigationController?.pushViewController(EditViewController(), animated: true)
        
    }
    
    func NavRightBtnClick() {
        self.navigationController?.pushViewController(SetingViewController(), animated: true)

        
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
