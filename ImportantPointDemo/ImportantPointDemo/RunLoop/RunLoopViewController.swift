//
//  RunLoopViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/13.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class RunLoopViewController: UIViewController {

    private var isStop = false
    var thread: Thread?
    var threadLiving: Thread?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        threadLiving = Thread.init(target: self, selector: #selector(threadEnter), object: nil)
        threadLiving!.start()
    }

    @IBAction func normalThreadAction(_ sender: Any) {
        print(#function)
        thread = Thread.init(target: self, selector: #selector(threadAction), object: nil)
        thread!.start()
    }
    
    @IBAction func foreverLiveThreadAction(_ sender: Any) {
        print(#function)
        self.perform(#selector(threadAction1), on: self.threadLiving!, with: nil, waitUntilDone: false)
    }
    
    @IBAction func destroyLivingThread(_ sender: Any) {
        isStop = true
        CFRunLoopStop(CFRunLoopGetCurrent())
        threadLiving = nil
    }
    
    @objc func threadDo() {
        print(#function)
        print("当前线程\(Thread.current)")
    }
    
    @objc func threadEnter() {
        autoreleasepool(invoking: { () -> () in
            let runloop = RunLoop.current
            runloop.add(Port.init(), forMode: .default)
            print("启动runloop前mode----\(String(describing: runloop.currentMode))")
//            runloop.run()
            while !self.isStop && runloop.run(mode: .default, before: .distantFuture) {}
            print("Runloop 退出")
        })

    }
    
    @objc func threadAction() {
        print("子线程任务开始---\(Thread.current)")
        Thread.sleep(forTimeInterval: 2.0)
        print("子线程任务结束---\(Thread.current)")
    }
    
    @objc func threadAction1() {
        print("子线程任务开始---\(Thread.current)")
        print("启动runloop后mode----\(String(describing: RunLoop.current.currentMode))")
        Thread.sleep(forTimeInterval: 1.0)
        print("子线程任务结束---\(Thread.current)")
        
        print("thread is\(String(describing: self.thread))")
        print("threadLiving is\(String(describing: self.threadLiving))")
    }
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.perform(#selector(threadAction))
    }
    

}
