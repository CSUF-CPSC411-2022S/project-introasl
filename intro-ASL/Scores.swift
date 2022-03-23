//
//  Scores.swift
//  intro-ASL
//
//  Created by csuftitan on 3/13/22.
//

import Foundation

class Scores: ObservableObject {
    @Published var scores : [String:Int] = [:]
    
    var updatedScoreList : [String:Int] {
        var updatedScores : [String:Int] = [:]
        if !scores.isEmpty {
            for (key, value) in scores {
                updatedScores[key] = value
            }
        }
        return updatedScores
    }
    

    init(scores: [String:Int] ) {
        self.scores = scores
    }
}
