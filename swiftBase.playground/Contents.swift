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

http200Status








































