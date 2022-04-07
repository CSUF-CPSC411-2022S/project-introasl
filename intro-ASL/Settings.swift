//
//  Settings.swift
//  intro-ASL
//
//  Created by csuftitan on 4/6/22.
//

import SwiftUI

struct Settings: View {
    @AppStorage("redIndex") var redIndex = 1.0
    @AppStorage("greenIndex") var greenIndex = 1.0
    @AppStorage("blueIndex") var blueIndex = 1.0

    var body: some View {
        VStack {
            HStack {
                Text("Progression Bar Color")
                    .bold()
            }.padding()
            HStack {
                Button(action: {
                    redIndex = 255.0
                    greenIndex = 120.0
                    blueIndex = 0.5
                }) {
                    Text("Yellow")
                }
                .padding()
                .background(Color(red: 255.0, green: 120.0, blue: 0.5))
                .foregroundColor(.black)
                .clipShape(Capsule())

            }.padding()
            HStack {
                Button(action: {
                    redIndex = 0.3
                    greenIndex = 0.5
                    blueIndex = 255.0
                }) {
                    Text("Blue")
                }
                .padding()
                .background(Color(red: 0.3, green: 0.5, blue: 255.0))
                .foregroundColor(.black)
                .clipShape(Capsule())

            }.padding()
            HStack {
                Button(action: {
                    redIndex = 255.0
                    greenIndex = 0.7
                    blueIndex = 20.0
                }) {
                    Text("Pink")
                }
                .padding()
                .background(Color(red: 255.0, green: 0.7, blue: 20.0))
                .foregroundColor(.black)
                .clipShape(Capsule())
            }.padding()
            Spacer()
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
