//
//  CustomSecondCodeView.swift
//  UIKitCustomViewDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class CustomSecondCodeView: UIView {

    override func draw(_ rect: CGRect) {
        // Drawing code
        self.backgroundColor = UIColor.blue
        let label = UILabel()
        label.text = "Hello Second"
        label.backgroundColor = UIColor.systemBlue
        label.frame = CGRect.init(x: rect.width/2, y: rect.height/2, width: rect.width/2, height: rect.height/2)
        self.addSubview(label)
    }

}
