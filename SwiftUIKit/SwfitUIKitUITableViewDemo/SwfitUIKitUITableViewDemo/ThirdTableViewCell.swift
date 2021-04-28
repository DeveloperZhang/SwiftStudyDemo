//
//  ThirdTableViewCell.swift
//  SwfitUIKitUITableViewDemo
//
//  Created by ZhangYu on 2021/4/27.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class ThirdTableViewCell: UITableViewCell {

    @IBOutlet weak var contentLabel: UILabel!
    
    private var _contentLabelString: String?
    var contentLabelString: String? {
        get {
            return _contentLabelString
        }
        set {
            _contentLabelString = newValue
            self.contentLabel.text = _contentLabelString
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
