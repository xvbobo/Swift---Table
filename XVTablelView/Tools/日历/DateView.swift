//
//  DateView.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/24.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit
protocol DateViewDelegate {
    func cancelBtnClick()
    func makeSureBtnClick(year:String,month:String,day:String)
}
class DateView: UIView,UIPickerViewDelegate,UIPickerViewDataSource {

    var dateModel  = DateModel()
    var yearSource = [String]()
    var monthSource = [String]()
    var daySouerce = [String]()
    var isRun = true
    var  monthString0 = ""
    var pickView = UIPickerView()
    var delegate : DateViewDelegate?
    var selectedYear = "1903"
    var selectedMonth = "4"
    var selectedDay = "4"
    override init(frame:CGRect){
        super.init(frame: frame)
        self.creteDataSource()
//        self.createInterFace()
        self.backgroundColor = UIColor.white
    }
    func creteDataSource() {
        for i  in 0...10 {
            let string = "\(1900 + i)" + "年"
            yearSource.append(string)
        }
        for i  in 0...11 {
            let string = "\(1 + i)" + "月"
            monthSource.append(string)
        }
        
    }
    
    func createInterFace() {
        let leftButton = UIButton.init(type: .custom)
        leftButton.frame = CGRect.init(x:10, y:10, width: 50, height: 20)
        leftButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        leftButton.setTitle("取消", for: .normal)
        leftButton.setTitleColor(RGB.lineColor(rgb: 0x2e7fe2), for: .normal)
        leftButton.addTarget(self, action: #selector(self.leftButtonClick), for: .touchUpInside)
        self.addSubview(leftButton)
        
        let rightButton = UIButton.init(type: .custom)
        rightButton.frame = CGRect.init(x:self.frame.width - 60, y:10, width: 50, height: 20)
        rightButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        rightButton.setTitle("确定", for: .normal)
        rightButton.addTarget(self, action: #selector(self.rightButtonClick), for: .touchUpInside)

        rightButton.setTitleColor(RGB.lineColor(rgb: 0x2e7fe2), for: .normal)
        self.addSubview(rightButton)

        pickView = UIPickerView.init(frame: CGRect.init(x: 0, y:30, width: self.frame.width, height: self.frame.height - 30))
        pickView.delegate = self
        pickView.dataSource = self
        pickView.selectRow(3, inComponent: 0, animated: true)
        pickView.selectRow(3, inComponent: 1, animated: true)
        pickView.selectRow(3, inComponent: 2, animated: true)
        self.addSubview(pickView)
//        self.insertSubview(leftButton, aboveSubview: pickView)
    }
    
    func leftButtonClick() {
        delegate?.cancelBtnClick()
    }
    
    func rightButtonClick() {
        delegate?.makeSureBtnClick(year: selectedYear, month: selectedMonth, day: selectedDay)
    }
    //列
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    //行
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return yearSource.count
        }else if component == 1 {
            return monthSource.count
        }else if component == 2 {
            switch monthString0 {
            case "1","3","5","7","8","10","12":
                return 31
            case "4","6","9","11":
                return 30
            case "2":
                if isRun == true {
                    return 29
                }else{
                    return 28
                }
            default:
                return 31
            }
        }else{
            return 0
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            let yeaString = yearSource[row]
            return yeaString
        case 1:
            let monthString = monthSource[row]
            return monthString
        case 2:
            let dayString = "\(row + 1)" + "日"
            return dayString
        default:
            break
        }
        return ""
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            var yearString = yearSource[row]
            if yearString.contains("年"){
                yearString = yearString.replacingOccurrences(of: "年", with: "")
                selectedYear = yearString
            }
            if (Int(yearString)! % 4 == 0) {
                isRun = true
            }else{
                isRun = false
            }
        case 1:
            monthString0 = monthSource[row]
            if monthString0.contains("月"){
                monthString0 = monthString0.replacingOccurrences(of: "月", with: "")
                selectedMonth = monthString0
            }
        case 2:
            selectedDay = "\(row + 1)"
        default:
            break
        }
        
        pickView.reloadComponent(2)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
