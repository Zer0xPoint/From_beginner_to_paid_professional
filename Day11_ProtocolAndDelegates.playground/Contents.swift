//: Playground - noun: a place where people can play

import UIKit

protocol Number {
    var floatValue: Float { get }
}

extension Float: Number {
    var floatValue: Float {
        return self
    }
}

