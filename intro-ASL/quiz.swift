//
//  quiz.swift
//  intro-ASL
//
//  Created by Nguyen, Victor on 3/9/22.
//

import Foundation
import SwiftUI

class Quiz: ObservableObject, Identifiable {
    //  hard-coded test questions, will use database in future
    var answerDictionary: [String:String] = ["Question A":"Answer A", "Question B":"Answer B", "Question C":"Answer C", "Question D":"Answer D", "Question E":"Answer E", "Question F":"Answer F"]

    //  for finding the next question
    @Published var index: Int
    var end: Bool

    @Published var questions: [Question]
    //use to search for questions rather than iterating through an array of Questions
    var questionsAsStrings: [String]
    var results: [Bool]

    
    @AppStorage("highScore") var highScore = 0
    
    init() {
        self.results = []
        self.questions = []
        self.questionsAsStrings = []
        self.index = 0
        self.end = false
        
        //temp
        for _ in 1...5 {
            CreateQuestion()
        }
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
            
            var endScore = 0
            
            for answer in results {
                if answer == true {
                    endScore += 1
                }
            }
            highScore = endScore
            let results = QuizResults(id: -1, max: questions.count, score: endScore, questionsList: questions )
            let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
            let archiveURL = documentsDirectory.appendingPathComponent("quizresults").appendingPathExtension("plist")
            let propertyListEncoder = PropertyListEncoder()
            if let encodedQuizResult = try?
                propertyListEncoder.encode(results) {
                try? encodedQuizResult.write(to: archiveURL,
                                             options: .noFileProtection)
            }
            //index = 0
        }
    }
    
    func ChooseQuestion(_ num: Int) {
        if num >= 0 && num < self.questions.count {
            self.index = num
        }
    }
    
    //  NOT READY FOR TESTING
    func PrevQuestion() {
        if self.index > 0 {
            index -= 1
        }
    }
    
    //  generate 4 answers
    func GenerateAnswers(_ question: String, _ answer: String) -> [String] {
        var choices: [String] = []
        let answerKeys = self.answerDictionary.keys
        
        if let validAnswer = self.answerDictionary[question] {
            choices.append(validAnswer)
        }
        
        while choices.count < 4 {
            let random = self.answerDictionary[answerKeys.randomElement()!]
            
            if let unwrap = random {
                if (choices.contains(unwrap)) {
                    continue
                }
                choices.append(unwrap)
            }
        }
        
        choices.shuffle()

        return choices
    }
    
    //  create specific question using a string ex CreateQuestion("handsign_a")
    /*func CreateQuestion(_ question: String) {
        if let valid = self.answerDictionary[question] {
            if !questions.contains(valid) {
                questions.append(valid)
            }
        }
        GenerateAnswers()
    }*/
    
    //  create random question in dictionary
    func CreateQuestion() {
        let answerKeys = self.answerDictionary.keys
        var newQuestion = answerKeys.randomElement()
        
        
        while self.questionsAsStrings.contains(newQuestion!) {
            newQuestion = answerKeys.randomElement()
        }
        
        let answer = answerDictionary[newQuestion!]
        let choices = GenerateAnswers(newQuestion!, answer!)

        questionsAsStrings.append(newQuestion!)
        questions.append(Question(newQuestion!, answer!, choices))
    }
    
    func CheckAnswer(_ answer: String) {
        let currentAnswer = questions[index].answer
        if currentAnswer == answer {
            results.append(true)
        }
        else {
        results.append(false)
        }
    }
    
    func CalculateScore() -> Int {
        var score = 0
        for result in results {
            if result == true {
                score += 1
            }
        }
        //Reset()
        return score
    }
    
    func Reset() {
        results = []
        questions = []
        index = 0
        
        //temp
        for _ in 1...5 {
            CreateQuestion()
        }
    }
}

struct QuizResults: Codable {
    //  =========NYI===========
    //  use with database to determine which quiz this is
    var id: Int
    //  ========/NYI/==========
    var max: Int
    var score: Int
    var questionsList: [Question]
}
