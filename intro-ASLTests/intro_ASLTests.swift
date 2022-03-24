//
//  introASLTests.swift
//  introASLTests
//
//  Created by Justin Galvez on 2/25/22.
//

import XCTest
@testable import intro_ASL

class intro_ASLTests: XCTestCase {

    func testEverythingDictionary(){
        let manager = Everything()
        let managercheck = manager.alphabet["a"]
        
        XCTAssertEqual(managercheck, "☝️")
    }
    
    func testLessons(){
        let manager = Lessons()
        let managercheck = manager.menu_alphabet
        
        XCTAssertEqual(managercheck, "Alphabet")
    }
    
    func testCounter(){
        let manager = Everything()
        let managercheck = manager.alpha_count()
        
        XCTAssertEqual(managercheck, 3)
    }
}

