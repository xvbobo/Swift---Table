//
//  CustomSegmentControl.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/18.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit
@objc protocol CustomSegmentDelegate {
    @objc optional func NavLeftBtnClick()
    @objc optional func NavRightBtnClick()
}

class CustomSegmentControl: UIView {
    
    var delegate : CustomSegmentDelegate?
    var  controller0 = UIViewController()
    var backImage  = UIImageView()
    var isBackImage : Bool?
    
    override init (frame:CGRect) {
        super.init(frame: frame)
        backImage.frame = self.bounds
        backImage.image = UIImage.init(named: "user_head_image")
        self.addSubview(backImage)
    }
    
    func createMySegMentController(titlesArray:[String]) {
        
        let view0 = UIView.init(frame: CGRect.init(x:0, y:19, width: self.frame.width, height:40))
        view0.layer.masksToBounds = true
        view0.layer.cornerRadius = 5;
        view0.layer.borderColor = UIColor.white.cgColor
        view0.layer.borderWidth = 1
        let width = self.frame.width/CGFloat(titlesArray.count)
        for i in 0...titlesArray.count-1 {
            let button = UIButton.init(type: .custom)
            button.frame = CGRect.init(x: CGFloat(i)*width, y:0, width: width, height: 40)
            button.setTitle(titlesArray[i], for: .normal)
            button.setTitleColor(UIColor.white, for: .normal)
            button.setTitleColor(UIColor.blue, for: .selected)
            
            button.tag = 100 + i
            button.layer.borderColor = UIColor.white.cgColor
            button.layer.borderWidth = 0.5
            button.addTarget(self, action: #selector(self.segmentControlClick(btn:)), for: .touchUpInside)
            view0.addSubview(button)
            
        }
        self.addSubview(view0)
    }
    
    func segmentControlClick(btn button:UIButton) {
        
        print(button.tag)
    }
    
    func createButtons(title:[String],controller:UIViewController) {
        let leftButton = UIButton.init(type: .custom)
        controller0 = controller
        leftButton.frame = CGRect.init(x: 25, y: 35, width: 25, height: 25)
        leftButton.setImage(UIImage.init(named: title[0]), for: .normal)
        leftButton.addTarget(self, action: #selector(CustomSegmentControl.leftbtnClick), for: .touchUpInside)
        self.addSubview(leftButton)
        
        let rightButton = UIButton.init(type: .custom)
        rightButton.frame = CGRect.init(x: self.frame.width - 25 - 25, y: leftButton.frame.origin.y, width: 25, height: 25)
        rightButton.setImage(UIImage.init(named: title[1]), for: .normal)
        rightButton.addTarget(self, action: #selector(CustomSegmentControl.rightbtnClick), for: .touchUpInside)
        self.addSubview(rightButton)
        if isBackImage == true {
            backImage.isHidden = true
        }
        
    }
    
    func createBack() {
        let leftButton = UIButton.init(type: .custom)
        leftButton.frame = CGRect.init(x: 10, y: 25, width: 25, height: 25)
        leftButton.setImage(UIImage.init(named: "back"), for: .normal)
        leftButton.addTarget(self, action: #selector(CustomSegmentControl.backclick), for: .touchUpInside)
        self.addSubview(leftButton)
        
    }
    func createTitleView (title:String) {
        let titleLabel = UILabel.init(frame: CGRect.init(x: 0, y:10, width: self.frame.width, height: self.frame.height - 10))
        titleLabel.textAlignment = .center
        titleLabel.text = title
        titleLabel.font = UIFont.boldSystemFont(ofSize: 17)
        titleLabel.textColor = UIColor.white
        self.addSubview(titleLabel)
    }
    func backclick()  {
        delegate?.NavLeftBtnClick!()
    }
    func leftbtnClick() {
        delegate?.NavLeftBtnClick!()
    }
    
    func rightbtnClick() {
        delegate?.NavRightBtnClick!()
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
