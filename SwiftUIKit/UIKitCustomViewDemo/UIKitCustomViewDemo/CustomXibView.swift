//
//  CustomXibView.swift
//  UIKitCustomViewDemo
//
//  Created by Vicent on 2021/5/1.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

@IBDesignable class CustomXibView: UIView {


    @IBOutlet var view: UIView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initViewFromNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initViewFromNib()
    }
    
    private func initViewFromNib(){
        // 需要这句代码，不能直接写UINib(nibName: "MyView", bundle: nil)，不然不能在storyboard中显示
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CustomXibView", bundle: bundle)
        self.view = nib.instantiate(withOwner: self, options: nil)[0] as? UIView
        self.view.frame = bounds
        self.addSubview(view)
    }

}
