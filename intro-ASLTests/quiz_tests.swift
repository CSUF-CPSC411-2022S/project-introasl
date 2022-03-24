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
    func testCreateQuestion()
    {
        let quiz = Quiz()
        quiz.CreateQuestion("Question A")
        XCTAssertNotNil(quiz.questions.contains("Question A"))
    }

    func testCreateQuestionFail()
    {
        let quiz = Quiz()
        quiz.CreateQuestion("Not A Question")
        XCTAssertNil(quiz.questions.contains("Question A"))
    }

    func testCheckAnswer()
    {
        let quiz = Quiz()
        quiz.CreateQuestion("Question A")
        
        let correctAnswer = quiz.answerDictionary["Question A"]
        
        if let unwrapped = correctAnswer
        {
            XCTAssert(quiz.CheckAnswer(unwrapped))
        }
    }

    func testCheckAnswerFail()
    {
        let quiz = Quiz()
        quiz.CreateQuestion("Question A")
        XCTAssertFalse(quiz.CheckAnswer("Wrong Answer"))
    }
/*
    func testTimer()
    {
        var quiz = Quiz(333.369)
        XCTAssertEqual(try quiz.timer, 333.369)
    }
*/
    
}
