//
//  Scores.swift
//  intro-ASL
//
//  Created by csuftitan on 3/13/22.
//

import Foundation

struct Scores {
    var scores : [String:Int] = [:]
    
    //var updatedHighscores = scores.sorted{ $0.value > $1.value }

    init(scores: [String:Int] ) {
        self.scores = scores
    }
}
