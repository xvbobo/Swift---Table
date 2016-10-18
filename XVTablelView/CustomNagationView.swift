//
//  CustomNagationView.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/17.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class CustomNagationView: UIView {

    var centerLable = UILabel()
    let SCREEN_W =  UIScreen.main.bounds.width
    let SCREEN_H =  UIScreen.main.bounds.height
    override init(frame:CGRect) {
        super.init(frame: frame)
        centerLable.frame = CGRect.init(x: (SCREEN_W - 100)/2, y: 0, width: 100, height: 60)
        centerLable.font = UIFont.boldSystemFont(ofSize: 15)
        centerLable.textAlignment = .center
        centerLable.textColor = UIColor.white
        self.addSubview(centerLable)
        self.backgroundColor = UIColor.black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
