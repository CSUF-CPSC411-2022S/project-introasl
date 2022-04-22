//
//  Lessons.View
//  View for main menu
//
//  Created by Justin Galvez on 2/25/22.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        HomePage()
    }
}

struct main_menu : View{
    var body: some View {
        NavigationView{
            VStack {
                if let yay = UIImage(named: "introASL"){
                    Image(uiImage: yay)
                        Spacer()
                }
                
                Spacer()
                HStack(alignment: .center){
                    Text("What would you like to learn today?")
                        .padding()
                        .font(.custom("Arial", size: 22))
                }
                VStack{
                    Spacer()
                    NavigationLink(destination: alpha()){
                        Text(Lessons().menu_alphabet).padding()
                    }
                    NavigationLink(destination: num()){
                        Text(Lessons().menu_numbers).padding()
                    }
                    NavigationLink(destination: words()){
                        Text(Lessons().menu_words).padding()
                    }
                    NavigationLink(destination: phrases()){
                        Text(Lessons().menu_phrases).padding()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct alpha : View{
    var body: some View{
        NavigationView{
            List{
                Section(header: Text("Letters")){
                    NavigationLink(destination: handsign(char: "a")){
                        Text("A")
                    }
                    NavigationLink(destination: handsign(char: "b")){
                        Text("B")
                    }
                    NavigationLink(destination: handsign(char: "z")){
                        Text("Z")
                    }
                }
            }
        }
    }
}

struct num : View{
    var body: some View{
        NavigationView{
            List{
                Section(header: Text("Numbers")){
                    NavigationLink(destination: handsign(char: "0")){
                        Text("0")
                    }
                    NavigationLink(destination: handsign(char: "9")){
                        Text("9")
                    }
                }
            }
        }
    }
}

//etc

struct words : View{
    var body: some View{
        NavigationView{
            List{
                Section(header: Text("Words")){
                    NavigationLink(destination: handsign_pizza()){
                        Text("Pizza")
                    }
                    NavigationLink(destination: handsign_turtle()){
                        Text("Turtle")
                    }
                }
            }
        }
    }
}

struct phrases : View{
    var body: some View{
        NavigationView{
            List{
                Section(header: Text("Phrases")){
                    NavigationLink(destination: handsign_hello_how_are_you()){
                        Text("Hello, how are you")
                    }
                }
            }
        }
    }
}



//----------------------------------------End of Justin Work-----------------------------------------------


//Author: Daisy
//Date Added: 4-22-2022
struct HomePage: View {
    var body: some View {
        NavigationView {
            VStack {
                if let yay = UIImage(named: "introASL"){
                    Image(uiImage: yay)
                        Spacer()
                }
                Text("Welcome back!")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                Spacer()
                NavigationLink(destination: main_menu()) {
                    Text("Lessons")
                }
        //                NavigationLink(destination: QuizView()) {
        //                  Text("Quiz")
        //                }
                NavigationLink(destination: Progression_ContentView()) {
                    Text("Achievements")
                }
                NavigationLink(destination: ContentViewSearchbar()) {
                    Text("Search")
                }
                Spacer()
            }
        }.navigationBarHidden(true)
    }
}
