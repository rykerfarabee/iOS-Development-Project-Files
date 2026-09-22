//
//  ContentView.swift
//  SB 11
//
//  Created by Ryker Farabee on 9/22/26.
//
//  Instructions:
    //  You have an app which displays a variety of SF Symbol icons. Already in place is a picker which chooses which symbol to display.
    //  Add an interface that allows you to change the following properties of SF Symbols:
        //  Scale
        //  Weight (Bold/Not bold)
        //  Rendering mode (Multicolor, Monochromatic, Heirarchical, Palette)
        //  Color/Palette (primary, secondary, and tertiary options)
            //  You can implement this however you like. Some ideas would be: - A ColorPicker, a Picker with hardcoded options, a Switch with 2 color options, etc.
        //  Variable coloring percentage
            //  Notice the variableValue parameter of the Image initalizer below and how it makes half the bars of the rainbow slightly transparent

    //  To see examples of how these options work, download and play with the SF Symbols app: 🔗https://devimages-cdn.apple.com/design/resources/download/SF-Symbols-5.1.dmg

import SwiftUI

struct ContentView: View {
    let symbolChoices = [
        "cloud.rainbow.half.fill",
        "apple.terminal.on.rectangle.fill",
        "badge.plus.radiowaves.right",
        "sun.rain.fill"
    ]

    @State var selectedSymbol = "cloud.rainbow.half.fill"
    @State var renderingMode = 0
    @State var scale = 1
    @State var bold = false
    @State var variableValue = 0.2

    var body: some View {
        VStack(spacing: 15) {

            Picker("Symbol", selection: $selectedSymbol) {
                ForEach(symbolChoices, id: \.self) {
                    Text($0)
                }
            }
            Image(systemName: selectedSymbol, variableValue: variableValue)
                .font(.system(size: 100, weight: bold ? .bold : .regular))
                .symbolRenderingMode([
                    .hierarchical,
                    .monochrome,
                    .palette,
                    .multicolor
                ][renderingMode])
                .imageScale([.small, .medium, .large][scale])
                .foregroundStyle(.blue, .green, .orange)

            Picker("Rendering", selection: $renderingMode) {
                Text("Hierarchical").tag(0)
                Text("Monochrome").tag(1)
                Text("Palette").tag(2)
                Text("Multicolor").tag(3)
            }
            Picker("Scale", selection: $scale) {
                Text("Small").tag(0)
                Text("Medium").tag(1)
                Text("Large").tag(2)
            }
            Toggle("Bold", isOn: $bold)
            
            Slider(value: $variableValue, in: 0...1)
            Text("Variable: \(variableValue, specifier: "%.1f")")

            ColorPicker("Primary", selection: .constant(.blue))
            ColorPicker("Secondary", selection: .constant(.green))
            ColorPicker("Tertiary", selection: .constant(.orange))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
