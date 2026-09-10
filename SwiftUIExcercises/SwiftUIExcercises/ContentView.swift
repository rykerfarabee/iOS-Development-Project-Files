//
//  ContentView.swift
//  SwiftUIExcercises
//
//  Created by Ryker Farabee on 9/10/26.
//

import SwiftUI

struct WelcomScreen: View {
    var body: some View {
        HStack{
            Text("Hello, numb nuts!")
                .font(.title2)
                .foregroundStyle(.blue)
                .italic()
                .bold()
                .padding()
            
            Capsule()
                .frame(width: 40, height: 400)
        }
    }
}
#Preview {
    WelcomScreen()
}
