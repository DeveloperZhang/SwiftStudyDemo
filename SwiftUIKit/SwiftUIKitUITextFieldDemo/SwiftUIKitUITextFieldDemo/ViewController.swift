//
//  ViewController.swift
//  SwiftUIKitUITextFieldDemo
//
//  Created by ZhangYu on 2021/4/22.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hello TF")
        let tf = UITextField()
        self.view.addSubview(tf)
        tf.translatesAutoresizingMaskIntoConstraints = false
        self.view.translatesAutoresizingMaskIntoConstraints = false
        let constraintArrayH = NSLayoutConstraint.constraints(withVisualFormat: "H:|-100-[tf(200)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["tf":tf])
        let constraintArrayV = NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[tf]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["tf":tf])
        self.view.addConstraints(constraintArrayH)
        self.view.addConstraints(constraintArrayV)
        
        //文本内容
//        tf.text = "Hello UITextField Hello UITextField"
        //背景色
//        tf.backgroundColor = UIColor.green
        //文字颜色
        tf.textColor = UIColor.systemBlue
        //字体大小
        tf.font = UIFont.systemFont(ofSize: 15)
        //文本布局
//        tf.textAlignment = NSTextAlignment.center
        //text为空时候的默认占位内容
        tf.placeholder = "Please input your content"

        //边框样式
        tf.borderStyle = UITextField.BorderStyle.roundedRect
        //删除按钮显示模式
        tf.clearButtonMode = UITextField.ViewMode.always
        //文本展示不开时候的最小字体大小
        tf.adjustsFontSizeToFitWidth = true
        tf.minimumFontSize = 8.0
        
        /**键盘属性相关**/
        //自动大写类型
        tf.autocapitalizationType = UITextAutocapitalizationType.sentences
        //自动关联正确词汇
        tf.autocorrectionType = UITextAutocorrectionType.no
        //键盘类型
//        tf.keyboardType = UIKeyboardType.numberPad
        //键盘主体样式
//        tf.keyboardAppearance = UIKeyboardAppearance.dark
        //返回键按钮样式
        tf.returnKeyType = UIReturnKeyType.google
    }


}

