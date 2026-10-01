//
//  PetsScreen.swift
//  Pet Sitter (Images Lab)
//

import SwiftUI

struct PetsScreen: View {
    var body: some View {
        // The page already scrolls. You don't need to change
        // the ScrollView or the VStack.
        ScrollView {
            VStack(spacing: 24) {
           
                ZStack {
                    Image("pet1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 350, height: 220)
                        .clipShape(RoundedRectangle(cornerRadius: 20))

                    Text("This Week's Pets")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.white)
                }

                HStack {
                    Image("pet1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(.blue, lineWidth: 3)
                        )

                    Image("pet2")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(.green, lineWidth: 3)
                        )

                    Image("pet3")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(.orange, lineWidth: 3)
                        )
                }

                HStack {
                    VStack {
                        Image(systemName: "fork.knife")
                            .font(.title)
                            .foregroundStyle(.red)

                        Text("Fed twice a day")
                    }

                    VStack {
                        Image(systemName: "figure.walk")
                            .font(.title)
                            .foregroundStyle(.blue)

                        Text("Two walks")
                    }

                    VStack {
                        Image(systemName: "drop.fill")
                            .font(.title)
                            .foregroundStyle(.cyan)

                        Text("Fresh water")
                    }
                }

                Image("pet2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 300)
            }
            .padding()
        }
    }
}

#Preview {
    PetsScreen()
}
