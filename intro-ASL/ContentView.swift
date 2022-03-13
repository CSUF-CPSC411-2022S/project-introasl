//
//  ContentView.swift
//  intro-ASL
//
//  Created by csuftitan on 3/9/22.
//

//
//  ContentView.swift
//  intro-ASL
//
//  Created by csuftitan on 3/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack
        {
            Spacer()
            VStack
            {
                Text("👋")
                    .font(.custom("Courier New", size: 50))
            }.padding()
            Spacer()
            HStack
            {
                VStack
                {
                    Button("Answer")
                    {}
                        .padding()
                        .contentShape(Rectangle())
                        .background(Color.gray)
                    Button("Answer")
                    {}
                        .padding()
                        .contentShape(Rectangle())
                        .background(Color.gray)
                }.padding()
                VStack
                {
                    Button("Answer")
                    {}
                        .padding()
                        .contentShape(Rectangle())
                        .background(Color.gray)
                    Button("Answer")
                    {}
                        .padding()
                        .contentShape(Rectangle())
                        .background(Color.gray)
                }.padding()
            }.padding(.bottom)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
