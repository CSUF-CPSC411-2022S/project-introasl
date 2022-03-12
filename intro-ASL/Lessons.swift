//
//  Lessons.swift
//  introASL
//
//  Created by Justin Galvez on 2/25/22.
//

import Foundation

class Everything{
    var alphabet = ["a": "☝️",//hand sign for a
                    "b": "🤙",//hand sign for b
                    //...
                    
                    "z": "✌️"]// hand sign for z
    var numbers = [0: "🤏",//hand sign for 0
                   //...
                        
                   9: "👊"//hand sign for 9
                        ]
    var words = ["hello" : "👋",
                 "bye" : "🤝",
                 "pizza" : "🤞"
                    //hand signs for these words
                            ]
    
    var phrases = ["Hello, How are you?":"☝️ 👍 👎 ✊"] //place video or reference to one here
}

class Lessons : Everything {
    
    var menu_alphabet: String = "Alphabet"
    var menu_numbers: String = "Numbers"
    var menu_words: String = "Words"
    var menu_phrases: String = "Phrases"
//    var lessons: [String:[String:String]] //Will use to button that accesses alphabet dictionary
    
//    init(_ lessons: [String:[String:String]]){
//        self.lessons = lessons
//    }
//    init(lessons: [String:[String:String]]){
//        super.init(){
//            self.lessons = [menu_alphabet:alphabet]
//        }
//    }
}


