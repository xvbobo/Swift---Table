//
//  CustomTB.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/17.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class CustomTB: UIView {
    var btnArray = [UIButton]()
    var VCS  = [UIViewController]()
    var FatherVIew = UIView()
    override init(frame:CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.black
    }
    
    func addControllers(controllers:[UIViewController],imageArray:[String], titlesArray:[String],fatherView:UIView) {
        VCS = controllers
        FatherVIew = fatherView
        let viewWidth = self.frame.width/CGFloat(imageArray.count)
        for i in 0...controllers.count-1 {
            let view0 = UIView.init(frame: CGRect.init(x: CGFloat(i)*viewWidth, y: 0, width: viewWidth, height: self.frame.height))
            self.addSubview(view0)
            let label = UILabel.init(frame: CGRect.init(x: 0, y: view0.frame.height - 12, width: view0.frame.width, height: 10))
            label.text = titlesArray[i]
            label.font = UIFont.boldSystemFont(ofSize:10)
            label.textColor = UIColor.white
            label.textAlignment = .center
            view0.addSubview(label)
            
            let btn = UIButton.init(type: .custom)
            btn.frame = CGRect.init(x: (view0.frame.width - 30)/2, y:5, width:30, height:30)
            btn.setImage(UIImage.init(named: imageArray[i] + "-hover"), for: .selected)
            btn.setImage(UIImage.init(named: imageArray[i]), for: .normal)
            btn.addTarget(self, action: #selector(self.btnClick(btn:)),for: .touchUpInside)
            btn.tag = 100 + i
            btnArray.append(btn)
            view0.addSubview(btn)
            
            
        }
    }
    
    func btnClick(btn button:UIButton) {
       
        for btn:UIButton in btnArray {
            btn.isSelected = false
        }
        button.isSelected = !button.isSelected

        if button.isSelected == true {
            print(button.tag)
            FatherVIew.insertSubview(VCS[button.tag - 100].view, belowSubview: self)
        }

    }
    
     func defaultController(number index:Int) {
        
        FatherVIew.insertSubview(VCS[index].view, belowSubview: self)

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
