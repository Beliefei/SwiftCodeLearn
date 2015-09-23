//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func repeat<T>(item :T, times: Int) -> [T]{
    var result = [T]
    
    for i in 0...times {
        result += item
    }
    
    return result
}