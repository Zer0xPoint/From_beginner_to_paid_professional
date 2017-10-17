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

extension Double: Number {
    var floatValue: Float {
        return Float(self)
    }
}

extension Int: Number {
    var floatValue: Float {
        return Float(self)
    }
}

var three: Double = 3
var four: Float = 4

three.floatValue + four

//Part2
class Question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init(type: QuestionType, query: String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
    }
}

enum QuestionType: String {
    case trueFalse = "The sky is blue"
    case multipleChoice = "Which one is protocol oriented programing language?"
    case shortAnswer = "What is the capital of Yunnan?"
    case essay = "Why you use Swift?"
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType: String {
    case trueFalse = "True"
    case multipleChoice = "Swift"
    case shortAnswer = "KunMing"
    case essay = "Light"
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator {
    func generateRandomQuestion() -> Question
}

class Quiz: QuestionGenerator {
    func generateRandomQuestion() -> Question {
        let randomNumber = Int(arc4random_uniform(4))
        let randomQuery = QuestionType.types[randomNumber].rawValue
        let randomAnswer = AnswerType.types[randomNumber].rawValue
        let randomQuestion = Question(type: QuestionType.types[randomNumber], query: randomQuery, answer: randomAnswer)
        return randomQuestion
    }
}

let quiz = Quiz()
quiz.generateRandomQuestion()
