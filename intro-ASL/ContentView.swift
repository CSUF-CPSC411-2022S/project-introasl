//
//  ContentView.swift
//  intro-ASL
//
//  Created by csuftitan on 3/9/22.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            AchievmentTab()
                .tabItem{
                    Label("Achievements", systemImage: "1.square.fill")
                }
            
            ScoreTab()
                .tabItem{
                    Label("Scores", systemImage: "2.square.fill")
                }
        }
    }
}


struct ProgressionBar: View {
    @Binding var progressValue: Double
    var body: some View {
        Text("Lesson 1").font(.headline)
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    Rectangle().frame(width: geometry.size.width, height: geometry.size.height)
                        .opacity(0.5)
                        .foregroundColor(.gray)
    
                    Rectangle().frame(width: min((progressValue)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                        .foregroundColor(.blue)
                }.cornerRadius(30.0)
        }
    }
}

struct AchievmentTab: View {
    @State var progress = Progression(lesson: 0)
    @State var value: String = ""
    @State var progressValue: Double = 0.0
    
    var body: some View {
        VStack {
            Text("Achievments")
                .padding(.all)
                .font(.largeTitle)
            HStack{
                ProgressionBar(progressValue: $progressValue)
                    .frame(height: 25)
                    .padding()
            }
            Spacer()
        }
    }
}

struct ScoreTab: View {
    var body: some View {
        VStack{
           Text("Scores")
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
