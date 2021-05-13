//
//  Person.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/12.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name:String?
    var age:Int = 0
    
    
    func eat(name: String) -> Void {
        print("eat \(name)")
    }
    
    class func speak(name: String) {
        print("speak name is \(name)")
    }
}
