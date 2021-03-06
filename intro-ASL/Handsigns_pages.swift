//
//  Handsigns_pages.swift
//  intro-ASL
//
//  Created by Justin Galvez on 3/23/22.
//

import Foundation
import SwiftUI
import CoreText

let E = Everything()

struct handsign: View{
    var char : String
    var body : some View{
        if let image = UIImage(named: "handsign \(char)"){
            Image(uiImage: image)
            Text("This is the handsign \(char)")
        }
    }
}


struct handsign_pizza: View{
    var body: some View{
        Link("How to say pizza", destination: URL(string: "https://www.youtube.com/watch?v=JpqNzdltzp8")!)
    }
}

struct handsign_turtle: View{
    var body: some View{
        Link("How to say turtle", destination: URL(string: "https://www.youtube.com/watch?v=0vX9AXhZ3ig")!)
    }
}

struct handsign_hello_how_are_you: View{
    var body: some View{
        Link("How to say 'Hello, how are you?'", destination: URL(string: "https://www.youtube.com/watch?v=3x9pPcMbDBY")!)
    }
}
//
//struct handsign_z: View{
//    var body: some View{
//        if let zebra = UIImage(named: "handsign z"){
//            Image(uiImage: zebra)
//        }
//    }
//}
//
//struct handsign_z: View{
//    var body: some View{
//        if let zebra = UIImage(named: "handsign z"){
//            Image(uiImage: zebra)
//        }
//    }
//}



