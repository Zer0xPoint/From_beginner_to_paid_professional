//: Playground - noun: a place where people can play

import UIKit

class Animal {
    func move() {
    }
}

class Dog: Animal {
    override func move() {
        print("Run")
    }
}

class Hawk: Animal {
    override func move() {
        print("Fly")
    }
}

let dog = Dog()
let hawk = Hawk()

dog.move()
hawk.move()

//let f: Float = 2
//let d: Double = 3
//let a = f * d
