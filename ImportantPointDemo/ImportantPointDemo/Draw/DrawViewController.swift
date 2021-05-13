//
//  DrawViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/7.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class DrawViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let myView = CustomView()
        myView.frame = self.view.frame
        self.view.addSubview(myView)
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
