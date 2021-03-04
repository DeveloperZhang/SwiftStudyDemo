//
//  ViewController.swift
//  SwiftUIKitUIViewDemo
//
//  Created by ZhangYu on 2021/3/4.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        simpleDemo()
        complexDemo()
    }
    
    
    ///简单的Demo
    func simpleDemo(){
        //初始化视图
        let myView = UIView()
        //设置背景色
        myView.backgroundColor = UIColor.red
        //添加子视图
        view.addSubview(myView)
        //设置frame
        myView.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        //打印输出内容
        print("Hello UIView!")
    }
    
    
    ///常用方法Demo
    func complexDemo(){
        
        //初始化视图并且指定frame
        let myView = UIView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        //设置背景色
        myView.backgroundColor = UIColor.red
        //添加子视图
        view.addSubview(myView)
        
//        //默认情况下，一个视图的tintColor为nil，它会使用父视图tintColor属性的值.如果在视图层次结构中没有找到一个非默认的tintColor值，则会使用系统定义的颜色值(蓝色，RGB值为[0,0.478431,1]）,一般用于button的文字颜色,在UIView上没有效果
//        myView.tintColor = UIColor.green
        
//        //设置隐藏
//        myView.isHidden = true;
//        //设置透明度
//        myView.alpha = 0.5;
//
//        //frame
//        let frame = myView.frame
//        //bounds
//        let bounds = myView.bounds
//
//        //中心位置
//        let centerPoint = myView.center
//        print("frame is \(frame),\nbounds is \(bounds),\ncenterPoint is \(centerPoint)\n")
//
//        //父视图
//        let superView = myView.superview
//        print("superView is \(String(describing: superView))")
//
//        //子视图集合
//        let subViews: Array = myView.subviews
//        print("subViews is \(subViews)")
//
//        //接收view的window对象,如果该view被添加到某个window上则返回window对象,否则返回nil
//        let window = myView.window
//        print("window is \(String(describing: window))")
//
//        //判断是否是参数视图或者其子视图
//        let isDescendant = myView.isDescendant(of: view)
//        let isDescendant = myView.isDescendant(of: UIView())
//        print("isDescendant is \(isDescendant)")
//
//        //安全区域的边界值
//        print("myView.safeAreaInsets is \(myView.safeAreaInsets)")
//        //view的标识,默认为0
//        print("myView.tag is \(myView.tag)")
//
//        //设置view的tag
//        myView.tag = 100
//        //获取对应tag的view对象
//        let tagView = view.viewWithTag(100)
//        print("tagView  is \(tagView!)")
//
//        let subView = UIView(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
//        subView.backgroundColor = UIColor.systemBlue
//        myView.addSubview(subView)
//
//        /**
//         *[viewB convertRect:viewC.frame toView:viewA];
//         *计算viewB上的viewC相对于viewA的frame
//         *
//         */
//        print("myView.convert(subView.frame, to: self.view) is \(myView.convert(subView.frame, to: self.view))")
//
//        //简单是View动画
//        UIView.animate(withDuration: 1.0) {
//            myView.frame = CGRect(x: 150, y: 150, width: 100, height: 100)
//        }
//
        print("======Hello UIView!======")

    }

}

