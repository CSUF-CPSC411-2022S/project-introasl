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
        var quiz = Quiz()
        quiz.CreateQuestion("Question A")
        XCTAssertEqual(try quiz.question, "Question A")
    }

    func testCreateQuestionFail()
    {
        let quiz = Quiz()
        quiz.CreateQuestion("Not A Question")
        XCTAssertEqual(try quiz.question, "")
    }

    func testCheckAnswer()
    {
        let quiz = Quiz()
        quiz.CreateQuestion("Question A")
        let correctAnswer = quiz.answerDictionary["Question A"]
        
        if let unwrapped = correctAnswer
        {
            XCTAssert(try quiz.CheckAnswer(unwrapped))
        }
    }

    func testCheckAnswerFail()
    {
        let quiz = Quiz()
        quiz.CreateQuestion("Question A")
        XCTAssertFalse(try quiz.CheckAnswer("Wrong Answer"))
    }
/*
    func testTimer()
    {
        var quiz = Quiz(333.369)
        XCTAssertEqual(try quiz.timer, 333.369)
    }
*/
    
}
