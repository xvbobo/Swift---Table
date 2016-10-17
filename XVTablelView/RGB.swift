//
//  RGB.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/17.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class RGB: NSObject {

   class func RGBColor (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor{
        return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
}
