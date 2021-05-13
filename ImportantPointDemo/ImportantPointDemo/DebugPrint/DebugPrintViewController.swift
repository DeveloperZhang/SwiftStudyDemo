//
//  DebugPrintViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class DebugPrintViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        method1()
    }    
    func method1() {
        
        print("当前函数:\(#function)")
        print("当前文件:\(#file)")
        print("当前行:\(#line)")
        print("当前列:\(#column)")
    }

}
