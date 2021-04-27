//
//  ViewController.swift
//  SwiftUIKitUIResponderDemo
//
//  Created by ZhangYu on 2021/4/26.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myView1:CustomView = CustomView()
    let myView2:CustomView = CustomView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(myView1)
        myView1.backgroundColor = UIColor.green
        myView1.viewName = "myView1"
        myView1.translatesAutoresizingMaskIntoConstraints = false
        
        let layoutConstraintV = NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[myView1(300)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myView1" : myView1])
        let layoutConstraintH = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[myView1]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myView1" : myView1])
        
        self.view.addConstraints(layoutConstraintV)
        self.view.addConstraints(layoutConstraintH)
        
        
        myView1.addSubview(myView2)
        myView2.viewName = "myView2"
        myView2.backgroundColor = UIColor.systemBlue
        myView2.translatesAutoresizingMaskIntoConstraints = false
        
        let layoutConstraintV1 = NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[myView2(100)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myView2" : myView2])
        let layoutConstraintH1 = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[myView2]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myView2" : myView2])
        
        self.myView1.addConstraints(layoutConstraintV1)
        self.myView1.addConstraints(layoutConstraintH1)
        
    }


}

