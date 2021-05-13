//
//  SetterViewController.swift
//  ImportantPointDemo
//
//  Created by Vicent on 2021/5/1.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class SetterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let setterObj = SetterObject()
        setterObj.name = "Tom"
        print("setterObj.name is\(setterObj.name!)")
    }

}
