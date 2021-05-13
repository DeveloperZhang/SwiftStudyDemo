//
//  NSOperationViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/10.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class NSOperationViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let dataArray = ["把任务加入到队列addOperation", "自定义OperationQueue", "操作依赖"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return dataArray.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cellID = "testCell"
           var cell = self.tableView.dequeueReusableCell(withIdentifier: cellID)
           if cell == nil {
               cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
           }
           cell?.textLabel?.text = self.dataArray[indexPath.row]
           return cell!
       }
       
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            addOperationMethod()
            break
        case 1:
            customOperationMethod()
            break
        case 2:
            dependenceMethod()
            break
        default:
            break
        }
    }

    func addOperationMethod() {
        let operationQueue = OperationQueue()
        operationQueue.name = "operationQueue"
        print("OperationQueue最大执行队列:\(operationQueue.maxConcurrentOperationCount)")
        //同一时刻最大并发线程数量
        operationQueue.maxConcurrentOperationCount = 3
        print("OperationQueue最大执行队列:\(operationQueue.maxConcurrentOperationCount)")
        for _ in 1...5 {
            operationQueue.addOperation {
                for i in 1...100 {
                    print("当前线程:\(Thread.current)--输出i:\(i)")
                }
            }
        }
    }
    
    func customOperationMethod() {
        let operationQueue = OperationQueue()
        operationQueue.name = "operationQueue"
        let co = ConvenienceOperation.init(number: 10, name: "自定义操作队列")
        //主线程执行
        co.start()
        //子线程执行
//        operationQueue.addOperation(co)
    }
    
    func dependenceMethod() {
        let operationQueue = OperationQueue()
        let co = ConvenienceOperation.init(number: 1, name: "自定义操作队列")
        let co1 = ConvenienceOperation1.init(number: 2, name: "自定义操作队列1")
        //先执行co
        co1.addDependency(co)
        //等待队列执行完
        operationQueue.addOperations([co, co1], waitUntilFinished: true)
        //不等待队列执行完
//        operationQueue.addOperations([co, co1], waitUntilFinished: false)
        DispatchQueue.main.async {
            print("======主线程刷新======co1的number为:\(co1.number!)======")
        }

    }

}
