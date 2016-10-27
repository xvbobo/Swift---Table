//
//  DayModel.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/24.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class DayModel: NSObject {
    var day:String?
    var month : String?
    var year : String?
    var weekOfDay : String?
    
    override init(){
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
