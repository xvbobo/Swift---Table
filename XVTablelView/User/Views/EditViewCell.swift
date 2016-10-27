//
//  EditViewCell.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/20.
//  Copyright © 2016年 许菠菠. All rights reserved.
//
//MZCKit
import UIKit

class EditViewCell: UITableViewCell {

    var nickNameLable = UILabel()
    var moreImage =  UIImageView()
    
    var lineIMage = UIImageView()
    var detailLabel =  UILabel()
    var a = 0
    let SCREEN_W =  UIScreen.main.bounds.width
    var headView = EditHeadView()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.createInterFace()
        self.selectionStyle = .none
        
    }
    func createInterFace() {
        
        headView.frame = CGRect.init(x: 0, y: 0, width: SCREEN_W, height: 244)
        headView.backgroundColor = UIColor.white
        headView.createInterFace(headImage: UIImage.init(named: "user_headDefault_image")!)
        self.contentView.addSubview(headView)
        
        nickNameLable.frame = CGRect.init(x: 10, y: 10, width: 100, height: 22)
        nickNameLable.textColor = UIColor.lightGray
        nickNameLable.font = UIFont.boldSystemFont(ofSize: 14)
        nickNameLable.text = "个性签名"
        self.contentView.addSubview(nickNameLable)
        
        detailLabel.frame = CGRect.init(x: nickNameLable.frame.origin.x + 100, y: 10, width:SCREEN_W - nickNameLable.frame.origin.x + 100  , height: 22)
        detailLabel.font = UIFont.boldSystemFont(ofSize: 14)
        detailLabel.text = "北京市 - 朝阳区"
        self.contentView.addSubview(detailLabel)
        
        moreImage.frame = CGRect.init(x: SCREEN_W - 20, y: 15, width: 5 , height: 10)
        moreImage.image = UIImage.init(named: "user_more_image")
        self.contentView.addSubview(moreImage)
        
        lineIMage.frame = CGRect.init(x: 10, y:44, width:SCREEN_W - 20 , height:0.5)
        lineIMage.backgroundColor = UIColor.lightGray
        self.contentView.addSubview(lineIMage)
        
    }
    
    func showHeadView () {
        nickNameLable.isHidden = true
        moreImage.isHidden = true
        lineIMage.isHidden = true
        detailLabel.isHidden = true
        headView.isHidden = false
    }
    
    func hiidenHeadView () {
        nickNameLable.isHidden = false
        moreImage.isHidden = false
        lineIMage.isHidden = false
        detailLabel.isHidden = false
        headView.isHidden = true
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
