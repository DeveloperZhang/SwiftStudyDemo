//
//  SandBoxViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class SandBoxViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        print("沙盒根路径:\(SandBoxUtil.fetchRootPath())")
        print("沙盒Document路径:\(SandBoxUtil.fetchDocumentPath())")
        print("沙盒Library路径:\(SandBoxUtil.fetchDocumentPath())")
        print("沙盒Temp路径:\(SandBoxUtil.fetchTempPath())")
        
    }
    
}
