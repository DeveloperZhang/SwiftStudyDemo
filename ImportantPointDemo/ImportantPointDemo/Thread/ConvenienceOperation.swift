//
//  ConvenienceOperation.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/12.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class ConvenienceOperation: Operation {
    
    var number: Int?
    
    convenience init(number: Int, name: String) {
        self.init()
        self.name = name
        self.number = 1;
    }
    
    override func main() {
        print("ConvenienceOperation--当前线程:\(Thread.current)--输出number:\(self.number!)")
    }
}
