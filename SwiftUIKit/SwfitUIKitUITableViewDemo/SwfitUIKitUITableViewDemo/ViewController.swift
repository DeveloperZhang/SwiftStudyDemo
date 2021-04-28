//
//  ViewController.swift
//  SwfitUIKitUITableViewDemo
//
//  Created by ZhangYu on 2021/4/27.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let myTableView : UITableView = UITableView()
    let myDataSource : Array = ["代码编写","xib编写"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.myTableView)
        self.myTableView.translatesAutoresizingMaskIntoConstraints = false
        let constraintV = NSLayoutConstraint.constraints(withVisualFormat: "V:|-0-[myTableView]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myTableView" : self.myTableView])
        let constraintH = NSLayoutConstraint.constraints(withVisualFormat: "H:|-0-[myTableView]-0-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["myTableView" : self.myTableView])
        self.view.addConstraints(constraintV)
        self.view.addConstraints(constraintH)
        
        self.myTableView.dataSource = self
        self.myTableView.delegate = self
                
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = "testCell"
        var cell = self.myTableView.dequeueReusableCell(withIdentifier: cellID)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = self.myDataSource[indexPath.row]
        cell?.detailTextLabel?.text = "\(self.myDataSource[indexPath.row])的副标题"
        cell?.imageView?.image = UIImage(named: "cellImage")
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        if indexPath.row == 0  {
            let vc : SecondViewController = SecondViewController()
            vc.titleString = self.myDataSource[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }else {
            let vc : ThirdViewController = ThirdViewController()
            vc.titleString = self.myDataSource[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }


}

