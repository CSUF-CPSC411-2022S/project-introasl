//
//  question.swift
//  intro-ASL
//
//  Created by Victor on 4/7/22.
//

import Foundation

struct Question {
    var question: String
    var choices: [String]
    var answer: String
    
    init(_ question: String, _ answer: String, _ choices: [String]) {
        self.question = question
        self.answer = answer
        self.choices = choices
    }
    
    func CheckAnswer(_ answer: String) -> Bool{
        if self.answer == answer {
            return true
        }
        return false
    }
}
