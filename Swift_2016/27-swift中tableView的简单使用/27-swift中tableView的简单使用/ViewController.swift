//
//  ViewController.swift
//  27-swift中tableView的简单使用
//
//  Created by ld on 2023/2/22.
//

import UIKit

class ViewController: UIViewController {

    // MARK:- 懒加载的属性
    /// tableView的属性
    lazy var tableView : UITableView = UITableView()
    
    // MARK:- 系统回调函数
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        setupUI()
    }
 
}


// MARK:- 设置UI界面相关
extension ViewController {
    /// 设置UI界面
    func setupUI() {
        // 0.将tableView添加到控制器的View中
        view.addSubview(tableView)
        
        // 1.设置tableView的frame
        tableView.frame = view.bounds
        
        // 2.设置数据源
        tableView.dataSource = self
        
        // 3.设置代理
        tableView.delegate = self
        
        
    }
}

// MARK:- tableView的数据源和代理方法
// extension类似OC的category,也是只能扩充方法,不能扩充属性
extension ViewController : UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 1.创建cell
        let CellID = "CellID"
        var cell = tableView.dequeueReusableCell(withIdentifier: CellID)
        if cell == nil {
            // 在swift中使用枚举: 1> 枚举类型.具体的类型 2> .具体的类型
            cell = UITableViewCell(style: .default, reuseIdentifier: CellID)
        }
        
        // 2.给cell设置数据
        cell?.textLabel?.text = "测试数据:\(indexPath.row)"
        
        // 3.返回cell
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("点击了:\(indexPath.row)")
    }
    
}
