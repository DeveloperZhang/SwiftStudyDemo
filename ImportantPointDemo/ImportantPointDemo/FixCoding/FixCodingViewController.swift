//
//  FixCodingViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/13.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class FixCodingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let fixOC = FixOCObject()
        fixOC.printOC()
        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
