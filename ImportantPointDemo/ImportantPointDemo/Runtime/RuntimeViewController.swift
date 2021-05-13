//
//  RuntimeViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/12.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class RuntimeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    let dataArray = ["Mirror方式", "NSClass方式"]
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
        switch indexPath.row {
        case 0:
            reflectFunc()
            break
        case 1:
            reflectNSFunc()
            break
        default:
            break
        }
        
        
    }
    
    
    func reflectNSFunc() {
        let nameSpace = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String
        let typeName = nameSpace! + "." + "Person1"
        
        guard let personClass = NSClassFromString(typeName) else {
            print("没有获取到对应的类")
            return
        }
        // 2. 将AnyObject转换成控制器类型
        guard let personType = personClass as? Person1.Type else {
            print("没有转换成控制器类型")
            return
        }
        // 3. 创建控制器实例
        let childVc = personType.init()
        
//        let personClass = NSClassFromString(typeName)
//        let personType = personClass as? Person1.Type
//        let person1 = personType.init()
        print(childVc)
        var methodCount:UInt32 = 0
        let methodList = class_copyMethodList(Person1.self, &methodCount)
        for i in 0..<numericCast(methodCount) {
            if let method = methodList?[i] {
                let methodName = method_getName(method)
                print("方法列表:\(methodName)")
            }else {
                print("not fond method")
            }
        }
        
        
        var count:UInt32 = 0
        let proList = class_copyPropertyList(Person1.self, &count)
        for i in 0..<numericCast(count) {
            if let property = proList?[i]{
                let propertyName = property_getName(property);
                print("属性成员属性:\(String(utf8String: propertyName)! )")
            }else{
                print("没有找到你要的属性");
            }
        }
    }
    
    func reflectFunc(){
        let person = Person()
        person.age = 10
        person.name = "张三"
        let mirror: Mirror = Mirror.init(reflecting: person)
        print("对象类型为:\(mirror.subjectType)")
        for pro in mirror.children {
            print("\(pro.label!): \(pro.value)")
        }
    }
}
