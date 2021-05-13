//
//  CustomView.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/7.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class CustomView: UIView {


    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func draw(_ rect: CGRect) {
        // Drawing code
//        self.drawSimpleView(rect)
        UIColor.systemBlue.set()
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(10)
        context?.setLineCap(.round)
        context?.move(to: CGPoint.init(x: 100, y: 100))
        context?.addLine(to: CGPoint.init(x: 200, y: 200))
        context?.setLineJoin(.round)
        context?.addLine(to: CGPoint.init(x: 200, y: 300))
        context?.strokePath()
    }
    
    
    
    
    func drawSimpleView(_ rect: CGRect) {
        let p = UIBezierPath.init(rect: rect)
        UIColor.systemBlue.setFill()
        p.fill()
    }

}
