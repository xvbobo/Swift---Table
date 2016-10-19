//
//  UserMessageView.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/18.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class UserMessageView: UIView {

    override init(frame:CGRect){
        super.init(frame: frame)
    }
    func createUserMessage(userHead:String,userName:String,userSex:String) {
        let imageViewBack = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        imageViewBack.image = UIImage.init(named: "user_back_image")
        self.addSubview(imageViewBack)
        let userHeadImage = UIImageView.init(frame: CGRect.init(x: (self.frame.width - 60)/2, y: (self.frame.height - 60)/2 - 30, width: 60, height: 60))
        userHeadImage.layer.masksToBounds = true
        userHeadImage.image = UIImage.init(named: userHead)
        userHeadImage.layer.cornerRadius = 30
        imageViewBack.addSubview(userHeadImage)
        
        let userNameLabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 70, height: 15))
        userNameLabel.center = CGPoint.init(x: userHeadImage.center.x, y: userHeadImage.center.y + userHeadImage.frame.height/2 + 15 + 7.5)
        userNameLabel.text = userName
        userNameLabel.textColor = UIColor.white
        imageViewBack.addSubview(userNameLabel)
        
        let sexImage = UIImageView.init(frame: CGRect.init(x: userNameLabel.frame.origin.x + userNameLabel.frame.width+5 , y: userNameLabel.frame.origin.y, width: 15, height: 15))
        sexImage.image = UIImage.init(named: userSex)
        imageViewBack.addSubview(sexImage)
        
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
