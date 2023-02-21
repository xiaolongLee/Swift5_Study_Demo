//
//  HttpTool.swift
//  24-闭包的使用
//
//  Created by ld on 2023/2/21.

import UIKit

class HttpTool: NSObject {
    // 闭包的类型: (参数列表) -> (返回值类型)
    func loadData(callback : @escaping(_ jsonData : String)  -> ()) {
        DispatchQueue.global(qos: .default).async {
            print("发送网络请求:\(Thread.current)")
            DispatchQueue.main.async {
                print("获取到数据,并且进行回调:\(Thread.current)")
                callback("JSONData数据")
            }
        }
    }
}
