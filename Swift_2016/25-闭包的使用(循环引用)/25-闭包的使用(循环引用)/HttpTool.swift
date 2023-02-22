//
//  HttpTool.swift
//  25-闭包的使用(循环引用)
//
//  Created by ld on 2023/2/22.
//

import UIKit

class HttpTool: NSObject {
    var callBack : ((_ jsonData : String) -> ())?
    
    // 闭包的类型: (参数列表) -> (返回值类型)
    func loadData(callBack : @escaping (_ jsonData : String) -> ())  {
        self.callBack = callBack
        
        DispatchQueue.global(qos: .default).async {
            print("发送网络请求:\(Thread.current)")
            DispatchQueue.main.async {
                print("获取到数据,并且进行回调:\(Thread.current)")
                 callBack("JSONData数据")
            }
        }
    }
}
