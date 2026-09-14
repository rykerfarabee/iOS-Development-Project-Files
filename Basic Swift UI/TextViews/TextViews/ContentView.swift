//
//  ContentView.swift
//  TextViews
//
//  Created by Ryker Farabee on 9/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Ryker")
                .font(.title)
                .bold()
                .foregroundStyle(.blue)
                .padding()
            
            Text("""
            About Me
            
            I'm 17 years old I have 2 siblings and 2 step siblings.
            I want to be a pilot eventually but I don't like school.
            I used to play clarinet but I don't anymore
            """)
            .font(.body)
            .foregroundStyle(.black)
            .padding()
            
            Text("""
            Fun Facts
            
            I can do 3 flips on ground
            I play a lot of siege(Shocker)
            I have 2 pet geckos
            """)
            .font(.body)
            .foregroundStyle(.purple)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
