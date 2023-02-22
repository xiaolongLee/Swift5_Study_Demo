//
//  ViewController.swift
//  26-懒加载的使用
//
//  Created by ld on 2023/2/22.
//

import UIKit

class ViewController: UIViewController {

    lazy var names : [String] = {
        
        print("-------")
        
        return ["why", "yz", "lmj"]
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        _ = names.count
    }


}

