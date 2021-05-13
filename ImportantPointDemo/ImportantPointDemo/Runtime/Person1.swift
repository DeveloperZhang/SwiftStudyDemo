//
//  Person1.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/12.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class Person1: NSObject {
    
    @objc var name:String?
    @objc var age:Int = 0
    
    required override init() {
        super.init()
    }
    
    @objc func eat(name: String) -> Void {
        print("eat \(name)")
    }
    
    @objc class func speak(name: String) {
        print("speak name is \(name)")
    }
    


}
