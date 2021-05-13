//
//  ForLoopViewController.swift
//  ImportantPointDemo
//
//  Created by Vicent on 2021/5/1.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class ForLoopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //0...10表示包含头尾的0到10之间所有的整数
        //0..<10表示包含头不包含尾的0到9之间所有的整数
        for i in 0...2 {
            print("i is:\(i)")
        }
        print("==============")
        for i in 0..<2 {
            print("i is:\(i)")
        }
        print("==============")
        for _ in 0...1 {
            print("不关心变量的循环")
        }
    }

}
