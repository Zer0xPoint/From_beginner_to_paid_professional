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
