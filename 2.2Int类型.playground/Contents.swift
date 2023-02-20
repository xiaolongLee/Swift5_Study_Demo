import UIKit

//整型
//有符号
//Int8 : 有符号8位整型
//Int16 : 有符号16位整型
//Int32 : 有符号32位整型
//Int64 : 有符号64位整型
//Int : 和平台相关(默认,相当于OC的NSInteger)
//无符号
//UInt8 : 无符号8位整型
//UInt16 : 无符号16位整型
//UInt32 : 无符号32位整型
//UInt64 : 无符号64位整型
//UInt : 和平台相关(常用,相当于OC的NSUInteger)(默认)
var a = 1
var b = 2
var c : Int = 2
var d : Int8 = 3
var e : UInt = 4
// 可以通过min和max属性来获取某个类型的最小值和最大值
let minValue = UInt8.min
let maxValue = UInt8.max

var f = 5
 
f.bigEndian   //通过大端属性，查看低地址可以存放的最高的有效字节数
f.littleEndian //通过小端属性，查看低地址可以存放的最低的有效字节数
f.byteSwapped  //查看字节顺序交换后的当前整数
f.description  // 查看当前整数转换为字符串后的值
f.advanced(by: 1) // 获得当前整数在增加指定数量之后的值
f.distance(to: 8) // //获得当前整数在指定整型数值的差值

