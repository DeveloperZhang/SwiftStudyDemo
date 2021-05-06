//
//  CustomCodeView.swift
//  UIKitCustomViewDemo
//
//  Created by Vicent on 2021/5/1.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class CustomCodeView: UIView {

    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        self.backgroundColor = UIColor.blue
        let label = UILabel()
        label.text = "Hello"
        label.backgroundColor = UIColor.green
        label.frame = CGRect.init(x: rect.width/2, y: rect.height/2, width: rect.width/2, height: rect.height/2)
        self.addSubview(label)
    }

}
