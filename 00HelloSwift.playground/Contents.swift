//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//swift -----第一节  say hello world
print("hello world")



//swift -----第二节 简单值
    //使用let来声明变量 一个常量的值在编译时不需要获取 但是你只能为它赋值一次  也就是这样一个值 你只需要决定它一次 但是却有可能使用很多次、
    //使用 var来声明变量
    var myVariable = 42
    myVariable = 50
    let myConstant = 42

    //常量和变量的类型必须和你赋值给他们的值一样  然而声明类型是可选的， 声明的同时赋值的话 编译器会自动推断类型。

    //如果初始值没有提供足够的信息（或者没有初始值），那你需要在变量后面声明类型 用冒号分割
    let explicitDouble :Double
    explicitDouble = 70


/*
*  练习1.1
*/

let lable = "The width is "
let width = 94
let widthLab = lable + String(width)

//有一种更简单的把值转换成字符串的方法:把值写到括号中,并且在括号之前写一个反斜杠。

let apples = 3
let oranges = 5
let applesSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples+oranges) pieces of fruite"

/**
*  练习1.2
*/

var exeFloat = 90.0

var exeStringFloat = "the string count is \(exeFloat)"



//使用方括号[]来创建数组和字典,并使用下标或者键(key)来访问元素。

var shoppingList = ["catfish", "water", "tulips"]

shoppingList[1] = "bottle of water"

var occupations = ["MMM":"Captain",
                    "LLLL":"Mechanic"]

//创建空数组 和 kongzidian

var emptyArray = [String]()

emptyArray.append("2")

emptyArray

let emptyDictionary = Dictionary<String,Float>()

var emptyInt = [Int]()

emptyInt.append(1)






















































