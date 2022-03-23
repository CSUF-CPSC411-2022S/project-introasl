//
//  Scores.swift
//  intro-ASL
//
//  Created by csuftitan on 3/13/22.
//

import Foundation

class Scores: ObservableObject {
    @Published var scores : [String:Int] = [:]

    init(scores: [String:Int] ) {
        self.scores = scores
    }
}
