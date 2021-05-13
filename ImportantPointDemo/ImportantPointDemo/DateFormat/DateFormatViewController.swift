//
//  DateFormatViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class DateFormatViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchDate()
        fetchDateString()
        fetchTimeStamp()
        fetchTimeStampOld()
    }
    
    //获取当前日期
    func fetchDate() {
        print(#function)
        let now = Date()
        print("当前时间:\(now)")
    }
    
    //获取格式化后的日期
    func fetchDateString() {
        print(#function)
        let now = Date()
        let dateFormmatter = DateFormatter()
        dateFormmatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let dateString = dateFormmatter.string(from: now)
        print("当前时间:\(dateString)")
    }
    
    //从2001年起的时间戳(10位)
    func fetchTimeStamp() -> Int {
        //从2001年起的时间戳
        let time = Date.timeIntervalSinceReferenceDate
        let timeStamp = Int(time)
        print("2001年1月1日期的时间戳:\(timeStamp)")
        return timeStamp
    }
    
    //从1970年起的时间戳(10位)
    func fetchTimeStampOld() -> Int {
        //从2001年起的时间戳
        let time = Date.timeIntervalSinceReferenceDate
        let between = Date.timeIntervalBetween1970AndReferenceDate
        let timeStamp = Int(time) + Int(between)
        print("1970年1月1日期的时间戳:\(timeStamp)")
        return timeStamp
    }
}
