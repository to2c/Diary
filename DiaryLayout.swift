//
//  DiaryLayout.swift
//  Diary
//
//  Created by CC on 2017/9/9.
//  Copyright © 2017年 To2C DesignStudio. All rights reserved.
//

import UIKit

let screenSize = UIWindow().screen.bounds

class DiaryLayout: UICollectionViewFlowLayout {
    override func prepare() {
        super.prepare()
        
        let itemSize = CGSize(width: itemWidth, height: itemHeight)
        self.itemSize = itemSize
        self.minimumInteritemSpacing = 0.0
        self.minimumLineSpacing = 0
        
        
        self.sectionInset = UIEdgeInsets(top: (screenSize.height/2.0) - (itemHeight/2.0),
                                         left: (screenSize.width/2.0) - (itemWidth/2.0),
                                         bottom: (screenSize.height/2.0) - (itemHeight/2.0),
                                         right: (screenSize.width/2.0) - (itemWidth/2.0))
        
        scrollDirection = UICollectionViewScrollDirection.horizontal
    }

}
