//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//类型的别名】、

typealias MyInt = Int

var c = MyInt.max


//元组。。。

//元组(tuples)把多个值组合成一个复合值。元组内的值可以使任意类型,并不要求是相 同类型。

let httpError = ("Net work Error", 404)

//你可以将一个元组的内容分解(decompose)成单独的常量和变量,然后你就可以正常使用它们了

let (statusCode, statusMessage) = httpError

statusCode

statusMessage

//如果你只需要一部分元组值,分解的时候可以把要忽略的部分用下划线(_)标记

let (justTheStatusCode,_) = httpError

justTheStatusCode

//此外,你还可以通过下标来访问元组中的单个元素,下标从零开始

httpError.0


httpError.1

//可以在定义元组的时候给单个元素命名

var http200Status = (statusCode: 200, description:"K")


http200Status.statusCode = 400



//可选绑定


//Swift 的 nil 和 Objective-C 中的 nil 并不一样。在 Objective-C 中,nil 是一个指向 不存在对象的指针。在 Swift 中,nil 不是指针——它是一个确定的值,用来表示值缺失。任何类型的可选都可以被设置为 nil,不只是对象类型。

//隐式解析可选

//第一次被赋值之后,可以确定一个可选总会有值。在这种情况下,
//每次都要判断和解析可选值是非常低效的,因为可以确定它总会有值。 这种类型的可选被定义为隐式解析可选(implicitly unwrapped optionals)。把想要用作可 选的类型的后面的问号(String?)改成感叹号(String!)来声明一个隐式解析可选。

let possibleString : String? = "mmmmmm"

print(possibleString!)   //不使用!   打印的话  会包含optional  使用！  可以表现为不可选

let assumedString :String! = "kkkkkk"

print(assumedString)    // 不需要感叹号

//可以把隐式解析可选当做一个可以自动解析的可选。要做的只是声明的时候把感叹号放到类型的结尾,而不是每次取值的可选名字的结尾。

//注意:如果你在隐式解析可选没有值的时候尝试取值,会触发运行时错误。和你在没有值的普通可选后面加一个惊叹号一样。

let possibleMyString :String!

//print(possibleMyString)  //出发错误
//
//if assumedString {
//
//}


//也可以在可选绑定中使用隐式解析可选来检查并解析它的值:

if let definiteString = assumedString{

}

////////断言

let age = 3

assert(age > 0, "___________________")




























