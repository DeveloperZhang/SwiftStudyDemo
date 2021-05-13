//
//  TimerViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/12.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    var displayLink: CADisplayLink?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func performAction(_ sender: Any) {
        self.performSelector(inBackground: #selector(performMethod(param:)), with: "参数A")
    }
    
    
    @IBAction func timmerAction(_ sender: Any) {
        
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { (timer) -> Void in
            print(timer)
        }
        print("Waiting...")
        
//        let timerBlock: (Timer) -> Void = { (timer: Timer) -> Void in
//            print(timer)
//        }
//        Timer.scheduledTimer(withTimeInterval: TimeInterval(2), repeats: true, block: timerBlock)
    }
    
    @objc func performMethod(param: Any) {
        Thread.sleep(forTimeInterval: 2)
        print("\(#function)--参数:\(param)")
    }

    
    @IBAction func gcdAction(_ sender: Any) {
        print("Waiting...")
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            print("2秒后执行")
        }
    }
    
    
    @IBAction func caDisplayLinkAction(_ sender: Any) {
        displayLink = CADisplayLink.init(target: self, selector: #selector(displayFunc))
        displayLink?.add(to: RunLoop.current, forMode: .default)
    }
    
    @objc func displayFunc(){
        print("2秒后执行--屏幕刷新帧率:\((displayLink?.duration)!)")
        //销毁
//        displayLink?.invalidate()
    }
}
