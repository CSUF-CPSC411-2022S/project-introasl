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
       
        
        
        if imageName == "A" || imageName == "B" || imageName == "Z"
        {
            Text( "\"\(imageName)\" is found in Alphabet lesson.")
                .font(.largeTitle).padding(.bottom, 20)
                
            Text(" Would you like to continue ? ")
            
            
            
            NavigationLink(destination: alpha()) {
                Text("Continue")
            }
          
            
        }
        
        else if imageName == "Good Morning" || imageName == "Hello, How Are You" || imageName == "Good Night"
        {
            Text( "\"\(imageName)\" is found in Phrases lesson.")
                .font(.largeTitle).padding(.bottom, 20)
                
            Text(" Would you like to continue ? ")
            
            
            
            NavigationLink(destination: phrases()) {
                Text("Continue")
            }
        }
        
        else if imageName == "0" || imageName == "1" || imageName == "2"  || imageName == "3" || imageName == "4" || imageName == "5" || imageName == "6" || imageName == "7" || imageName == "8" || imageName == "9"
        {
            Text( "\"\(imageName)\" is found in Numbers lesson.")
                .font(.largeTitle).padding(.bottom, 20)
                
            Text(" Would you like to continue ? ")
            
            
            
            NavigationLink(destination: num()) {
                Text("Continue")
            }
        }
        
        
        else if imageName == "Pizza" || imageName == "Turtle"
        {
            
            Text( "\"\(imageName)\" is found in Words lesson.")
                .font(.largeTitle).padding(.bottom, 20)
                
            Text(" Would you like to continue ? ")
            
            
            
            NavigationLink(destination: words()) {
                Text("Continue")
            }
            
            
        }
        
        
        
        
        
        
        
        
        //.background(Color(.systemGray6))
    }
}

struct keywords_Previews: PreviewProvider {
    static var previews: some View {
        keywords(imageName: "" )
    }
}

