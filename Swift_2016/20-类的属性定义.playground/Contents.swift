import UIKit

class Student: NSObject {
    // 定义属性
    // 定义存储属性
    var age : Int = 0
    var name : String?
    
    var mathScore : Double = 0.0
    var chineseScore : Double = 0.0
    
    // 定义计算属性: 通过别的方式计算到结果的属性,称之为计算属性
    var averageScore : Double {
        return (mathScore + chineseScore) * 0.5
    }
    
    // 定义类属性: 类属性是和整个类相关的属性.而且是通过类名进行访问
    static var courseCount : Int = 0
    
    
    /*
    // 定义方法,可以返回平均成绩
    func getAverageScore() -> Double {
        // 在swift开发中,如果使用当前对象的某一个属性,或者调用当前对象的某一个方法时,可以直接使用,不需要加self
        return (mathScore + chineseScore) * 0.5
    }
     */
}

// 给类属性进行赋值
Student.courseCount = 2

// 创建对象
let stu = Student()

// 给对象的属性赋值
stu.age = 10
stu.name = "yz"
stu.mathScore = 78
stu.chineseScore = 59.9

print(stu.age)

if let name = stu.name {
    print(name)
}

let avergaeScore = stu.averageScore

 
