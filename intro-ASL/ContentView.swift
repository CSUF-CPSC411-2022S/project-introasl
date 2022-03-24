//
//  ContentView.swift
//  intro-ASL
//
//  Created by csuftitan on 3/9/22.
//

//
//  ContentView.swift
//  intro-ASL
//
//  Created by csuftitan on 3/9/22.
//

import SwiftUI

struct ContentView: View
{
    @StateObject var quiz = Quiz()

    var body: some View {
        NavigationView {
            VStack {
                Text("Quizzes Homepage")
                NavigationLink(destination: QuestionView()) {
                    Text("Start Quiz")
                }
            }
            .onAppear {
                for _ in 1...5 {
                    quiz.CreateQuestion()
                }
                print("\(quiz.currentChoices)")
            }
        }.environmentObject(quiz)
    }
}

struct QuestionView: View
{
    @EnvironmentObject var quiz: Quiz
    var body: some View {
        VStack {
            Text("PLACEHOLDER: \(quiz.currentQuestion)")
            Text("👋")
                .font(.custom("Courier New", size: 50))
            Spacer()
            
            ForEach(0..<4) { i in
                //Text(quiz.currentChoices[0])
                AnswerButton(i)
            }
            
            Spacer()
        }.environmentObject(quiz)
    }
}

struct ResultsView: View {
    @EnvironmentObject var quiz: Quiz
    
    var body: some View {
        VStack {
            Text("Results")
            
            VStack {
                ForEach(0..<quiz.results.count) { i in
                    Text("\(quiz.results[i].description)")
                }
            }
        }
    }
}

struct AnswerButton: View
{
    @EnvironmentObject var quiz: Quiz
    @State private var showResultsView = false

    var index: Int
    
    init(_ i: Int) {
        index = i
    }
    var body: some View
    {
        //NavigationView {
            HStack {
                Button {
                    quiz.CheckAnswer(quiz.currentChoices[index])
                    quiz.NextQuestion()
                    self.showResultsView = quiz.end
                } label: {
                    Text("\(quiz.currentChoices[index])")
                }
                
            }
     //   }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
