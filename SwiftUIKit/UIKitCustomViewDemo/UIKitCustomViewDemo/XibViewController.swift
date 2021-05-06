//
//  XibViewController.swift
//  UIKitCustomViewDemo
//
//  Created by Vicent on 2021/5/1.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class XibViewController: UIViewController {

    @IBOutlet weak var secondView: CustomSecondXibView!
    
    @IBOutlet weak var myView: CustomXibView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.myView.myLabel.text = "Hello xib"
        self.secondView.myLabel.text = "Hello Second";
        
    }
    
    

}
