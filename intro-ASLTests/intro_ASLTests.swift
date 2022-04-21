//
//  intro_ASLTests.swift
//  intro-ASLTests
//
//  Created by csuftitan on 3/9/22.
//

import XCTest
@testable import intro_ASL

class intro_ASLTests: XCTestCase {
    
    func testValidProgression() throws {
        let progress = Progression(lessons: ["Lesson 1" : 9])
        XCTAssertEqual(progress.progressList.values.first, Float(9)/100)
       }

    func testNegativeProgression() throws {
        let progress = Progression(lessons: ["Lesson 1" : -10])
        XCTAssertEqual(progress.progressList.values.first, 0.0)
    }

    func testZeroProgression() throws {
        let progress = Progression(lessons: ["Lesson 1" : 0])
        XCTAssertEqual(progress.progressList.values.first, 0.0)
    }

    func testGreaterThan100Progression() throws {
        let progress = Progression(lessons: ["Lesson 1" : 111])
        XCTAssertEqual(progress.progressList.values.first, 100.0)
    }
    
    func testEmptyScores() throws {
        let scores = Scores(scores: [:])
        XCTAssertTrue(scores.scores.isEmpty)
    }
    
    func testNonEmptyScores() throws {
        let scores = Scores(scores: ["Quiz 1":10, "Quiz 2":15])

        XCTAssertEqual(scores.scores, ["Quiz 1":10, "Quiz 2":15])
    }
}
