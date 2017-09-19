//: Playground - noun: a place where people can play

import UIKit

var optionalNumber: Int? = 5
var nonOptionalNumber: Int = 5

//Force unwarpping
if optionalNumber != nil {
    print("the value of optionalNumber is \(optionalNumber!)")
} else {
    //handle errors
}

//Binding
if let constantNumber = optionalNumber {
    print("constantNumber has a value of \(constantNumber)")
} else {
    print("optionalNumber is nil")
}

func intPrinter() {
    guard let constantNumber = optionalNumber else {return}
    print("constantNumber has a value of \(constantNumber)")
}

intPrinter()

//Implicitly unwarpped optionals
var assumedValue: Int! = nil
var optionalValue: Int? = 5
//types are different
print(assumedValue)
print(optionalValue)
//var implicitlyValue: Int = assumedValue

//Nil coalescing And Ternary Operator
let optionalInt: Int? = 5
let result = optionalInt ?? 0
print(result)//already unwarpped


class ComiconAttendees {
    var admissionBadge: AdmissionBadge?
    
    init(admissionBadge: AdmissionBadge?) {
        self.admissionBadge = admissionBadge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(numberOfDays: Int) {
        self.numberOfDays = numberOfDays
    }
}

let admissionBadge = AdmissionBadge(numberOfDays: 3)
let attendee = ComiconAttendees(admissionBadge: admissionBadge)

//Binding
if let daysAttendable = attendee.admissionBadge?.numberOfDays {
    print("You can attend Comic Con for \(daysAttendable) days")
} else {
    print("You Have to purchase a ticket to attend Comic Con")
}