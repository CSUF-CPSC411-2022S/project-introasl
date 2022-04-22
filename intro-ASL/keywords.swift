//
//  keywords.swift
//  intro-ASL
//
//  Created by csuftitan on 4/21/22.
//

import SwiftUI

struct keywords: View {
    var imageName: String
    
    
    
    var body: some View {
       
      // Text(imageName)
        if imageName == "Good Night"
        {
            Text("hello")
        }
        else if imageName == "Good Morning"
        {
            Text("bye")
        }
    }
}

struct keywords_Previews: PreviewProvider {
    static var previews: some View {
        keywords(imageName: "" )
    }
}

