//
//  NSAttributeStringViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/7.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class NSAttributeStringViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myString = "你好带有属性的字符串-Hello NSAttributeString"
        let myAttributeString = NSMutableAttributedString.init(string: myString)
        let myAttribute = [NSAttributedString.Key.foregroundColor: UIColor.lightGray,
                           NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20),NSAttributedString.Key.underlineStyle: NSUnderlineStyle.single.rawValue] as [NSAttributedString.Key : Any]
        myAttributeString.addAttributes(myAttribute, range:NSRange.init(location: 0, length: 10))
        self.myLabel.attributedText = myAttributeString

        
    }

}
