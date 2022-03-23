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
    @Binding var progressValue: Float
    var body: some View {
        Text("Lesson 1").font(.headline)
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    Rectangle().frame(width: geometry.size.width, height: geometry.size.height)
                        .opacity(0.5)
                        .foregroundColor(.gray)
    
                    Rectangle().frame(width: min(CGFloat(progressValue)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                        .foregroundColor(Color.mint)
                }.cornerRadius(30.0)
        }
    }
}

struct AchievmentTab: View {
    @State var progress = Progression(lesson: 0)
    @State var value: String = ""
    @State var progressValue: Float = 0.0
    
    var body: some View {
        VStack {
            Text("Achievments")
                .padding(.all)
                .font(.largeTitle)
            VStack {
                ScrollView {
                    HStack{
                        ProgressionBar(progressValue: $progressValue)
                            .frame(height: 25)
                            .padding()
                    }
                }
            }
            Spacer()
            VStack {
                Button (action: {
                    let v = Int.random(in: 1..<101)
                    progress.lesson = v
                    progressValue = progress.progressValue
                    print(progressValue)
                }){
                    Text("Randomize")
                }
            }
            Spacer()

        }
        
    }
}


struct ScoreTab: View {
    @State var scores = Scores(scores: ["Lesson 1" : 10, "Lesson 2" : 20, "Lesson 3" : 15])
    @State var lesson : String = ""
    @State var score : Int = 0
    
    var body: some View {
        VStack {
            Text("Quizz Score")
                .padding(.all)
                .font(.largeTitle)
            NavigationView {
                List {
                    ForEach(scores.updatedScoreList.sorted(by: <), id:\.key) {key, value in
                            Section(header: Text("\(key)")) {
                                NavigationLink(destination: Text("\(key) Scores")) {
                                    Text("Score : \(value)")
                                }
                            }
                        }
                }
                .listSectionSeparator(.hidden)
            }
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
