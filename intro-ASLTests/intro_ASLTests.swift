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
       XCTAssertEqual(progress.progressValue, Double(9) + 0.25)
       }

    func testNegativeProgression() throws {
       let progress = Progression(lesson: 0)
       XCTAssertEqual(progress.progressValue, 0.0)
    }

    func testZeroProgression() throws {
       let progress = Progression(lesson: -10)
       XCTAssertEqual(progress.progressValue, 0)
    }
    
}
