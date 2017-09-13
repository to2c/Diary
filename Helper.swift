//
//  Helper.swift
//  Diary
//
//  Created by CC on 2017/9/13.
//  Copyright © 2017年 To2C DesignStudio. All rights reserved.
//

import UIKit

func diaryButtonWith(text: String,
                     fontSize: CGFloat,
                     width: CGFloat,
                     normalImageName: String,
                     highlightedImageName: String) -> UIButton {
    let button = UIButton(type: UIButtonType.custom)
    
    button.frame = CGRect(x: 0, y: 0, width: width, height: width)
    
    let font = UIFont(name: "Wyue-GutiFangsong-NC",
                      size: fontSize) as UIFont!
    let textAttributes: [String: AnyObject] = [
        NSFontAttributeName: font!,
        NSForegroundColorAttributeName: UIColor.white]
    let attributedText = NSAttributedString(
        string: text,
        attributes: textAttributes)
    button.setAttributedTitle(attributedText, for: UIControlState.normal)
    
    button.setBackgroundImage(UIImage(named: normalImageName), for: UIControlState.normal)
    button.setBackgroundImage(UIImage(named: highlightedImageName), for: UIControlState.highlighted)
    return button
}
