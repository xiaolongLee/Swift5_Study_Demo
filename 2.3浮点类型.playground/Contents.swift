import Foundation

var a = 1.5
var b : Float = 2.5 //float表示32位浮点数，精度不高可以使用
var c = Float.infinity //获得指定类型的最大值

let num1 = 123.0
let str = String(format: "%.2f", 123/1000)

var d : Double = 3.5  //double表示双精度类型的浮点变量，高精度使用
d + 3.4
d - 0.9
d * 2.0
d / 4
d.addProduct(2.0, 4.0)  //将变量的值加上2，然后在乘以4
d.advanced(by: 1.1) // 将变量的值乘以1.1
d.distance(to: 16.0) // 获得变量的值和16的差值

var e = 24.0
e.significand  //获得浮点数值得有效位数
e.exponent  // 获得浮点数值的指数
e.binade  // 获得和24.0具有相同符合和指数的浮点数值，且有效位数为1
e.bitPattern //获得数值的编码的位模式
e.description //查看当前浮点数值转换为字符串后的值
e.isFinite //检查当前的浮点数值是否为有限数值
e.isInfinite //检查当前的浮点数值是否为无限数值
e.isLess(than: 6.0) //检查当前的浮点数值是否小于6.0
e.isLessThanOrEqualTo(6.0) //检查当前的浮点数值是否小于或等于6.0
e.isNaN //检查当前的浮点数值是否为非数字
e.isZero //检查当前的浮点数值是否为0
e.magnitude //获得当前浮点数的值大小
e.negate() //获得当前浮点数的负值（相反数）
e.negate()

12.5.rounded(.down) //将浮点数值转换为整型数值，并舍入到小于或等于源数值的最接近的允许值
-12.5.rounded(.down)

12.5.rounded(.up) //将浮点数值转换为整型数值，并舍入到大于或等于源数值的最接近的允许值
-12.5.rounded(.up)

12.5.rounded(.awayFromZero) //将浮点数值转换为整型数值，并舍入到幅度大于或等于源数值的允许值，即向远离0的方向舍入
-12.5.rounded(.awayFromZero)

12.5.rounded(.towardZero) //将浮点数值转换为整型数值，并舍入到幅度小于或等于源数值的允许值，即向靠近0的方向舍入
-12.5.rounded(.towardZero)

12.2.rounded(.toNearestOrAwayFromZero) //将浮点数值转换为整型数值，并舍入到最接近的允许值，如果两个值同样接近，则选择具有较大幅度的值
12.5.rounded(.toNearestOrAwayFromZero)
-12.2.rounded(.toNearestOrAwayFromZero)
-12.5.rounded(.toNearestOrAwayFromZero)

13.2.rounded(.toNearestOrEven) // 将浮点数值转换为整型数值，并舍入到最接近的允许值，如果两个值相同，则选择偶数
13.5.rounded(.toNearestOrEven)
12.5.rounded(.toNearestOrEven)

14.0.truncatingRemainder(dividingBy: 3.0) //以截取的方式，获得浮点数值除以指定值的余数
14.0.remainder(dividingBy: 3.0) //获得浮点数值除以指定值的余数
