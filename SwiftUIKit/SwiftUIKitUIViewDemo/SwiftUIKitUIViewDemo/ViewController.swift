//
//  ViewController.swift
//  SwiftUIKitUIViewDemo
//
//  Created by ZhangYu on 2021/3/4.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myView = UIView()
        myView.backgroundColor = UIColor.red
        view.addSubview(myView)
        myView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        print("Hello UIView!")
    }

}

