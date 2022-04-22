//
//  SettingBar.swift
//  intro-ASL
//
//  Created by csuftitan on 4/21/22.
//

import SwiftUI
   


struct ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.black)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}


struct Settingsbar: View {
    @AppStorage("sizeMultiplier") var sizeMultiplier = 0.8
    var body: some View {
        VStack {
            HStack {
                Text("Change List size")
                    .bold()
                Spacer()
            }.padding()
            HStack {
                Button(action: {
                    sizeMultiplier = 0.8
                }) {
                    Text("Small")
                        .modifier(ButtonDesign())
                }
                Button(action: {
                    sizeMultiplier = 1.2
                }) {
                    Text("Medium")
                        .modifier(ButtonDesign())
                }
                Button(action: {
                    sizeMultiplier = 1.6
                }) {
                    Text("Large")
                        .modifier(ButtonDesign())
                }
            }.padding()
            Spacer()
        }
       // .font(.custom("Arial", size: CGFloat(16 * sizeMultiplier)))
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settingsbar()
    }
}

