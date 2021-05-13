//
//  ClosureViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/7.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class ClosureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /**
         闭包表达式一般形式：
         {
             (参数列表) -> 返回值类型 in
             statements
         }
         */
        
        
//        callClosureMethod();
        
        closureMethod {
            print("尾随闭包--无参数")
        }

        closureMethod1(para1: "参数1") {
            print("尾随闭包--被调用的函数有参数")
        }
        
        
        let result = closureMethod2(para1: 100, para2: 10) { (a, b) -> Int in
            return a * b
        }
        print("结果为:\(result)")
    }
    
    func closureMethod2(para1: Int, para2: Int, closure:(Int, Int) -> Int) -> Int{
        print("被调用的函数参数为:\(para1)")
        return closure(para1,para2)
    }
    
    func callClosureMethod() {
        //普通闭包
        var closureName:(Int) -> Int
        closureName = { (a: Int) -> Int in
            return a * a
        }
        print("closureName 调用:\(closureName(11))")
        
        //无参数
        
        var closureName2:() -> Void
        closureName2 = { () -> Void in
            print("无参数闭包")
        }
        closureName2()
        
        //起别名
        typealias ClosureType = (Int) -> Int
        var closureName1: ClosureType
        closureName1 = { (a: Int) -> Int in
            return 2 * a
        }
        print("closureName1 调用:\(closureName1(11))")
    }
    

    func closureMethod(closure:()->Void) {
        print("调用前")
        closure()
        print("调用后")
    }
    
    //被调用的函数有参数
    func closureMethod1(para1: String, closure:()->Void) {
        print("被调用的函数参数为:\(para1)")
    }


}
