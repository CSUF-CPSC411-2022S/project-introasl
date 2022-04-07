//
//  quiz.swift
//  intro-ASL
//
//  Created by Nguyen, Victor on 3/9/22.
//

import Foundation
import SwiftUI

class Quiz: ObservableObject, Identifiable {
    @Published var currentChoices: [String]
    @Published var currentQuestion: String
    
    //  hard-coded test questions, will use database in future
    var answerDictionary: [String:String] = ["Question A":"Answer A", "Question B":"Answer B", "Question C":"Answer C", "Question D":"Answer D", "Question E":"Answer E", "åQuestion F":"Answer F"]
    //  do we need a timer?
    var timer: Float
    
    //  for finding the next question
    var index: Int
    var end: Bool

    var questions: [String]
    //var answers: [[String]]
    var results: [Bool]

    //doubt this is necessary but we'll see
    enum QuizError: Error {
        case exists
        case invalid
    }
    
    @AppStorage("highScore") var highScore = 0
    
    init() {
        self.timer = 60
        self.currentChoices = []
        self.results = []
        self.currentQuestion = ""
        self.questions = []
        //self.answers = [[]]
        self.index = 0
        self.end = false
    }

    //  NYI
    func DisplayTimer() {
    
    }
        
    //  call using button in view
    func NextQuestion() {
        if index < questions.count{
            index += 1
        }
        
        if index >= questions.count && self.end == false{
            self.end = true
            //print(results)
            var score = 0
            
            for answer in results {
                if answer == true {
                    score += 1
                }
            }
            highScore = score
            //index = 0
            
        } else {
            currentQuestion = questions[index]
            GenerateAnswers()//answers[index]
        }   
    }
    
    func ChooseQuestion(_ num: Int) {
        if num >= 0 && num < questions.count {
            index = num
            currentQuestion = questions[index]
            //currentChoices = answers[index]
        }
    }
    
    //  NOT READY FOR TESTING
    func LastQuestion() {
        if self.index > 0 {
            index -= 1
            currentQuestion = questions[index]
            //currentChoices = answers[index]
        }
    }
    
    //  generate 4 answers
    func GenerateAnswers() {
        var choices: [String] = []
        let answerKeys = self.answerDictionary.keys
        
        if let validAnswer = self.answerDictionary[questions[index]] {
            choices.append(validAnswer)
        }
        
        while choices.count < 4 {
            let random = self.answerDictionary[answerKeys.randomElement()!]
            
            if let unwrap = random {
                if (choices.contains(unwrap)) {
                    continue
                }
                choices.append(unwrap)
                //print(unwrap)
            }
        }
        choices.shuffle()
        //self.answers.append(choices)
        self.currentChoices = choices
    }
    
    //  create specific question using a string ex CreateQuestion("handsign_a")
    func CreateQuestion(_ question: String) {
        if let valid = self.answerDictionary[question] {
            if !questions.contains(valid) {
                questions.append(valid)
            }
        }
        GenerateAnswers()
    }
    
    //  create random question in dictionary
    func CreateQuestion() {
        let answerKeys = self.answerDictionary.keys
        var newQuestion = answerKeys.randomElement()
        
        while self.questions.contains(newQuestion!) {
            newQuestion = answerKeys.randomElement()
        }

        questions.append(newQuestion!)
        if index == 0 {
            currentQuestion = questions[0]
        }
        GenerateAnswers()
    }

    //  probably don't need to return anything
    func CheckAnswer(_ answer: String) {

        if self.answerDictionary[self.currentQuestion] == answer {
            results.append(true)
        }
        results.append(false)
    }

}
