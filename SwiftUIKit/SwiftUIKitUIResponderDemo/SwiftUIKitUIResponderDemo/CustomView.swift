//
//  CustomView.swift
//  SwiftUIKitUIResponderDemo
//
//  Created by ZhangYu on 2021/4/26.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class CustomView: UIView {
    
    var viewName:String = ""

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //事件转发到下一个响应者
        if self.viewName.compare("myView2").rawValue == 0{
            self.next?.touchesBegan(Set<UITouch>(), with: event)
            return
        }
        print("view name is\(self.viewName)---\(#function)")
    }

}
