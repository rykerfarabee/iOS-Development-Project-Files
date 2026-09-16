//
//  ContentView.swift
//  Scratch
//
//  Created by Ryker Farabee on 9/15/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
    }
}
protocol Greetable {
    func greeting() -> String
}
struct hello: Greetable {
    func greeting() -> String {
        let name = "Ryan"
        return "Hello, \(name)"
    }
    var age: (Int) -> Void = {
        age in print("You are \(age) years old")
    }
}



#Preview {
    ContentView()
}
