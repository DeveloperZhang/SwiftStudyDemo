//
//  DelegateViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/7.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class DelegateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myDelegateObject = DelegateObject()
        myDelegateObject.doDelegateMethod()
    }


}
