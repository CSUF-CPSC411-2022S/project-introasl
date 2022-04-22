//
//  Progression.swift
//  intro-ASL
//
//  Created by csuftitan on 3/13/22.
//

import Foundation

class Progression: ObservableObject, Identifiable {

    @Published var lessons : [String:Int] = [:]
    
    var progressList: [String:Float] {
        var list: [String:Float] = [:]
        for lesson in lessons {
            if (1...100).contains(lesson.value) {
                list[lesson.key] = (Float(lesson.value))/100
            }else if ((100...Int.max).contains(lesson.value)) {
                list[lesson.key] = Float(100)
            }else {
                list[lesson.key] = 0.0
            }
        }
        return list
    }

    init(lessons: [String:Int] ) {
        self.lessons = lessons
    }
}

//class ProgressionManager: ObservableObject {
//    @Published var progression: [Progression] = []
//
//    var progressList: [Progression] {
//        var list: [Progression] = []
//        if !progression.isEmpty {
//            for progress in progression {
//                list.append(progress)
//            }
//        }
//        return list
//    }
//
//    init() {
//
//    }
//}
