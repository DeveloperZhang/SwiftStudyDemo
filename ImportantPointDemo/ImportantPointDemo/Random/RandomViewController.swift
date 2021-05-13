//
//  RandomViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func randomIntAction(_ sender: Any) {
        let numberOne: Int = Int(arc4random())
        print("Int 随机数为:\(numberOne)")
    }
    
    @IBAction func randomRangeAction(_ sender: Any) {
        let numberThree: Int = Int(arc4random_uniform(100))
        print("0-100随机数为:\(numberThree)")
    }
    
}
