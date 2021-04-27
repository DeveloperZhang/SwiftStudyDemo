//
//  ViewController.swift
//  SwiftUIKitUIControlDemo
//
//  Created by ZhangYu on 2021/4/27.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myControl : CustomControl = CustomControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(myControl)
        myControl.backgroundColor = UIColor.systemBlue
        myControl.translatesAutoresizingMaskIntoConstraints = false
        
        let constraintV = NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[myControl(50)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myControl" : myControl])
        let constraintH = NSLayoutConstraint.constraints(withVisualFormat: "H:|-50-[myControl(100)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myControl" : myControl])
        self.view.addConstraints(constraintV)
        self.view.addConstraints(constraintH)
        
        //添加事件
        myControl.addTarget(self, action: #selector(testAction), for: UIControl.Event.touchUpInside)
        
        print("myControl.state is \(myControl.state)")
        
        print("myControl.allControlEvents is \(myControl.allControlEvents)")
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.myControl.removeTarget(self, action: #selector(self.testAction), for: UIControl.Event.touchUpInside)
            print("myControl.allControlEvents is \(self.myControl.allControlEvents)")
        }
        
        
    }

    
    //action事件
    @objc func testAction(){
        self.myControl.backgroundColor = UIColor.systemRed
        print("\(#function) myControl.state is \(myControl.state)")
    }

}

