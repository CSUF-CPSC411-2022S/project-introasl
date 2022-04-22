//
//  Settings.swift
//  intro-ASL
//
//  Created by csuftitan on 4/6/22.
//

import SwiftUI

struct Settings: View {
    @AppStorage("redIndex") var redIndex = 0.611
    @AppStorage("greenIndex") var greenIndex = 0.751
    @AppStorage("blueIndex") var blueIndex = 0.631

    var body: some View {
        VStack {

            HStack {
                Text("Choose Theme Color")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                        .stroke(Color(red: redIndex, green: greenIndex, blue: blueIndex), lineWidth: 5))
                    .foregroundColor(Color(red: redIndex, green: greenIndex, blue: blueIndex))
            }.padding()
            HStack {
                Button(action: {
                    redIndex = 0.611
                    greenIndex = 0.751
                    blueIndex = 0.631
                }) {
                    Text("")
                        .fontWeight(.semibold)
                        .frame(width: 65, height: 20)
                }
                .padding()
                .background(Color(red: 0.611, green: 0.751, blue: 0.631))
                .foregroundColor(.black)
                .clipShape(Capsule())

            }.padding()
            HStack {
                Button(action: {
                    redIndex = 0.731
                    greenIndex = 0.630
                    blueIndex = 0.767
                }) {
                    Text("")
                        .fontWeight(.semibold)
                        .frame(width: 65, height: 20)
                }
                .padding()
                .background(Color(red: 0.731, green: 0.630, blue: 0.767))
                .foregroundColor(.black)
                .clipShape(Capsule())

            }.padding()
            HStack {
                Button(action: {
                    redIndex = 0.565
                    greenIndex = 0.802
                    blueIndex = 0.972
                }) {
                    Text("")
                        .fontWeight(.semibold)
                        .frame(width: 65, height: 20)
                }
                .padding()
                .background(Color(red: 0.565, green: 0.802, blue: 0.972))
                .foregroundColor(.black)
                .clipShape(Capsule())

            }.padding()
            HStack {
                Button(action: {
                    redIndex = 0.918
                    greenIndex = 0.669
                    blueIndex = 0.695
                }) {
                    Text("")
                        .fontWeight(.semibold)
                        .frame(width: 65, height: 20)
                }
                .padding()
                .background(Color(red: 0.918, green: 0.669, blue: 0.695))
                .foregroundColor(.black)
                .clipShape(Capsule())
            }.padding()
            HStack {
                Button(action: {
                    redIndex = 0.942
                    greenIndex = 0.705
                    blueIndex = 0.467
                }) {
                    Text("")
                        .fontWeight(.semibold)
                        .frame(width: 65, height: 20)
                }
                .padding()
                .background(Color(red: 0.942, green: 0.705, blue: 0.467))
                .foregroundColor(.black)
                .clipShape(Capsule())
            }.padding()
            Spacer()
        }
        
    }
}

struct Progression_Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
