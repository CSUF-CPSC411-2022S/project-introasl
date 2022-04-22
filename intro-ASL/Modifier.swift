//
//  Modifier.swift
//  intro-ASL
//
//  Created by csuftitan on 4/6/22.
//

import SwiftUI

struct Progression_ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.black)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}
