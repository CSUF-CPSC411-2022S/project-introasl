//
//  searchbar.swift
//  intro-ASL
//
//  Created by csuftitan on 4/21/22.
//

import Foundation
import SwiftUI


class searchbar: ObservableObject {
    
    @Published var listofKeywords = keywordslist
    @Published var searchText : String
    
    
    
    var words: [String] {
        let lcwords = listofKeywords.map{$0.lowercased()}
        if  searchText.isEmpty
        {
            return lcwords.filter{$0.contains(searchText.lowercased())}
           // since searchText is empty , it would return nothing
        
        }
        else
        {
            return lcwords.filter{$0.contains(searchText.lowercased())}
            //since searchText has letter(s) , it would return results that is similar to searchText
        }
      
    }
    

    init(searchText: String  )
    {

    self.searchText =  searchText
   }
    
}

