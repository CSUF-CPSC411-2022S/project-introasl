//
//  quiz_tests.swift
//  intro-ASL
//
//  Created by Nguyen, Victor on 3/9/22.
//

import XCTest
@testable import intro_ASL

class QuizTest: XCTestCase
{
    func testCreateQuestion() {
        let quiz = Quiz()
        quiz.CreateQuestion()
        XCTAssertTrue(quiz.questions.count > 0)
    }

    func testCheckAnswer() {
        let quiz = Quiz()
        quiz.CreateQuestion()
        
        let question = quiz.questions[0].question
        let correctAnswer = quiz.answerDictionary[question]
        
        if let unwrapped = correctAnswer {
            quiz.CheckAnswer(unwrapped)
        }
        
        XCTAssertTrue(quiz.results[quiz.results.count - 1])
    }

    func testCheckAnswerFail() {
        let quiz = Quiz()
        quiz.CreateQuestion()
        
        let question = quiz.questions[0].question
        let correctAnswer = quiz.answerDictionary[question]
        
        if let unwrapped = correctAnswer {
            quiz.CheckAnswer(unwrapped)
        }
        
        XCTAssertFalse(quiz.results[quiz.results.count - 1])
    }    
}
