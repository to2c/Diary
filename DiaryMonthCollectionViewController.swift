//
//  DiaryMonthCollectionViewController.swift
//  Diary
//
//  Created by CC on 2017/9/10.
//  Copyright © 2017年 To2C DesignStudio. All rights reserved.
//

import UIKit

let DiaryRed = UIColor.init(red: 192.0/255.0, green: 23.0/255.0, blue: 48.0/255.0, alpha: 1.0)
// private let reuseIdentifier = "Cell"

class DiaryMonthCollectionViewController: UICollectionViewController {
    var month: Int!
    var yearLabel: DiaryLabel!
    var monthLabel: DiaryLabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = DiaryLayout()
        
        layout.scrollDirection = UICollectionViewScrollDirection.horizontal
        self.collectionView?.setCollectionViewLayout(layout, animated: false)
        
        yearLabel = DiaryLabel(
            fontname: "TpldKhangXiDictTrial",
            labelText: "二零一七年",
            fontSize: 16.0,
            lineHeight: 5.0,
            color: UIColor.black)
        
        yearLabel.frame = CGRect(x: screenSize.width - yearLabel.frame.size.width - 20,
                                 y: 20,
                                 width: yearLabel.frame.size.width,
                                 height: yearLabel.frame.size.height)
        
        self.view.addSubview(yearLabel)
        
        monthLabel = DiaryLabel(fontname: "Wyue-GutiFangsong-NC",
                                labelText: "三月",
                                fontSize: 16.0,
                                lineHeight: 5.0,
                                color: DiaryRed)
        
        monthLabel.frame = CGRect(x: screenSize.width - monthLabel.frame.size.width - 20,
                                  y: screenSize.height/2.0 - monthLabel.frame.size.height/2.0,
                                  width: monthLabel.frame.size.width,
                                  height: monthLabel.frame.size.height)
        
        self.view.addSubview(monthLabel)

        let composeButton =  diaryButtonWith(text: "撰",
                                             fontSize: 14.0,
                                             width: 40.0,
                                             normalImageName: "Oval",
                                             highlightedImageName: "Oval_pressed")
        composeButton.center = CGPoint(x: yearLabel.center.x, y: 38 + yearLabel.frame.size.height + 26.0/2.0)
        self.view.addSubview(composeButton)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        //
        // Configure the cell
        let identifier = "DiaryCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath) as! DiaryCell
        cell.textInt = 1
        cell.labelText = "季风气候"
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
