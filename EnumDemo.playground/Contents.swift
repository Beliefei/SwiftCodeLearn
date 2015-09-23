//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum Rank: Int {
    
    case Ace = 1
    
    case Two
    
    case MMM
    
    func simpleGetDescription()->String{
    
        switch self {
        case .Ace:
                return "ace"
        default:
                return "other"
        }
    }

}

let ace = Rank.Two

let acrValue = ace.rawValue

protocol ExampleProtocol {
     var simpleDescription: String { get }
    mutating func adjust()
}

extension Int: ExampleProtocol {
    var simpleDescription: String {
    return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
        
    }
}


var a = 10

a.adjust()