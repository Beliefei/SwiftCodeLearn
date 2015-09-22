//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Shape {
    var numberOfSides:Int = 0
    
    var name: String
    
    init(name: String){
        
        self.name = name
    }
    
    func simpleDescription()->String{
        
        return "A shape with \(numberOfSides) sides."
        
    }
}

class NamedShape {
    
    var numberOfSides: Int = 0
    
    var name: String
    
    init(name :String){
        
        self.name = name
        
    }
    
    func simpleDescription()->String{
        
        return "A shape with \(numberOfSides) sides."
        
    }
}

class Square: NamedShape {
    
    var sideLength: Double
    
    init(sideLength: Double, name: String){
        
        self.sideLength = sideLength
        
        super.init(name: name)
        
        numberOfSides = 4
    }
    
    func area() -> Double{
        
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        
        return "A square with sides of length \(sideLength)."
    }
    
}

let testSquare = Square(sideLength: 5.2, name: "mySquare")

testSquare.area()

testSquare.simpleDescription()

/*
*练习  创建Circle
*/

class Circle: NamedShape {
    
    var r: Double
    
    init(r: Double, name: String){
        
        self.r = r
        
        super.init(name: name)
    }
    
    func area() -> Double{
        
        return r * r * 3.1415926
    }
    
    override func simpleDescription() -> String {
        return "A circle with of name -\(name)"
    }
    
}


var testCircle = Circle(r: 11.1, name: "Circle1")

testCircle.area()

testCircle.simpleDescription()


class EqualTriangle: NamedShape {
    
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name :String){
        self.sideLength = sideLength
        
        super.init(name: name )
        
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length \(sideLength)"
    }
    
    
    
    
}

var triangle = EqualTriangle(sideLength: 33, name: "三角形")

triangle.perimeter

triangle.perimeter = 10

triangle.sideLength


class TriangleAndSquare {
    var triangle :EqualTriangle{
        willSet{
            square.sideLength = newValue.sideLength
        }
    }
    
    
    var square: Square{
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name : String){
        square = Square(sideLength: size, name: name)
        
        triangle = EqualTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "aaSize")

triangleAndSquare.triangle.sideLength

triangleAndSquare.square.sideLength

triangleAndSquare.square = Square(sideLength: 100, name: "mmmm")

triangleAndSquare.triangle.sideLength









