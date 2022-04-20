//
//  ContentView.swift
//  intro-ASL
//
//  Created by csuftitan on 3/9/22.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View
    {    TabView {
       searcher()
          .tabItem {
              Image(systemName: "car")
              Text("Crosswalks")
          }
      
    }
 }
}



struct searcher : View{
    @State var listofKeyword = []
    @State var searchText: String = ""
     @StateObject var searchbars = searchbar(searchText: "" )
    @AppStorage("sizeMultiplier") var sizeMultiplier = 0.8
    var body: some View {
       
        NavigationView
     {
            VStack(alignment: .leading )
      {     //Text("Recent search:" )
         
            List{
                
                ForEach(searchbars.words , id:\.self)
                { keyword in
                     HStack {
                         Text(keyword.capitalized)
                         //if(keyword.capitalized == "Good Evening")
                         // NavigationLink(destination: Text(keyword.capitalized))
                        //{
                         NavigationLink(destination: keywords(imageName: keyword.capitalized)) {
                             
                         }
                        // }
                        // if(keyword.capitalized == "Good Morning")
                        // {
                        // NavigationLink(destination: Text("Goes to one of the lesson 2 ")) {
                             //Text(keyword.capitalized)
                        // }
                        // }
                         Spacer()
                         Image(systemName: "figure.walk")
                            }
                     .padding()
                     
                } .font(.custom("Arial", size: CGFloat(18 * sizeMultiplier)))
               
             }
            
          
          
              
              NavigationLink(destination: Settingsbar()) {
                  Text("⚙️ Settings")
              }  .padding(.leading, 150)
          
      }
             //TextField("Name", text: $searchText)
             .navigationTitle("ASL APP")
             .searchable(text: $searchbars.searchText)
             .background(Color(.systemGray6))
            // .searchable(text: $searchText)
             
    }
        
    }
    
}







struct ContentView_Previews: PreviewProvider
{
    
    static var previews: some View
    {
        
        ContentView()
    }
}

