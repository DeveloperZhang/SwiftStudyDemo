//
//  SetterObject.swift
//  ImportantPointDemo
//
//  Created by Vicent on 2021/5/1.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class SetterObject: NSObject {

    //存储属性
    private var _name: String?
    //计算属性
    var name: String? {
        get {
            return _name
        }
        set {
            _name = "My name is \(newValue ?? "")"
        }
    }
    
}
