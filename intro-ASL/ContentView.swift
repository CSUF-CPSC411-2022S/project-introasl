//
//  Lessons.View
//  View for main menu
//
//  Created by Justin Galvez on 2/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                HStack(alignment: .center) {
                    Text("Welcome to introASL").font(.title)
                }
                Spacer()
                HStack(alignment: .center){
                    Text("What would you like to learn today?").padding()
                }
                VStack{
                    Spacer()
//                    Button(action:{
//
//                    }){
//                        Text(Lessons().menu_alphabet).padding()
//                    }
//                    Button(action:{
//                        //NavigationLink
//                    }){
//                        Text(Lessons().menu_numbers).padding()
//                    }
//                    Button(action:{
//                        //NavigationLink
//                    }){
//                        Text(Lessons().menu_words).padding()
//                    }
//                    Button(action:{
//                        //NavigationLink
//                    }){
//                        Text(Lessons().menu_phrases).padding()
//                    }
                    NavigationLink(destination: alpha()){
                        Text(Lessons().menu_alphabet).padding()
                    }
                    NavigationLink(destination: num()){
                        Text(Lessons().menu_numbers).padding()
                    }
                    NavigationLink(destination: word()){
                        Text(Lessons().menu_words).padding()
                    }
                    NavigationLink(destination: phrase()){
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
                    NavigationLink(destination: handsign_a()){
                        Text("A")
                    }
                    NavigationLink(destination: handsign_b()){
                        Text("B")
                    }
                    NavigationLink(destination: handsign_z()){
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
                    NavigationLink(destination: handsign_0()){
                        Text("0")
                    }
                    NavigationLink(destination: handsign_9()){
                        Text("9")
                    }
                }
            }
        }
    }
}

//etc

struct word : View{
    var body: some View{
        Text("turtle")
    }
}

struct phrase : View{
    var body: some View{
        Text("strawberry")
    }
}

