//
//  Progression.swift
//  intro-ASL
//
//  Created by csuftitan on 3/13/22.
//

import Foundation

class Progression: ObservableObject, Identifiable {
    @Published var lesson : Int
//    @Published var name: String
    
    var progressValue : Float {
            switch lesson {
                case 1...100: return (Float(lesson))/100
                case 100...Int.max: return 100
                default: return 0
        }
    }
    
    
    init(lesson: Int) {
        self.lesson = lesson
//        self.name = name
    }
}

class ProgressionManager: ObservableObject {
    @Published var progression: [Progression] = []
    
    var progressList: [Progression] {
        var list: [Progression] = []
        if !progression.isEmpty {
            for progress in progression {
                list.append(progress)
            }
        }
        return list
    }
    
    init() {
        
    }
}
