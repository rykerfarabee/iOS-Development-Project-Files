//
//  ContentView.swift
//  ScratchPaper
//
//  Created by Ryker Farabee on 9/11/02.
//

import SwiftUI

struct ContentView: View {
    @State var selectedDogName = ""
    var body: some View {
        Text("Selected Name: \(selectedDogName)")
        Picker("Cool Dog Name", selection: $selectedDogName) {
            Text("Shredder").tag("shredder")
            Text("Cupcake").tag("cupcake")
            Text("Snoopy").tag("snoopy")
            Text("Commander Beefsweat").tag("commander beefsweat")
        }
    }
}
#Preview {
    ContentView()
}
