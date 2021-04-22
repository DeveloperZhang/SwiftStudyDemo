//
//  ViewController.swift
//  SwiftUIKitUILabelDemo
//
//  Created by ZhangYu on 2021/3/4.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        simpleDemo()
        complexDemo()
    }
    
    func simpleDemo() {
        let myLabel = UILabel()
        view.addSubview(myLabel)
        myLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
        myLabel.backgroundColor = UIColor.red
        myLabel.textAlignment = NSTextAlignment.center
        myLabel.text = "Hello UILabel"
        print("Hello UILabel")
    }
    
    func complexDemo(){
        let myLabel = UILabel()
        view.addSubview(myLabel)
        myLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        myLabel.backgroundColor = UIColor.red
        myLabel.text = "Hello UILabel"
        //设置字体样式
        myLabel.font = UIFont.systemFont(ofSize: 15)
        //右对齐
        myLabel.textAlignment = NSTextAlignment.right
        //头部截取
        myLabel.lineBreakMode = NSLineBreakMode.byTruncatingHead
        //不可编辑状态--会字体变灰
        myLabel.isEnabled = false;
        
        //继承自UIView,设置是否可以相应用户交互,默认值为false
        myLabel.isUserInteractionEnabled = true;
        
        
        //preferredMaxLayoutWidth
        myLabel.text = "Hello UILabel,Hello UILabel,Hello UILabel,Hello UILabel"
//        myLabel.text = "Hello UILabel"
        myLabel.numberOfLines = 0;
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        let constraintArrayH = NSLayoutConstraint.constraints(withVisualFormat: "H:|-100-[customLabel]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["customLabel":myLabel])
        let constraintArrayV = NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[customLabel]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["customLabel":myLabel])
        self.view.addConstraints(constraintArrayH)
        self.view.addConstraints(constraintArrayV)
        //用于约束层面控制字符串宽的的属性
        myLabel.preferredMaxLayoutWidth = 100
        
        
        
        
        //多属性字符串作为展示内容
        let aString: NSMutableAttributedString = NSMutableAttributedString.init(string: "Hello UILabel with NSAttributedString")
        let range = NSMakeRange(0, 5)
        aString.setAttributes([NSAttributedString.Key.foregroundColor:UIColor.green],range:range)
        myLabel.attributedText = aString;
        print("Hello UILabel")
        
        
    }
    
    
}

