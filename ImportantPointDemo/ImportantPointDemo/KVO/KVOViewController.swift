//
//  KVOViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class KVOViewController: UIViewController {
    let kvo = KVOObject()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.kvo.addObserver(self, forKeyPath: "myName", options: [.new, .old], context: nil)
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        print("keyPath is:\(keyPath!)")
        if let old = change?[.oldKey] {
            print("old is:\(old)")
        }
        
        if let new = change?[.newKey] {
            print("new is:\(new)")
        }
    }


    @IBAction func pressAction(_ sender: Any) {
        let numberOne: Int = Int(arc4random_uniform(100))
        self.kvo.myName = "\(numberOne)"
    }

}
