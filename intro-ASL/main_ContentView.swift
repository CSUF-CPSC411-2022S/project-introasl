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
        main_menu()
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
                    //NavigationLink(destination: handsign(letter: "a")){
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

