//
//  SandBoxUtil.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class SandBoxUtil: NSObject {
    //获取沙盒根路径
    class func fetchRootPath() -> (String) {
        let home = NSHomeDirectory()
        return home
    }

    //获取沙盒Document路径
    class func fetchDocumentPath() -> (String) {
        let documentPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last
        return documentPath!
    }
    
    //获取沙盒Library路径,包含Cache和Preference
    class func fetchLibraryPath() -> (String) {
        let libraryPath = NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).last
        return libraryPath!
    }
    
    //临时目录路径Temp
    static func fetchTempPath() -> (String) {
        let tempPath = NSTemporaryDirectory()
        return tempPath
    }
    
}
