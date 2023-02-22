//
//  ViewController.swift
//  25-闭包的使用(循环引用)
//
//  Created by ld on 2023/2/22.
//

import UIKit

class ViewController: UIViewController {

    var tools : HttpTool = HttpTool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
         
        /* weakself?.view
        如果前面的可选类型,没有值,后面所有的代码都不会执行
        如果前面的可选类型,有值,系统会自动将weakself进行解包,并且使用weakself
        */
        
        // 解决循环引用的方式一:
        // 0x0 --> nil
//        weak var weakself = self
//        tools.loadData { jsonData in
//             print("在ViewController拿到数据:\(jsonData)")
//            weakself?.view.backgroundColor = UIColor.systemRed
//        }
        
        // 解决循环引用的方式二:
        // unowned
//        tools.loadData { [unowned self] jsonData in
//            print("在ViewController拿到数据:\(jsonData)")
//            self.view.backgroundColor = UIColor.red
//        }
        
        // 解决循环引用的方式三: 推荐使用该方式
//        tools.loadData { [weak self] jsonData in
//            print("在ViewController拿到数据:\(jsonData)")
//            self?.view.backgroundColor = UIColor.red
//        }
        
        // 尾随闭包:如果闭包作为方法的最后一个参数,那么闭包可以将()省略掉
        
       
    }
    
    
    // deinit相当OC中的dealloc方法,当对象销毁时会调用该函数
    deinit {
        print("ViewController -- deinit")
    }
}

