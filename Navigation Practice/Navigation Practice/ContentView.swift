//
//  ContentView.swift
//  Navigation Practice
//
//  Created by Ryker Farabee on 9/25/26.
//

import SwiftUI

struct ContentView: View {
    let settings = ["Wifi", "Bluetooth", "Screen Time", "Sound", "Display", "Privacy"]
    @State private var showSheet = false

    var body: some View {
        NavigationStack {
            List(settings, id: \.self) { setting in
                NavigationLink(setting) {
                    Text(setting)
                }
            }
            .navigationTitle("Settings")
            .toolbar {
                Button("+") {
                    showSheet = true
                }
            }
            .sheet(isPresented: $showSheet) {
                AddView()
            }
        }
    }
}

struct AddView: View {
    @Environment(\.dismiss) var dismiss
    @State private var text = ""

    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $text)
            }
            .navigationTitle("Add Setting")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        print(text)
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
