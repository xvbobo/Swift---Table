//
//  SecondController.swift
//  XVTablelView
//
//  Created by 许菠菠 on 2016/10/17.
//  Copyright © 2016年 许菠菠. All rights reserved.
//

import UIKit

class SecondController: BaseViewController ,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{

    var myCollectionView : UICollectionView?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        let myViewLayout = UICollectionViewFlowLayout.init()
        myCollectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 64, width: SCREEN_W, height: SCREEN_H - 64 - 50), collectionViewLayout: myViewLayout)
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
        myCollectionView?.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "cell")
        self.view.addSubview(myCollectionView!)
        self.navigationController?.navigationBar.barTintColor = UIColor.yellow
        

        // Do any additional setup after loading the view.
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        cell.backgroundColor = UIColor.red
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let sets = UIEdgeInsets.init(top: 0, left:10, bottom:10, right:10)
        return sets
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize.init(width: (SCREEN_W-50)/3, height: (SCREEN_W-50)/3)
        
       return size
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
