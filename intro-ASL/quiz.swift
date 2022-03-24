//
//  quiz.swift
//  intro-ASL
//
//  Created by Nguyen, Victor on 3/9/22.
//

import Foundation

class Quiz: ObservableObject, Identifiable {
    //  hard-coded test questions, will use database in future
    var answerDictionary: [String:String] = ["Question A":"Answer A", "Question B":"Answer B", "Question C":"Answer C", "Question D":"Answer D", "Question E":"Answer E", "åQuestion F":"Answer F"]
    //var question: String
    var timer: Float
    var questions: [String]
    @Published var currentChoices: [String]
    @Published var currentQuestion: String
    var results: [Bool]
    var index: Int
    var end: Bool
    
    enum QuizError: Error {
        case exists
        case invalid
    }
    
    init() {
        self.timer = 60
        self.currentChoices = []
        self.results = []
        self.currentQuestion = ""
        self.questions = []
        self.index = 0
        self.end = false
    }

    //  NYI
    func DisplayTimer() {
    
    }
    //  NYI
    func DisplayQuestion() {
        //  assign answers to buttons user can click
    }
    
    
    func NextQuestion() {
        index += 1
        
        if index >= questions.count {
            self.end = true
            print(results)
        } else {
            currentQuestion = questions[index]
            GenerateAnswers()
        }   
    }
    
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
                print(unwrap)
            }
        }
        choices.shuffle()
        self.currentChoices = choices
    }
    
    func CreateQuestion(_ question: String) {
        if let valid = self.answerDictionary[question] {
            if !questions.contains(valid) {
                questions.append(valid)
            }
        }
        if index == 0 {
            GenerateAnswers()
        }
    }
    
    func CreateQuestion() {
        let answerKeys = self.answerDictionary.keys
        var newQuestion = answerKeys.randomElement()
        
        while self.questions.contains(newQuestion!) {
            newQuestion = answerKeys.randomElement()
        }

        questions.append(newQuestion!)
        if index == 0 {
            currentQuestion = questions[0]
            GenerateAnswers()
        }
    }

    func CheckAnswer(_ answer: String) -> Bool {

        if self.answerDictionary[self.currentQuestion] == answer {
            results.append(true)
            return true
        }
        results.append(false)
        return false
    }

}
