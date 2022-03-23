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
       let progress = Progression(lesson: 9)
       XCTAssertEqual(progress.progressValue, Float(9)/100)
       }

    func testNegativeProgression() throws {
       let progress = Progression(lesson: 0)
       XCTAssertEqual(progress.progressValue, 0.0)
    }

    func testZeroProgression() throws {
       let progress = Progression(lesson: -10)
       XCTAssertEqual(progress.progressValue, 0)
    }
    
    func testGreaterThan100Progression() throws {
       let progress = Progression(lesson: 112)
       XCTAssertEqual(progress.progressValue, 100)
    }
    
    func testEmptyScores() throws {
        let scores = Scores(scores: [:])
        XCTAssertTrue(scores.updatedScoreList.isEmpty)
    }
    
    func testNonEmptyScores() throws {
        let scores = Scores(scores: ["Quiz 1":10])
        XCTAssertEqual(scores.updatedScoreList, ["Quiz 1":10])
    }
}
