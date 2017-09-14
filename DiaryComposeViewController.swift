//
//  DiaryComposeViewController.swift
//  Diary
//
//  Created by CC on 2017/9/14.
//  Copyright © 2017年 To2C DesignStudio. All rights reserved.
//

import UIKit
let titleTextViewHeight: CGFloat = 30.0
let contentMargin: CGFloat = 20.0

var defaultFont = "Wyue-GutiFangsong-NC"
let DiaryFont = UIFont(name: defaultFont, size: 18) as UIFont!
let DiaryLocationFont = UIFont(name: defaultFont, size: 16) as UIFont!
let DiaryTitleFont = UIFont(name: defaultFont, size: 18) as UIFont!

class DiaryComposeViewController: UIViewController {
    var composeView: UITextView!
    var locationTextView: UITextView!
    var titleTextView: UITextView!
    var finishButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        composeView = UITextView(frame: CGRect(x: 0, y: contentMargin + titleTextViewHeight, width: screenSize.width, height: screenSize.height))
        composeView.font = DiaryFont
        composeView.isEditable = true
        composeView.isUserInteractionEnabled = true
        composeView.textContainerInset = UIEdgeInsetsMake(contentMargin, contentMargin, contentMargin, contentMargin)
        composeView.text = "没道理，是一枚太平洋的暖湿空气，飘"
        
        locationTextView = UITextView(frame: CGRect(x: 0, y: composeView.frame.size.height - 30.0, width: screenSize.width - 60.0, height: 30.0))
        locationTextView.font = DiaryLocationFont
        locationTextView.isEditable = true
        locationTextView.isUserInteractionEnabled = true
        locationTextView.bounces = false
        locationTextView.text = "于琅琊"
        
        titleTextView = UITextView(frame: CGRect(x: contentMargin, y: contentMargin/2, width: screenSize.width - 60.0, height: titleTextViewHeight))
        titleTextView.font = DiaryTitleFont
        titleTextView.isEditable = true
        titleTextView.isUserInteractionEnabled = true
        titleTextView.bounces = false
        titleTextView.text = "一十五日"
        
        self.view.addSubview(composeView)
        self.view.addSubview(locationTextView)
        self.view.addSubview(titleTextView)
        
        finishButton = diaryButtonWith(text: "完", fontSize: 18.0, width: 50.0, normalImageName: "Oval", highlightedImageName: "Oval_pressed")
        finishButton.center = CGPoint(x: screenSize.width - 20, y: screenSize.height - 30)
        
        self.view.addSubview(finishButton)
        
        self.finishButton.center = CGPoint(x: self.view.frame.width - self.finishButton.frame.size.height/2.0 - 10,
                                           y: self.view.frame.height - self.finishButton.frame.size.height/2.0 - 10)
        self.locationTextView.center = CGPoint(x: self.locationTextView.frame.size.width/2.0 + 20.0,
                                               y: self.finishButton.center.y)
        // Do any additional setup after loading the view.
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
