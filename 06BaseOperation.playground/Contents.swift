//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//_________________________________________________________________
//基本运算

var siftFloat = 10.0/4

for i in 0...10{
    print("\(i)")
}

//Swift 的 String 类型是值类型。如果您创建了一个新的字符串值,那么当其进行常量、变量 赋值操作或在函数/方法中传递时,会进行值拷贝。在不同情况下,都会对已有字符串值创建新副本,并对该新副本进行传递或赋值。

//Swift 默认字符串拷贝的方式保证了在函数/方法中传递的是字符串的值,其明确您独有该字 符串的值,无论它来自哪里。您可以放心您传递的字符串本身不会被更改,除非是你自己更 改它。
func changeString(waitString:String) ->String{
    return "----"+waitString+"-----"
}

var myString = "hhhh"

changeString(myString)

myString

