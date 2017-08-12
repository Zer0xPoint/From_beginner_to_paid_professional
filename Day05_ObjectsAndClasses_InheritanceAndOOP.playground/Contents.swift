//: Playground - noun: a place where people can play

import UIKit

class Book {
    var title: String?
    var subTitle: String?
    var pages = 0
    var writerName: String?
    var values = 0
    var currentPage = 0
    
    init() {
        print("Im the parent")
    }
    
    func readBook(inPageOf: Int) {
        currentPage = currentPage + inPageOf
        print(currentPage)
    }
    
    func doNote() {
    }
}

let harryPotter = Book()
harryPotter.title = "Harry Potter"
harryPotter.subTitle = "Magic Stone"

func changeTitle(Book: Book) {
    Book.title = "WhatEverItIs"
}

changeTitle(Book: harryPotter)//pass by reference

harryPotter.title

if let title = harryPotter.title {
    print(title)
}

//inheritance And OOP

class Faction: Book {
    
    override init() {
        super.init()
        print("Im the child")
        title = "1984"
    }
    
    override func readBook(inPageOf: Int) {
        currentPage = currentPage + inPageOf * 2
        print(currentPage)
    }
}

harryPotter.readBook(inPageOf: 12)

let faction = Faction()
faction.readBook(inPageOf: 12)
