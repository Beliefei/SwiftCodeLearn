//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//控制流

//在if语句中   条件必须是一个布尔表达式
//可以一起使用if和let来处理值缺省的情况 有些变量的值是可选的 一个值可能是一个具体的值或者nil 表示值缺失
//在类型后面加一个问号来标记这个变量的值是可选的

var optionalString :String? = "Jhon Appleaseed"

var greeting = "Hello!"

if let name = optionalString {
    
    greeting = "Hello, \(name)"
    
}

//如果变量的可选值是nil 条件会判断为false 大括号中的代码会被跳过 如果不是nil 会将值赋给let后面的常量  这样代码中就可以使用这个值了


//switch 支持任意类型的数据以及各种比较操作   不仅是证书以及测试相等

let vegetable = "red pepper"

switch vegetable {

    case "celery":
        
        let vegetableComment = "Add some raisins and make ants on a log."
   
    case "cucumber", "watercress":
        
        let vegetableComment = "That would make a good tea sandwich."
    
    case let x where x.hasSuffix("pepper"):
        
        let vegetableComment = "Is it a spicy \(x)?"
    
    default:
        let vegetableComment = "Everything tastes good in soup."
    
    
}




//运行switch 中匹配到的句子之后  程序会退出switch语句  并不会继续向下运行，所以不需要在每个句子结尾写break

//可以使用for-in来遍历字典  需要两个变量来表示每个键值对

let interestingNumber = [
    "Prime":[2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 8],
    "Square": [1, 4, 9, 16, 25]
]

var largest = 0

var kKind :String?

for (kind, numbers) in interestingNumber
{
    
    for number in numbers {
        if  number > largest {
            
            largest = number
            kKind = kind
        }
    }
}

largest

kKind


//使用while 来重复运行 一段代码 直到不满足条件  循环可以在开头  可以在结尾

var n = 2

while n < 100 {
    
    n = n * 2
    
}

n

var m = 2

repeat {
    
    m = m * 2
    
}while m < 100

m

//这个do  好像  有问题
//do {
//     m=m*2
//    } while m < 100
//m


//你可以再循环中使用..来表示范围  也可以使用传统的写法 而这时等价的

var firstForLoop = 0

for i in 0...5{
    
    firstForLoop += i
    
}

firstForLoop

var secondForLoop = 0

for var i = 0;i < 6;++i{
    
    secondForLoop += i
    
}

secondForLoop



//函数和闭包


//使用func  来声明一个函数  使用名字和参数来调用函数  使用->来指定函数的返回值

func greet(name :String ,day :String ) -> String{
    return "hello my name is \(name),today is \(day)"
}

greet("AAA", day: "周五")


//使用一个元组来返回多个值

func getGasPrices() -> (Double, Double, Double){
    return(3, 4, 5)
}


getGasPrices()



//函数的参数是可变的  用一个数组来获取它们

func sumOf(numbers : Int...) ->Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}

sumOf()

sumOf(3, 4,5,6)

func average(numbers :Int ...) -> Int{
    
    var sum  = 0
    
    for number in numbers {
        
        sum += number
    }
    
    return sum/numbers.count
}


average(3, 4,5,6)

//函数是一等公民  这意味着函数可以作为另一个函数的返回值

func makeIncrementer() -> (Int -> Int){
    func addOne(number :Int) -> Int {
        return 1 + number
    }
    
    return addOne
}

var increment = makeIncrementer()

increment(7)

//函数 也可以当做参数传入传入另一个函数

func hasAnyMatches(list:[Int],condition:Int ->Bool)->Bool{
    for item in list{
        if condition(item){
            return true
        }
    }
    return false
}

func lessThanTen(number:Int)->Bool{
    return number < 10
}

hasAnyMatches([20, 10, 7, 21], condition: lessThanTen)



class BaseClass {
    var name:String
    
    init(name:String){
    
        self.name = name
    
    }
    
    func printMyMessage()->String{
        return "我的名字是\(name)"
    }
}


var testBaseClass = BaseClass(name: "AAAb")

print(testBaseClass.printMyMessage())


class SubClass: BaseClass {
    
    init(name:String,sub:String){
        
        self.subName = sub

        super.init(name: name)
        
    }
    
    var subName:String

    override func printMyMessage() -> String {
        return "自己的名字是\(subName)"
    }
}


var testSubName =  SubClass(name: "MMMM", sub: "-KKKK")

print(testSubName.printMyMessage())



