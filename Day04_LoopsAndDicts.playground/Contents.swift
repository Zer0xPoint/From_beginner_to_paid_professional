//: Playground - noun: a place where people can play

import UIKit

var salaries = [3.0,4.0,5.0,1.0]

var index = 0
repeat {
    salaries[index] = salaries[index] + (salaries[index] * 0.10)
    print(salaries[index])
    index += 1
} while (index < salaries.count)

for i in 0..<salaries.count {
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
    print(salaries[i])
}
// for some_Number in range
for i in 0...3 {
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
    print(salaries[i])
}
// for each_items in all
for salarie in salaries {
    print("salaries \(salarie)")
}

//Dicts
var initDicts = [String: String]()

var airports: [String: String] = [:]

airports["CHQ"] = "ChongQing"
airports["KUM"] = "KunMing"

airports["Ku"] = nil

for(airportName, airport) in airports {
    print("\(airport): \(airport)")
}
//traversal by keys
for key in airports.keys {
    print(key)
}
//traversal by values
for value in airports.values {
    print(value)
}

airports = [:]

airports.isEmpty
airports.count
