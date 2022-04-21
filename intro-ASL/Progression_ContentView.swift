//
//  ContentView.swift
//  intro-ASL
//
//  Created by csuftitan on 3/9/22.
//

import SwiftUI

struct Progression_ContentView: View {
    @AppStorage("redIndex") var redIndex = 0.611
    @AppStorage("greenIndex") var greenIndex = 0.751
    @AppStorage("blueIndex") var blueIndex = 0.631
    
    init() {
       // Background color
//        UITabBar.appearance().backgroundColor = UIColor(Color(red: redIndex, green: greenIndex, blue: blueIndex))
        
        //Tab bar's text + Icon Color
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray

    }
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
        }.accentColor(Color(red: redIndex, green: greenIndex, blue: blueIndex))
    }
}


struct ProgressionBar: View {
    @State var progressValue: Float
    @State var lesson_name: String
    @AppStorage("redIndex") var redIndex = 0.611
    @AppStorage("greenIndex") var greenIndex = 0.751
    @AppStorage("blueIndex") var blueIndex = 0.631

    var body: some View {
        Text(lesson_name)
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(Color(red: redIndex, green: greenIndex, blue: blueIndex))
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width, height: geometry.size.height)
                    .opacity(0.5)
                    .foregroundColor(Color.bottomBar)
                Rectangle().frame(width: min(CGFloat(progressValue)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color(red: redIndex, green: greenIndex, blue: blueIndex))
            }
        }.cornerRadius(30.0)
    }
}


struct AchievmentTab: View {
    @AppStorage("redIndex") var redIndex = 0.611
    @AppStorage("greenIndex") var greenIndex = 0.751
    @AppStorage("blueIndex") var blueIndex = 0.631
    
    @State var progress = Progression(lessons: ["Lesson 1": 1, "Lesson 2" : 10])

    var body: some View {
       NavigationView {
            VStack() {
                HStack {
                    Text("Achievments")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                    Spacer()
                    NavigationLink(destination: Settings()) {
                        Image(systemName: "slider.horizontal.3")
                            .foregroundColor(Color.white)
                    }
                }
                .padding(.all)
                .background(Color(red: redIndex, green: greenIndex, blue: blueIndex))
                Spacer()
                VStack {
                    ScrollView{
                        ForEach(progress.progressList.sorted(by: <), id: \.key) { key, value in
                            ProgressionBar(progressValue: value, lesson_name: key)
                                .frame(height: 25)
                                .padding()
                        }
                    }
                }.padding(.all)
            }
       }
    }
}


struct ScoreTab: View {
    @AppStorage("redIndex") var redIndex = 0.611
    @AppStorage("greenIndex") var greenIndex = 0.751
    @AppStorage("blueIndex") var blueIndex = 0.631
    
    @State var scores = Scores(scores: ["Lesson 1" : 10, "Lesson 2" : 20, "Lesson 3" : 15])
    
    var body: some View {
        VStack {
            NavigationView {
                VStack {
                    HStack {
                        Text("Quizz Scores")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        Spacer()
                    }
                    .padding(.all)
                    .background(Color(red: redIndex, green: greenIndex, blue: blueIndex))
                    
                    List {
                        ForEach(scores.scores.sorted(by: <), id:\.key) {key, value in
                            Section(header: Text("\(key)")
                                .foregroundColor(Color(red: redIndex, green: greenIndex, blue: blueIndex))) {
                                    NavigationLink(destination: Text("\(key) Scores")
                                        .font(.subheadline)
                                        .fontWeight(.medium)) {
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
    
}

extension Color {
    static let pastelGreen = Color("PastelGreen")
    static let bottomBar = Color("bottomBar")
}

struct Progression_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Progression_ContentView()
    }
}
