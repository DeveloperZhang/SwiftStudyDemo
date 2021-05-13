//
//  FileManagerViewController.swift
//  ImportantPointDemo
//
//  Created by ZhangYu on 2021/5/6.
//  Copyright © 2021 VicentZ. All rights reserved.
//

import UIKit

class FileManagerViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.writeTextToFile()
        self.writeDataToFile()
        self.myImageView.image = self.readImageDataWithDocuments("pets.png")
        print("jsonString 文件内容为:\(self.readTextDataWithDocuments("test.txt"))")
    }

    func writeTextToFile() {
        let file = "test.txt"
        let stringPath = SandBoxUtil.fetchDocumentPath() as NSString
        let path = stringPath.appendingPathComponent(file)
        print("文件路径为:\(path)")
        let fileManager = FileManager.default
        let exitFile = fileManager.fileExists(atPath: path)
        if !exitFile {
            fileManager.createFile(atPath: path, contents: nil, attributes: nil)
        }
        let text = "test text"
        
        
        do {
//            try text.write(toFile: path, atomically: false, encoding: .utf8)
            try text.write(to: URL.init(fileURLWithPath: path), atomically: false, encoding: .utf8)
        } catch {
            print("写入文件失败")
        }
        print("写入文件成功")
    }
    
    
    func readTextDataWithDocuments(_ named: String) -> String {
        let stringPath = SandBoxUtil.fetchDocumentPath() as NSString
        let path = stringPath.appendingPathComponent(named)
        let data = try! Data.init(contentsOf: URL.init(fileURLWithPath: path))
        let jsonString = String.init(data: data, encoding: .utf8)
        return jsonString!
        
    }
    
    func writeDataToFile() {
        let image : UIImage = UIImage.init(named: "pets")!
        //JPG格式
//        let data = image.jpegData(compressionQuality: 0.8)! as NSData
        
        let data = image.pngData()
        let file = "pets.png"
        let stringPath = SandBoxUtil.fetchDocumentPath() as NSString
        let path = stringPath.appendingPathComponent(file)
        print("文件路径为:\(path)")
        do {
            try data?.write(to: URL.init(fileURLWithPath: path), options: .withoutOverwriting)
        } catch {
            
        }
        print("文件路径为:\(path)")
        
//        if let data = image.pngData() as NSData? {
//            let file = "pets.png"
//            let stringPath = SandBoxUtil.fetchDocumentPath() as NSString
//            let path = stringPath.appendingPathComponent(file)
//            print("文件路径为:\(path)")
//            data.write(toFile: path, atomically: true)
//        }
    }
    
    func readImageDataWithDocuments(_ named: String) -> UIImage{
        let stringPath = SandBoxUtil.fetchDocumentPath() as NSString
        let path = stringPath.appendingPathComponent(named)
        let image = UIImage.init(contentsOfFile: path)
        return image!
    }

}
