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

// Swift 的数组结构在被声明成常量和变量或者被传入函数与方法中时会相对于其他类型展现出不同的特性。
//数组使用有序列表存储相同类型的多重数据。相同的值可以多次出现在一个数组的不同位置 中。

//Swift 数组对存储数据有具体要求。 不同于 Objective-C 的 NSArray 和 NSMutableArray 类,他们可以存储任何类型的实例而且不􏰀供他们返回对象的任何本质信息。在 Swift 中, 数据值在被存储进入某个数组之前类型必须明确,方法是通过显式的类型标注或类型推断, 而且不是必须是 class 类型  Swift 中的数组是类型安全的,并且它们中包含的类型必 须明确。

var treeDouble = [Double](count: 3, repeatedValue: 10.0)


var mm = Array(count: 2, repeatedValue: 5)

//对字典来说,不可变性也意味着我们不能替换其中任何现有键所对应的值。不可变字典的内 容在被首次设定之后不能更改。 不可变行对数组来说有一点不同,当然我们不能试着改变 任何不可变数组的大小,但是我们可以重新设定相对现存索引所对应的值。这使得 Swift 数组在大小被固定的时候依然可以做的很棒。







































