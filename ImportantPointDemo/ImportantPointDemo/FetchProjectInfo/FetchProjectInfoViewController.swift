//
//  FetchProjectInfoViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class FetchProjectInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("获取项目路径:\(Bundle.main.path(forAuxiliaryExecutable: "")!)");
        print("获取项目bundle Id信息\(Bundle.main.bundleIdentifier!)")
        print("获取项目名称:\(Bundle.main.infoDictionary!["CFBundleExecutable"]!)")
        print("获取项目version号\(Bundle.main.infoDictionary!["CFBundleShortVersionString"]!)")
        print("获取项目build号\(Bundle.main.infoDictionary!["CFBundleVersion"]!)")
        print("获取bundle名称:\(Bundle.main.infoDictionary!["CFBundleName"]!)")
    }
}
