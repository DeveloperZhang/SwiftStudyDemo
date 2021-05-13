//
//  ThreadViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/8.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class ThreadViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let dataArray = ["PThread", "NSThread", "GCD", "NSOperation"]
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "testCell"
        var cell = self.myTableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = self.dataArray[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let array = self.dataArray[indexPath.row].components(separatedBy: "-")
        let childVcName = "\(array[0])ViewController"
        // 1. 获取去命名空间,由于项目肯定有info.plist文件所有可以机型强制解包.
        guard let nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else {
            print("没有获取到命名空间")
            return
        }
        // 1. 根据类名获取对应的类
        print("\(nameSpace).\(childVcName)")
        guard let childVcClass = NSClassFromString("\(nameSpace).\(childVcName)") else {
            print("没有获取到对应的类")
            return
        }
        // 2. 将AnyObject转换成控制器类型
        guard let childVcType = childVcClass as? UIViewController.Type else {
            print("没有转换成控制器类型")
            return
        }
        // 3. 创建控制器实例
        let childVc = childVcType.init()
        self.navigationController?.pushViewController(childVc, animated: true)
    }
}
