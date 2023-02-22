//
//  ViewController.swift
//  28-自定义Log
//
//  Created by ld on 2023/2/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 1.获取打印所在的文件
        let file = (#file as NSString).lastPathComponent
        
        // 2.获取打印所在的方法
        let funcName = #function
        
        // 3.获取打印所在行数
        let lineNum = #line
        
        print("\(file):[\(funcName)](\(#line))--123")
        print("\(file):[\(funcName)](\(#line))--123")
        
        XMGLog(message: "hello swift")
    }


}

