//
//  DateModel.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/24.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class DateModel: NSObject {

    override init(){
        super.init()
    }
    func getCurrentDate() -> String {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd EEEE"
        return formatter.string(from: date)

    }
    func getDataSource() -> Any {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd EEEE"
        var  components1 = DateComponents()
        let calenDar = Calendar.current
        let dateString = "2016-10-25  12:12:12"
        var newDate = formatter.date(from: dateString)
        var isRunNian = true
        var dataSource = [String]()
        
        for i in 0...10 {
            components1.year = 2016 + i
            if components1.year!%4 == 0 {
                isRunNian = true
            }else{
                isRunNian = false
            }
            for m in 0...11 {
                components1.month = m + 1
                switch components1.month! {
                case 2:
                    if isRunNian == true {
                        for day in 0...28 {
                            components1.day = day + 1
                            newDate = calenDar.date(from: components1)
                            
                            dataSource.append(formatter.string(from: newDate!))
                        }
                    }else{
                        for day in 0...27 {
                            components1.day = day + 1
                            newDate = calenDar.date(from: components1)
                            dataSource.append(formatter.string(from: newDate!))
                            
                            
                        }
                    }
                case 1,3,5,7,8,10,12:
                    for day in 0...30 {
                        components1.day = day + 1
                        newDate = calenDar.date(from: components1)
                        dataSource.append(formatter.string(from: newDate!))
                        
                        
                    }
                case 4,6,9,11:
                    for day in 0...29 {
                        components1.day = day + 1
                        newDate = calenDar.date(from: components1)
                        dataSource.append(formatter.string(from: newDate!))
                        
                    }
                default: break
                    
                }
            }
        }
        
        var modelArray = [DayModel]()
        for dateString in dataSource {
            let dayModel = DayModel()
            let dayString = dateString.components(separatedBy: " ")
            dayModel.weekOfDay = dayString.last
            let dayDetail = dayString.first?.components(separatedBy: "-")
            dayModel.day = dayDetail?[2]
            dayModel.month = dayDetail?[1]
            dayModel.year = dayDetail?[0]
            modelArray.append(dayModel)
        }
        return modelArray

    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
