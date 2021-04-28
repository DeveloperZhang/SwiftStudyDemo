//
//  SecondViewController.swift
//  SwfitUIKitUITableViewDemo
//
//  Created by ZhangYu on 2021/4/27.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var titleString : String = ""
    let myTableView : UITableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white;
        self.navigationItem.title = titleString
        
        
        self.view.addSubview(self.myTableView)
        self.myTableView.translatesAutoresizingMaskIntoConstraints = false
        let constraintV = NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[myTableView]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myTableView" : self.myTableView])
        let constraintH = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[myTableView]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myTableView" : self.myTableView])
        self.view.addConstraints(constraintV)
        self.view.addConstraints(constraintH)
        
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
        
        self.myTableView.register(SecondTableViewCell.self, forCellReuseIdentifier: "SecondTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : SecondTableViewCell = self.myTableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
        cell.contentLabelString = "Second Cell \(indexPath.row)"
        return cell
    }
    
    //可以不写
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50.0
    }
}
