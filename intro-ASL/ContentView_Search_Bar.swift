//
//  ContentView_Search_Bar.swift
//  intro-ASL
//
//  Created by csuftitan on 4/21/22.
//

import SwiftUI

struct ContentViewSearchbar: View {
   
    var body: some View
    {    TabView {
       Searcher2()
          .tabItem {
              Image(systemName: "magnifyingglass")
              Text("Search Bar")
              
          }
        Settingsbar()
            .tabItem {
                Image(systemName: "gear")
                Text("Setting")
            } .background(Color(.systemGray6))
      
    }
 }
}



struct Searcher2 : View{
    @State var listofKeyword = []
    @State var searchText: String = ""
     @StateObject var Searchbars = searchbar(searchText: "" )
    @AppStorage("sizeMultiplier") var sizeMultiplier = 0.8
    var body: some View {
       
        NavigationView
     {
            VStack(alignment: .leading )
      {
         
            List{
                //Reference to searchbar implementation: https://www.youtube.com/watch?v=ReHwsu_fjKs
                ForEach(Searchbars.words , id:\.self)
                { keyword in
                     HStack {
                         Text(keyword.capitalized)

                         NavigationLink(destination: keywords(imageName: keyword.capitalized)) {
                             
                         }
                        
                        
                         Spacer()
                         Image(systemName: "hand.draw.fill")
                            }
                     .padding()
                     
                } .font(.custom("Arial", size: CGFloat(18 * sizeMultiplier)))
               
             }
            
          
          
              

          
      }
             
             .navigationTitle("intro ASL")
             .searchable(text: $Searchbars.searchText)
             .background(Color(.systemGray6))
          
             
    }
        
    }
    
}

