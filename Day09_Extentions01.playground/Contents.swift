//: Playground - noun: a place where people can play

import UIKit

extension String {
    func reverse() -> String {
        var characterArray = [Character]()
        for character in self.characters {
            characterArray.insert(character, at: 0)
        }
        print(type(of: characterArray))
        return String(characterArray)
    }
}

let name = "Lee"
name.reverse()

extension Int{
    mutating func square() -> Int {
        self = self * self
        return self
    }
}

var value = 9
value.square()
print(value)

//Mutating
extension Double {
    mutating func calculateArea() {
        let pi = 3.1415
        self = pi * (self * self)
    }
}

class Circle {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
}

var circle = Circle(radius: 3.3)
circle.radius
circle.radius.calculateArea()
circle.radius

