//
//  Progression.swift
//  intro-ASL
//
//  Created by csuftitan on 3/13/22.
//

import Foundation

struct Progression {
    private var lesson : Int
    
    var progressValue: Double {
        switch lesson {
            case 1...80: return Double(lesson) + 0.25
            default: return 0
        }
    }
    
    
    init(lesson: Int) {
        self.lesson = lesson
    }
}
