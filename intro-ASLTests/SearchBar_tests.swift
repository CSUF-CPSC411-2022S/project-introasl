//
//  SearchBar_tests.swift
//  intro-ASLTests
//
//  Created by csuftitan on 4/21/22.
//

import XCTest
@testable import intro_ASL   //@testable import intro_ASL

class searchbartest: XCTestCase {

    func testLetterExample()  {
           let Searcher = searchbar (searchText: "z")
           XCTAssertEqual(Searcher.words , ["z"])
           // it would equal to z since it exits in the array
       }
       
       func testWordExample()   {
           let Searcher = searchbar (searchText: "good morning")
           XCTAssertEqual(Searcher.words , ["good morning"])
           // it would equal to good morning since it exits in the array
           
       }
       
       func testFilterExample() {
           let Searcher = searchbar (searchText: "a")
           XCTAssertFalse(Searcher.words == ["a"]) //would return false ,since it would return all the results that have letter a
           
       }
       
       
   }
