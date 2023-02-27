import UIKit

var airports : Dictionary<String,String> = ["DUB": "Dublin", "TYO": "Tokyo"]
var firstStudent = ["Name" : "Peter", "Age" : "12"]
var secondStudent :Dictionary<String, Any> = ["Name" : "Peter", "Age" : 25]

secondStudent["Name"]
secondStudent["Age"]
secondStudent["Name"] = "John"
secondStudent["Age"] = 18
secondStudent["Gender"] = "Male"

secondStudent.count
secondStudent.description
secondStudent.isEmpty
// updateValue(_:forKey:) 方法可以设置或者更新特定键对应的值
secondStudent.updateValue("Jerry", forKey: "Name")
// 获取第一对键值
secondStudent.popFirst()
// 根据提供的key移除key和value
secondStudent.removeValue(forKey: "Gender")
secondStudent
secondStudent.removeAll()

firstStudent.first?.key
firstStudent.first?.value
firstStudent.reversed()

for key in firstStudent.keys {
    
    print(">>>>>\(key)")
}

for value in firstStudent.values {
    print(">>>>>\(value)")
}

for (key, value) in firstStudent {
    print(">>>>>\(key): \(value)")
}

var dicpts : Dictionary<String, String> = ["iː":"yi", "i,ɪ":"x", "e":"x", "æ":"x", "ɜː":"x", "ə":"x", "ʌ":"x", "uː":"x", "u,ʊ":"x", "ɔː":"x", "ɔ,ɒ":"x", "ɑː":"x", "ei,eɪ":"x", "ai,aɪ":"x", "ɔi,ɔɪ":"x", "au,aʊ":"x", "əu,əʊ":"x", "iə,ɪə":"x", "eə,ɛə":"x", "uə,ʊə":"x", "p":"x", "t":"x", "k":"x", "b":"x", "d":"x", "ɡ":"x", "f":"x", "s":"x", "ʃ":"x", "θ":"x", "h":"x", "v":"x", "z":"x", "ʒ":"x", "ð":"x", "r":"x", "tʃ":"x", "tr":"x", "ts":"x", "dʒ":"x", "dr":"x", "dz":"x", "m":"x", "n":"x", "ŋ":"x", "l":"x", "j":"x", "w":"x"]

let keys = Array(dicpts.keys).sorted()
print(keys[0])
