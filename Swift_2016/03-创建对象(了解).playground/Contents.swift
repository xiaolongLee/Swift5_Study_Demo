import UIKit

// 1.创建UIView对象并且制定frame
let view : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))

// 2.设置UIView的属性
view.backgroundColor = UIColor.blue

// 3.给view对象内部添加子控件
// 3.1.创建子控件
// swift中使用枚举: 1.枚举的类型.具体的类型 2. .具体的类型

let btn : UIButton = UIButton(type: .contactAdd)

// 3.2.设置btn的位置
btn.center = CGPoint(x: 50, y: 50)

// 3.3.将子控件添加到View中
view.addSubview(btn)

