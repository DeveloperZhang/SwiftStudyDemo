//
//  KVCObject.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class KVCObject: NSObject {
    //在swift中要使用KVC这种机制的话，继承NSObject这个类是必要条件，而且还需要显示的使用`@objc`关键字来声明一下才可以正常使用
    @objc var myName: String = ""
    
    override var description: String {
        return "KVC Object's name is:\(self.myName)"
    }
}
