//
//  NSThreadViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/8.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class NSThreadViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    
    
    @objc func threadMethod(obj: AnyObject) {
        print("当前线程为:\(Thread.current)")
        print("参数为:\(obj)")
        for i in 0...100 {
            if (i == 50) {
                //休眠1秒
//                Thread.sleep(forTimeInterval: 1)
                Thread.sleep(until: Date.init(timeInterval: 1, since: Date()))
            }
            print("当前线程为:\(Thread.current),计数器为:\(i)")
        }

    }
    
    @IBAction func createByInit(_ sender: Any) {
        print("当前线程为:\(Thread.current)")
        let thread =  Thread.init(target: self, selector: #selector(threadMethod(obj:)), object: "参数obj")
        // 线程加入线程池等待CPU调度，时间很快，几乎是立刻执行
        thread.name = "子线程1"
        thread.start()
        for i in 0...100 {
            print("当前线程为:\(Thread.current),计数器为:\(i)")
        }
    }
    
    @IBAction func createByDetachNewThreadSelector(_ sender: Any) {
        print("当前线程为:\(Thread.current)")
        /** 方法二，创建好之后自动启动 */
        Thread.detachNewThreadSelector(#selector(threadMethod), toTarget: self, with: "参数obj2")
        for i in 0...100 {
            print("当前线程为:\(Thread.current),计数器为:\(i)")
        }
    }
    
    
    @IBAction func createByPerformSelectorInBackground(_ sender: Any) {
        print("当前线程为:\(Thread.current)")
        //主线程执行
//        self.perform(#selector(threadMethod(obj:)), with: "参数obj3")
        /** 方法三，隐式创建，直接启动 */
        self.performSelector(inBackground: #selector(threadMethod(obj:)), with: "参数obj3")
        self.performSelector(inBackground: #selector(threadMethod(obj:)), with: "参数obj4")
        for i in 0...100 {
            print("当前线程为:\(Thread.current),计数器为:\(i)")
        }
    }
    
}
