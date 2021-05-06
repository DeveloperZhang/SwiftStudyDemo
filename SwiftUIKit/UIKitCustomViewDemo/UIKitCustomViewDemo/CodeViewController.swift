//
//  CodeViewController.swift
//  UIKitCustomViewDemo
//
//  Created by Vicent on 2021/5/1.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        let myView = CustomCodeView.init(frame: CGRect.init(x: 0, y: 100, width: 100, height: 100))
//        self.view.addSubview(myView)
        
        
        
        let myView1 = CustomSecondCodeView.init(frame: CGRect.init(x: 0, y: 220, width: 100, height: 100))
        self.view.addSubview(myView1)
    }

}
