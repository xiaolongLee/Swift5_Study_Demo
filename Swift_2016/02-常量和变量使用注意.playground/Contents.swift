import UIKit

// 1.在开发中优先使用常量,只有在需要修改时,在修改成var

// 2.常量本质:保存的内存地址不可以修改,但是可以通过内存地址拿到对象,之后修改对象内部的属性
//UIView *0x100 = UIView alloc] init];
//view = UIView alloc] init];
//view.backgroundColor = uiCOlor redColor];

let view : UIView = UIView()
// view = UIView() 错误写法
view.backgroundColor = UIColor.red
