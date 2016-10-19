//
//  CustomSegmentControl.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/18.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit
protocol CustomSegmentDelegate {
    func NavLeftBtnClick()
    func NavRightBtnClick()
}

class CustomSegmentControl: UIView {
    
    var delegate : CustomSegmentDelegate?
    var  controller0 = UIViewController()
    override init (frame:CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.black
    }

    func createMySegMentController(titlesArray:[String],controller:UIViewController) {
        controller0 = controller
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
        rightButton.frame = CGRect.init(x: self.frame.width - 25 - 25, y: 35, width: 25, height: 25)
        rightButton.setImage(UIImage.init(named: title[1]), for: .normal)
        rightButton.addTarget(self, action: #selector(CustomSegmentControl.rightbtnClick), for: .touchUpInside)
        self.addSubview(rightButton)
 
    }
    
    func leftbtnClick() {
//        if ((delegate?.NavLeftBtnClick()) != nil) {
            delegate?.NavLeftBtnClick()
//        }
    }
    
    func rightbtnClick() {
//        if ((delegate?.NavRightBtnClick()) != nil) {
            delegate?.NavRightBtnClick()
//        }
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
