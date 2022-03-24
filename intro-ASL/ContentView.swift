//
//  ContentView.swift
//  intro-ASL
//
//  Created by csuftitan on 3/9/22.
//

import SwiftUI

struct ContentView: View {
   
    var body: some View
  {
       searcher()
        
 }
}






struct searcher : View{
    @State var listofKeyword = []
     @State var searchText: String = ""
     @StateObject var searchbars = searchbar(searchText: "" )
    var body: some View {
        
        NavigationView
     {
            VStack(alignment: .leading )
      {
                
            List{
                
                ForEach(searchbars.words , id:\.self)
                { keyword in
                     HStack {
                         Text(keyword.capitalized)
                         //if(keyword.capitalized == "Good Evening")
                        //{
                         NavigationLink(destination: Text(keyword.capitalized)) {
                             //Text(keyword.capitalized)
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
                     
                }
             }
      }
             .navigationTitle("ASL APP")
             .searchable(text: $searchbars.searchText)
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

