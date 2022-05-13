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

struct QuizView: View
{
    @StateObject var quiz = Quiz()
    @AppStorage("highScore") var highScore = 0
    var body: some View {
        NavigationView {
            VStack {
                Text("Quizzes Homepage")
                NavigationLink(destination: QuestionView()) {
                    Text("Start Quiz")
                    }
                Spacer()
                Text("High Score: \(highScore)")
            }
        }.environmentObject(quiz)
    }
}

struct QuestionView: View
{
    @EnvironmentObject var quiz: Quiz
    var body: some View {
        VStack {
            if (!quiz.end) {
                Text("PLACEHOLDER: \(quiz.questions[quiz.index].question)")
                Text("👋")
                    .font(.custom("Courier New", size: 50))
                Spacer()
                ForEach(0..<4) { i in
                        //Text(quiz.currentChoices[0])
                    AnswerButton(i)
                }
            } else {
                ForEach(0..<quiz.results.count) { i in
                    if quiz.results[i] == true {
                        Text("\(i+1): Correct")
                    } else {
                        Text("\(i+1): Incorrect")
                    }
                }
                Text("Score: \(quiz.CalculateScore())")
            }
            Spacer()
        }.environmentObject(quiz)
    }
}

struct AnswerButton: View
{
    @EnvironmentObject var quiz: Quiz
    var index: Int
    
    init(_ i: Int) {
        index = i
    }
    var body: some View
    {
        HStack {
            if !quiz.end {
            Button {
                quiz.CheckAnswer(quiz.questions[quiz.index].choices[index])
                quiz.NextQuestion()
                } label: {
                Text("\(quiz.questions[quiz.index].choices[index])")
                }
            }
        }
        //Spacer()
    }
}

