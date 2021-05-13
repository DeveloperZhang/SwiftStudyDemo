//
//  RootTableViewController.swift
//  ImportantPointDemo
//
//  Created by Vicent on 2021/5/1.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {
    
    let dataArray = ["FixCoding-与OC混编-","RunLoop-运行循环-", "Runtime-运行时-","NetWorking-网络请求-","Timer-定时器-","Thread-多线程-","ForLoop-普通循环-", "Random-随机数-","DebugPrint-调试输出-","Setter-重写setter和getter-", "KVC-键值编码-", "KVO-键值观察-","FetchProjectInfo-获取Bundle信息等-","DateFormat-日期格式转换-","SandBox-沙盒路径-","FileManager-文件管理-","Delegate-代理-","Closure-闭包-","NSAttributeString-","Draw-绘图-","Animation-动画-","Mask-遮罩-"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
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
