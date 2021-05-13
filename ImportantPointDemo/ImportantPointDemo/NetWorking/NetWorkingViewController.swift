//
//  NetWorkingViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/12.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class NetWorkingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func requestAction(_ sender: Any) {
        alamofireFunc()
//        let urlStr = "http://127.0.0.1:8080/out"
//        let session = URLSession.shared
//        let urls = URL.init(string: urlStr)
//        let request = URLRequest.init(url: urls!)
//        let task = session.dataTask(with: request) { (data, response, error) in
//            if error == nil {
//                let result = String.init(data: data!, encoding: .utf8)
//                print("data is:\(result!)")
//            }else {
//                print("error is:\(data!)")
//            }
//        }
//        task.resume()
    }
    
    func alamofireFunc() {
//        let urlStr = "http://127.0.0.1:8080/out"
//        let request = AF.request(urlStr)
//        request.responseString { (response) in
//            print(response)
//        }
    }
}
