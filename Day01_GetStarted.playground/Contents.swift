//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var amICool = true

amICool = !amICool

var feelGoodAboutMyself = amICool ? true : false

print(type(of: feelGoodAboutMyself))
print(type(of: str))
type(of: amICool)

var hello = "Hello"
var world = "world"

var helloWorld = "\(hello) \(world)"

helloWorld = helloWorld.capitalized
helloWorld = helloWorld.lowercased()

if helloWorld.contains("world") || helloWorld.contains("Hello") {
    helloWorld = helloWorld.replacingOccurrences(of: "world", with: "World")
}

helloWorld.count

func calculateTriangle(base: Int, height: Int) -> Int {
    let area = (base * height) / 2
    return area
}

print (calculateTriangle(base: 2, height: 4))
