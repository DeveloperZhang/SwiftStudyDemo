//
//  AnimationViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/7.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {
    
    @IBOutlet weak var animateView: UIView!

    let layer = CAShapeLayer()
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        drawCircle()
        addView()
        
    }
    
    
    func addView() {
        self.animateView.isHidden = false
    }
    
    func drawCircle() {
        layer.strokeEnd = 0
        layer.lineWidth = 6
        layer.fillColor = UIColor.clear.cgColor
        layer.strokeColor = UIColor.red.cgColor
        self.view.layer.addSublayer(layer)
    }

    @IBAction func animateAction(_ sender: Any) {

        
//        actionToAnimate1()
        
//        layer.path = UIBezierPath(arcCenter: self.view.center, radius: 100, startAngle: 0, endAngle: 2 * CGFloat(Double.pi), clockwise: true).cgPath
//        layer.strokeEnd = 1
        
//        viewAnimationMethod()
        viewAnimationMethod1()
    }
    
    
    func viewAnimationMethod1() {
        let animation = CABasicAnimation.init(keyPath: "opacity")
        animation.duration = 2.0
        animation.fromValue = 1.0
        animation.toValue = 0.0
        self.animateView.layer.add(animation, forKey: "My-animation")
        self.animateView.alpha = 0
        
//        CATransaction.begin()
//
//        self.animateView.backgroundColor = UIColor.green
//        CATransaction.commit()
    }
    
    func viewAnimationMethod() {
        UIView.animate(withDuration: 3.0) {
            self.animateView.backgroundColor = UIColor.green
        }
    }
    
    func actionToAnimate1() {
        timer = Timer(timeInterval: 0.05, target: self, selector: #selector(timerCallback), userInfo: nil, repeats: true)
        RunLoop.current.add(timer!, forMode: RunLoop.Mode.common)
        layer.path = UIBezierPath(arcCenter: self.view.center, radius: 100, startAngle: 0, endAngle: 2*CGFloat(Double.pi), clockwise: true).cgPath
        layer.strokeEnd = 1
    }

    @objc private func timerCallback() {
        print("========================\nmodelLayer: \t\(layer.model().strokeEnd)\npresentationLayer: \t\(layer.presentation()?.strokeEnd ?? 0)")
        if abs((layer.presentation()?.strokeEnd)! - 1) < 0.01 {
            if let _ = timer {
                timer?.invalidate()
                timer = nil
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
