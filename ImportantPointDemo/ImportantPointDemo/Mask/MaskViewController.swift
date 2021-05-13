//
//  MaskViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/8.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class MaskViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myView = UIView()
        myView.frame = CGRect.init(x: 110, y: 100, width: 100, height: 100)
        myView.backgroundColor = UIColor.purple
        self.view.addSubview(myView)
        myView.layer.mask = self.maskStyle2(rect: myView.bounds)
    }

    
    func maskStyle1(rect: CGRect) -> CAShapeLayer {
        let x = rect.width/2.0
        let y = rect.height/2.0
        let radius = min(x, y) * 0.8
        let cycle = UIBezierPath.init(arcCenter: CGPoint.init(x: x, y: y), radius: radius, startAngle: 0.0, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        let maskLayer =  CAShapeLayer()
        maskLayer.path = cycle.cgPath
        //非零
        maskLayer.fillRule = CAShapeLayerFillRule.nonZero
        return maskLayer
    }
    
    
    func maskStyle2(rect: CGRect) -> CAShapeLayer {
        let path = UIBezierPath.init(rect: rect)
        
        let x = rect.width/2.0
        let y = rect.height/2.0
        let radius = min(x, y) * 0.8
        let cycle = UIBezierPath.init(arcCenter: CGPoint.init(x: x, y: y), radius: radius, startAngle: 0.0, endAngle: 2 * CGFloat.pi, clockwise: true)
        path.append(cycle)
        
        let maskLayer =  CAShapeLayer()
        maskLayer.path = path.cgPath
        //奇偶
        maskLayer.fillRule = CAShapeLayerFillRule.evenOdd
        return maskLayer
    }


}
