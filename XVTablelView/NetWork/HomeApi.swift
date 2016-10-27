//
//  HomeApi.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/26.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class HomeApi: NSObject {
    let url = "/club/home"
    override init () {
        super.init()
        
    }
     func homeData(success: (@escaping (Any) -> ())) {
        MyDownLoadManger().getWithPath(path: MyDownLoadManger().kBaseURL + url) { (result) in
            success(result)
        }
    }
}
