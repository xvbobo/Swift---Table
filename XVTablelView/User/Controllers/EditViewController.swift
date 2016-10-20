//
//  EditViewController.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/19.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class EditViewController: BaseViewController,CustomSegmentDelegate,UITableViewDelegate,UITableViewDataSource {

    var editTable : UITableView?
    let titles = ["昵称","个人签名","生日","城市","绑定手机"]
    let detailTextArray = ["科特~柯本","门牙有条缝，不影响我笑得好看","告诉小伙伴你的年龄","北京市-朝阳区","135****5544"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        segmentControl.delegate = self
        segmentControl.createBack()
        
        segmentControl.createTitleView(title: "编辑个人资料")
        editTable = UITableView.init(frame: CGRect.init(x: 0, y: segmentControl.frame.height, width: SCREEN_W, height: SCREEN_H - segmentControl.frame.height), style: .plain)
        editTable?.dataSource = self
        editTable?.delegate = self
        editTable?.separatorStyle = .none
        self.view.addSubview(editTable!)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 254
        }else{
            return 44.5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = EditViewCell.init(style: .default, reuseIdentifier: "editCell") as EditViewCell
        if indexPath.row == 0 {
            cell.showHeadView()
        }else{
            cell.nickNameLable.text = titles[indexPath.row - 1]
            cell.detailLabel.text = detailTextArray[indexPath.row - 1]
            if indexPath.row == 3 {
                cell.detailLabel.textColor = UIColor.lightGray

            }else{
                cell.detailLabel.textColor = RGB.lineColor(rgb: 0x222222)
            }
            cell.hiidenHeadView()
        }
        return cell
    }
    func NavLeftBtnClick() {
        self.navigationController?.popViewController(animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
