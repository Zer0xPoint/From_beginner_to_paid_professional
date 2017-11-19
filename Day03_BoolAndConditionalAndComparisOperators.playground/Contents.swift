//: Playground - noun: a place where people can play

import UIKit

var amITheBestStudentEver: Bool = true

if true == false || true == true {
    print("Wow")
}

var hasDataFinisheDownloading: Bool = false
//...
hasDataFinisheDownloading = true
//Load UI and other app features

if 1 == 2 {
    print("Should not see this")
} else {
    print("Wow")
}

//Constants & Logic operators

//Logic or || Logic and &&

if false || true == false && true == true {
    print("This cant be happen!")
}

//Array Must init before use!!!

var emp1 = 20.0
var emp2 = 30.1

var empSalaries: [Double] = [20.0, 30.0]

print(empSalaries.count)
empSalaries.append(40.1)
print(empSalaries.count)
empSalaries.append(42.1)
empSalaries.reverse()
empSalaries.sort()
