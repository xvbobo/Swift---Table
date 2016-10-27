//
//  MyDownLoadManger.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/26.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class MyDownLoadManger: NSObject {
    
    
    
    let kBaseURL = "https://tianjinfc-t.9h-sports.com"
    override init(){
        super.init()
    }
    func getWithPath(path:String, success:@escaping ((_ result:Any) ->())) {
        let url = URL.init(string:path)
        let session = URLSession.shared
        let dask = session.dataTask(with: url!) { (data , response, error) in
            if let data = data {
                if let result = try?JSONSerialization.jsonObject(with: data, options: .allowFragments) {
                    success(result)
                }
            }else{
                print(error)
                
            }
            print(response)
        }
        dask.resume()
        
    }
    
    func postWithPath(path: String,paras: Dictionary<String,Any>?,success: @escaping ((_ result: Any) -> ()),failure: @escaping ((_ error: Error) -> ())) {
        var i = 0
        var address: String = ""
        if let paras = paras {
            for (key,value) in paras {
                if i == 0 {
                    address += "\(key)=\(value)"
                }else {
                    address += "&\(key)=\(value)"
                }
                i += 1
            }
        }
        
        let url = URL(string: path)
        var request = URLRequest.init(url: url!)
        request.httpMethod = "POST"
        print(address)
        request.httpBody = address.data(using: .utf8)
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) { (data, respond, error) in
            if let data = data {
                if let result = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) {
                    success(result)
                    
                }
            }else {
                
                failure(error!)
            }
            
        }
        dataTask.resume()
        
    }
    
    
    
    
    
    
}
