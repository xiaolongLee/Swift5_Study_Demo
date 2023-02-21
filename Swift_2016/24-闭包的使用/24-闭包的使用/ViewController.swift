//
//  ViewController.swift
//  24-闭包的使用
//
//  Created by ld on 2023/2/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var tools : HttpTool = HttpTool()
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tools.loadData { jsonData in
             print("在ViewController拿到数据:\(jsonData)")
            self.view.backgroundColor = UIColor.red
        }
    }

}

