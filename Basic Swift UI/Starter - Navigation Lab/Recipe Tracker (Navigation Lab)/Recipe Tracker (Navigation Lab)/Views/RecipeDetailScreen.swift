//
//  RecipeDetailView.swift
//  Recipe Tracker (Navigation Lab)
//
//  Created by Jane Madsen on 10/8/25.
//

import SwiftUI

struct RecipeDetailScreen: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Recipe Title")
                    .font(.largeTitle)
                    .bold()

                Text("Ingredients")
                    .bold()
                    .font(.headline)
                Text("Ingredients go here")

                Text("Instructions")
                    .bold()
                    .font(.headline)
                Text("Instructions go here")

                Spacer()
            }
            .padding()
        }
        .navigationTitle("Recipe")
    }
}
