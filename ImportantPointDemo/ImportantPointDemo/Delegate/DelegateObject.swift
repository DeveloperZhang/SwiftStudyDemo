//
//  DelegateObject.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/7.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

protocol MyProtocol {
    func doMyAction()
}


class MyDelegate: MyProtocol {
    func doMyAction() {
        print(#function)
    }
}

class DelegateObject: NSObject {
    
    let myDelegate = MyDelegate()
    
    func doDelegateMethod() {
        self.myDelegate.doMyAction()
    }
    
}
