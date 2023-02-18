import UIKit

 let urlString = "http://www.520it.com"

// 1.普通写法
let url : NSURL? = NSURL(string: urlString)
if url != nil {
    let request = NSURLRequest(url: url! as URL)
}


// 可选绑定
if let url = url {
    let request = NSURLRequest(url: url as URL)
}

// 可选绑定的简介写法
if let url = NSURL(string: urlString) {
    let request = NSURLRequest(url: url as URL)
}
