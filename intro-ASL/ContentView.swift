//
//  ContentView.swift
//  intro-ASL
//
//  Created by csuftitan on 3/9/22.
//

import SwiftUI

struct ContentView: View {
   @State var listofKeyword = []
    @State var searchText: String = ""
    
    @StateObject var searchbars = searchbar(searchText: "" )
    var body: some View
  {
       NavigationView
    {
           VStack(alignment: .leading )
     {
               
           List{
               
               ForEach(searchbars.words , id:\.self)
               { keyword in
                    HStack {
                        Text(keyword.capitalized)
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
