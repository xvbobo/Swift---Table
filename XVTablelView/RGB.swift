//
//  RGB.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/17.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class RGB: NSObject {

    let SCREEN_W =  UIScreen.main.bounds.width
    let SCREEN_H =  UIScreen.main.bounds.height
    class func RGBColor (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor{
        return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
    class func MainColor() -> UIColor{
        return UIColor (red: 83/255.0, green: 175/255.0, blue: 252/255.0, alpha: 1)
    }
    
    class func BackGroundColor() -> UIColor{
        return UIColor (red: 246/255.0, green: 246/255.0, blue: 246/255.0, alpha: 1)
    }
    class func textColor() -> UIColor{
        return UIColor (red: 34/255.0, green: 34/255.0, blue: 34/255.0, alpha: 1)
    }
    class func lineColor(rgb:Int) -> UIColor{
        return UIColor.rgbColorFromHex(rgb: rgb)
    }
    
}
extension UIColor {
       /**
     
     *  16进制 转 RGBA
     
     */
    
    class func rgbaColorFromHex(rgb:Int, alpha: CGFloat) ->UIColor {
        
        return UIColor(red: ((CGFloat)((rgb & 0xFF0000) >> 16))/255,green: ((CGFloat)((rgb & 0xFF00) >> 8))/255,blue: ((CGFloat)(rgb & 0xFF))/255,alpha: alpha)

    }
     /**
     
     *  16进制 转 RGB
     
     */
    
    class func rgbColorFromHex(rgb:Int) -> UIColor {
    return UIColor(red: ((CGFloat)((rgb & 0xFF0000) >> 16))/255,green: ((CGFloat)((rgb & 0xFF00) >> 8))/255,blue: ((CGFloat)(rgb & 0xFF))/255,alpha: 1.0)
        
    }
    
}
