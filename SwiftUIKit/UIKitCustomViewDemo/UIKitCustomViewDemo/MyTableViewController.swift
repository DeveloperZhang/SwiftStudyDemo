//
//  MyTableViewController.swift
//  UIKitCustomViewDemo
//
//  Created by Vicent on 2021/5/1.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    let dataArray = ["xib","code"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = "\(dataArray[indexPath.row])"
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc : UIViewController
        if indexPath.row == 0 {
            vc = XibViewController.init(nibName: "XibViewController", bundle: nil)
        }else {
            vc = CodeViewController()
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
