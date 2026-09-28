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
                // Step 1: replace this with the header.
                Text("Header")

                // Step 2: replace this with the row of pets.
                Text("Pets")

                // Step 3: replace this with the care icons.
                Text("Care")

                // Step 4: replace this with the full photo.
                Text("Full Photo")
            }
            .padding()
        }
    }
}

#Preview {
    PetsScreen()
}
