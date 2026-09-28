//
//  ContentView.swift
//  Navigation Practice
//
//  Created by Ryker Farabee on 9/25/26.
//

import SwiftUI

struct ContentView: View {
    let settings = ["Wifi", "Bluetooth", "Screen Time", "Sound", "Display", "Privacy"]

    var body: some View {
        NavigationStack {
            List(settings, id: \.self) { setting in
                NavigationLink(setting) {
                    SettingView(title: setting)
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingView: View {
    let title: String

    var body: some View {
        VStack {
            Text("*Setting Info*")
                .font(.title)
        }
        .navigationTitle(title)
    }
}

#Preview {
    ContentView()
}
