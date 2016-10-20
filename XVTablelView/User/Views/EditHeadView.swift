//
//  EditHeadView.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/20.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class EditHeadView: UIView {

    var buttonArray = [UIButton]()
    override init(frame:CGRect){
        super.init(frame: frame)
    }
    func createInterFace(headImage:UIImage) {
        
        let segment =   self.createMySegMentController(titlesArray: ["男","女","保密"])
        self.addSubview(segment)
        let headView = UIImageView.init(frame: CGRect.init(x: (self.frame.width - 100)/CGFloat(2), y: segment.frame.origin.y - 23 - 100, width: 100, height: 100))
        headView.image = headImage
        headView.layer.masksToBounds = true
        headView.layer.cornerRadius = 50
        self.addSubview(headView)
        
        let photoButton = UIButton.init(type: .custom)
        photoButton.frame = CGRect.init(x:headView.frame.origin.x + headView.frame.width - 30, y: headView.frame.origin.y + headView.frame.height - 30, width: 30, height: 30)
        photoButton.addTarget(self, action: #selector(self.photoClick), for: .touchUpInside)
        photoButton.setImage(UIImage.init(named: "user_photo_image"), for: .normal)
        self.insertSubview(photoButton, aboveSubview: headView)
        
        let lable = UILabel.init(frame: CGRect.init(x: 0, y: 20, width: self.frame.width, height: 15))
        lable.text = "我的头像"
        lable.font = UIFont.boldSystemFont(ofSize: 15)
        lable.textAlignment = .center
        lable.textColor = RGB.textColor()
        self.addSubview(lable)
    }
    func createMySegMentController(titlesArray:[String]) -> UIView  {
        
        let view0 = UIView.init(frame: CGRect.init(x:10, y:self.frame.height - 66, width: self.frame.width - 20, height:56))
        view0.backgroundColor = UIColor.black
        view0.layer.masksToBounds = true
        view0.layer.cornerRadius = 5;
        view0.layer.borderColor = UIColor.white.cgColor
        view0.layer.borderWidth = 1
        let width = self.frame.width/CGFloat(titlesArray.count)
        for i in 0...titlesArray.count-1 {
            let button = UIButton.init(type: .custom)
            button.frame = CGRect.init(x: CGFloat(i)*width, y:0, width: width, height: 56)
            button.setTitle(titlesArray[i], for: .normal)
            button.setTitleColor(RGB.lineColor(rgb: 0x999999), for: .normal)
            button.setTitleColor(RGB.lineColor(rgb: 0x333333), for: .selected)
            if i == 1 {
                button.backgroundColor = UIColor.white
            }else{
                button.backgroundColor = RGB.lineColor(rgb: 0xeeeeee)

            }
            button.tag = 100 + i
            button.layer.borderColor = UIColor.white.cgColor
            button.layer.borderWidth = 0.5
            button.addTarget(self, action: #selector(self.segmentControlClick(btn:)), for: .touchUpInside)
            buttonArray.append(button)
            view0.addSubview(button)
        }
        return view0
    }

    func photoClick()  {
        print("相机被点")
    }
    func segmentControlClick(btn button:UIButton) {
        
        for button in buttonArray {
            button.isSelected = false
            button.backgroundColor = RGB.lineColor(rgb: 0xeeeeee)

        }
        button.isSelected = !button.isSelected
        if button.isSelected == true {
            button.backgroundColor = UIColor.white

        }
        print(button.tag)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
