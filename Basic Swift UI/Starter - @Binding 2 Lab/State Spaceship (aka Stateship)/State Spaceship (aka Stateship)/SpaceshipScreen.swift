//
//  SpaceshipScreen.swift
//  State Spaceship (aka Stateship)
//
//  Created by Jane Madsen on 9/29/25.
//

import SwiftUI

struct SpaceshipScreen: View {
    @State var shipHeading: String = ""
    @State var availablePower: Int = 10
    var body: some View {
        Form {
            Section("Helm Station") {
                HelmStation(shipHeading: $shipHeading)
            }

            Section("Weapons Station") {
                WeaponsStation(availablePower: $availablePower)
            }

            Section("Shield Station") {
                ShieldStation(availablePower: $availablePower)
            }

            Section("Engine Station") {
                EngineStation(availablePower: $availablePower)
            }

            Section("Ship Status") {
                Text("Heading: \(shipHeading)")
                Text("Available Power: \(availablePower)")
            }
        }
    }
}

struct HelmStation: View {
    @Binding var shipHeading: String
    var body: some View {
        HStack {
            CrewChair(crewIcon: "dog")

            TextField("Heading", text: .constant("SYSTEM OFFLINE"))
        }
    }
}

struct WeaponsStation: View {
    @Binding var availablePower: Int
    var body: some View {
        HStack {
            CrewChair(crewIcon: "cat")

            VStack {
                Text("Weapons: OFFLINE")

                Button("Power Weapons Up/Down") {
                    // Weapons cost 3 power when they are online.
                }

                Button("Fire!") {
                    print("PEW!")
                }
                .disabled(true)
            }
            .buttonStyle(.borderless)
        }
    }
}

struct ShieldStation: View {
    @Binding var availablePower: Int
    @State var shieldPower: Int = 0
    var body: some View {
        HStack {
            CrewChair(crewIcon: "lizard")

            Stepper("Shield Power: \(0)", onIncrement: {
                if availablePower > 0 {
                    shieldPower += 1
                    availablePower -= 1
                }
            }, onDecrement: {
                if shieldPower > 0 {
                    shieldPower -= 1
                    availablePower += 1
                }
            })
        }
    }
}

struct EngineStation: View {
    @Binding var availablePower: Int
    var body: some View {
        HStack {
            CrewChair(crewIcon: "hare")

            Stepper("Engine Power: \(0)", onIncrement: {

            }, onDecrement: {

            })
        }
    }
}

struct CrewChair: View {
    var crewIcon: String
    @State var inChair: Bool = false

    var body: some View {
        Button {
            inChair.toggle()
        } label: {
            if inChair {
                Image(systemName: crewIcon)
            } else {
                Image(systemName: "person.slash")
            }
        }
        .buttonStyle(.borderless)
        .padding(5)
        .background {
            Circle()
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    SpaceshipScreen()
}
