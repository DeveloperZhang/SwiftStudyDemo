//
//  SecondTableViewCell.swift
//  SwfitUIKitUITableViewDemo
//
//  Created by ZhangYu on 2021/4/28.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {

    let myLabel : UILabel = UILabel()
    private var _contentLabelString: String?
    
    var contentLabelString: String? {
        get {
            return _contentLabelString
        }
        set {
            _contentLabelString = newValue
            self.myLabel.text = _contentLabelString
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
     super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(self.myLabel)
        self.myLabel.translatesAutoresizingMaskIntoConstraints = false
        self.myLabel.textAlignment = .center
        let constraintV = NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[myLabel]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myLabel" : self.myLabel])
        let constraintH = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[myLabel]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myLabel" : self.myLabel])
        self.contentView.addConstraints(constraintV)
        self.contentView.addConstraints(constraintH)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
