//
//  Handsigns_pages.swift
//  intro-ASL
//
//  Created by Justin Galvez on 3/23/22.
//

import Foundation
import SwiftUI

let E = Everything()

struct handsign_a: View{
    var body: some View{
        if let apple = E.alphabet["a"]{
            Text(apple)
        }
    }
}

struct handsign_b: View{
    var body: some View{
        if let bat = E.alphabet["b"]{
            Text(bat)
        }
    }
}

struct handsign_z: View{
    var body: some View{
        if let zebra = E.alphabet["z"]{
            Text(zebra)
        }
    }
}

struct handsign_0: View{
    var body: some View{
        if let zero = E.numbers[0]{
            Text(zero)
        }
    }
}

struct handsign_9: View{
    var body: some View{
        if let nine = E.numbers[9]{
            Text(nine)
        }
    }
}

