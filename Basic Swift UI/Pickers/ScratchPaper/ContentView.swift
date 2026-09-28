//
//  ContentView.swift
//  ScratchPaper
//
//  Created by Ryker Farabee on 9/11/02.
//

import SwiftUI

struct Park: Hashable {
    let name: String
    let year: Int
    let acres: Int
    let closestTown: String
}

struct ContentView: View {
    let zion = Park(name: "Zion", year: 1919, acres: 147000, closestTown: "Springdale")
    let yellowstone = Park(name: "Yellowstone", year: 1872, acres: 2219791, closestTown: "West Yellowstone")
    let yosemite = Park(name: "Yosemite", year: 1890, acres: 759620, closestTown: "Yosemite Village")
    let grandCanyon = Park(name: "Grand Canyon", year: 1919, acres: 1217262, closestTown: "Tusayan")

    @State private var selectedPark = Park(
        name: "Zion",
        year: 1919,
        acres: 147000,
        closestTown: "Springdale"
    )

    var body: some View {
        VStack {
            Picker("Park", selection: $selectedPark) {
                Text(zion.name).tag(zion)
                Text(yellowstone.name).tag(yellowstone)
                Text(yosemite.name).tag(yosemite)
                Text(grandCanyon.name).tag(grandCanyon)
            }
            .pickerStyle(.segmented)

            Text("Name: \(selectedPark.name)")
            Text("Year: \(selectedPark.year)")
            Text("Acres: \(selectedPark.acres)")
            Text("Closest town: \(selectedPark.closestTown)")
        }
    }
}
#Preview {
    ContentView()
}
