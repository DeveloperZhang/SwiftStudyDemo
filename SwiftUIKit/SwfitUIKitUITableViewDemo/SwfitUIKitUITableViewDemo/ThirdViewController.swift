//
//  ThirdViewController.swift
//  SwfitUIKitUITableViewDemo
//
//  Created by ZhangYu on 2021/4/27.
//  Copyright © 2021 MyZone. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var myTableView: UITableView!
    var titleString : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = titleString
        self.myTableView.register(UINib.init(nibName: "ThirdTableViewCell", bundle: nil), forCellReuseIdentifier: "ThirdTableViewCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : ThirdTableViewCell = self.myTableView.dequeueReusableCell(withIdentifier: "ThirdTableViewCell", for: indexPath) as! ThirdTableViewCell
        cell.contentLabelString = "Cell\(indexPath.row)"
        return cell
    }

}
