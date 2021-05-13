//
//  KVCViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class KVCViewController: UIViewController {
    
    let kvcObject = KVCObject()

    override func viewDidLoad() {
        super.viewDidLoad()
        kvcObject.setValue("Tom", forKey: "myName")
        print(kvcObject)
        
        let myName = kvcObject.value(forKey: "myName")
        print("打印输出myName:\(myName!)")
        
    }


}
