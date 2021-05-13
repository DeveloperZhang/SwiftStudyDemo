//
//  ConvenienceOperation1.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/12.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class ConvenienceOperation1: Operation {
    var number: Int?
    
    convenience init(number: Int, name: String) {
        self.init()
        self.name = name
        self.number = number;
    }
    
    override func main() {
        for i in 0...100 {
            self.number = i
            print("ConvenienceOperation1--当前线程:\(Thread.current)--输出number:\(self.number!)--输出i:\(i)")
        }
    }
}
