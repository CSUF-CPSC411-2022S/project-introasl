//
//  quiz.swift
//  intro-ASL
//
//  Created by Nguyen, Victor on 3/9/22.
//

import Foundation

class Quiz
{
    //  hard-coded test questions, will use database in future
    var answerDictionary: [String:String] = ["Question A":"Answer A", "Question B":"Answer B", "Question C":"Answer C", "Question D":"Answer D", "Question E":"Answer E", "åQuestion F":"Answer F"]
    //var question: String
    var timer: Float
    var question: String
    var choices: [String]
    
    init()
    {
        self.timer = 60
        self.choices = []
        self.question = ""
    }

    //  NYI
    func DisplayTimer()
    {
    
    }
    //  NYI
    func DisplayChoices()
    {
        //  assign answers to buttons user can click
    }

    func CreateQuestion(_ question: String) 
    {
        var choices: [String] = []

        if let valid = self.answerDictionary[question]
        {
            self.question = question
            choices.append(valid)

            var answerKeys = self.answerDictionary.keys

            while choices.count < 4
            {
                var random = answerKeys.randomElement()
                
                if let unwrap = random
                {
                    if (choices.contains(unwrap))
                    {
                        continue
                    }
                    choices.append(unwrap)
                }
            }
                self.choices = choices
        }
        else
        {
            self.question = ""
        }

    }

    func CheckAnswer(_ answer: String) -> Bool
    {

        if self.answerDictionary[self.question] == answer
        {
            return true
        }
        

        return false
    }

}
