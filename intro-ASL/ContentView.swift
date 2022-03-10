//
//  ContentView.swift
//  intro-ASL
//
//  Created by csuftitan on 3/9/22.
//

import SwiftUI

struct ContentView: View {
    private var listofKeywords = keywordslist
    @State var searchText = ""
    var body: some View {
       NavigationView{
           List{
                ForEach(words , id:\.self) { keyword in
                    HStack {
                        Text(keyword.capitalized)
                        Spacer()
                        Image(systemName: "figure.walk")
                }
                    .padding()
                    
                }
              //  .searchable(text: $searchText)
            }
            //.searchable(text: $searchText)
            .navigationTitle("ASL APP")
            .searchable(text: $searchText)
            
        }
        
        
    }
    var words: [String] {
        let lcwords = listofKeywords.map {$0.lowercased() }
        
        return searchText == "" ? lcwords : lcwords.filter{$0.contains(searchText.lowercased())}
    }
}

struct ContentView_Previews: PreviewProvider{
    
    static var previews: some View {
        
        ContentView()
    }
}
