//
//  UserCellView.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/18.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit
protocol UserCellDelegate {
    func cellClicked(cellString:String)
}
class UserCellView: UIView {

    var delegate : UserCellDelegate?
    
    override init(frame:CGRect){
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createCell(imageName:String,cellName:String) {
        let cellImage = UIImageView.init(frame: CGRect.init(x: 10, y: 12, width:  self.frame.height/2-5, height: self.frame.height/2-5))
        cellImage.image = UIImage.init(named: imageName)
        self.addSubview(cellImage)
        
        let cellNameLabel = UILabel.init(frame: CGRect.init(x: cellImage.frame.origin.x + cellImage.frame.width +  self.frame.height/2 - 5, y: cellImage.frame.origin.y, width: 200, height: self.frame.height/2 - 5))
        cellNameLabel.text = cellName
        cellNameLabel.textColor = RGB.textColor()
        self.addSubview(cellNameLabel)
        
        let sanJiaoImage = UIImageView.init(frame: CGRect.init(x: self.frame.width - 10 - 10, y: 18, width: 5, height: 10))
        sanJiaoImage.image = UIImage.init(named: "user_more_image")
        self.addSubview(sanJiaoImage)
        
        if cellName == "我的粉丝" {
            let lineImageView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: self.frame.width, height: 0.5))
            lineImageView.backgroundColor = RGB.lineColor(rgb: 0xededed)
            self.addSubview(lineImageView)
            
        }
        
        
        
    }
    
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
