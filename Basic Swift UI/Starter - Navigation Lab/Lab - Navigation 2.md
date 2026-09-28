---
id: DE9F6085-70F1-4719-82A9-8BECEBB32D88
name: Navigation 2
type: lab
assignDay: SB16
dueDay: SB17
location:
---

# Navigation 2 Lab Requirements - Due Sep 29, 2026

## Overview:
Yesterday you got navigation working with a placeholder destination. Today, make it show the real recipe.

## Instructions:
Add a `let recipe: Recipe` property to `RecipeDetailScreen`, and replace each placeholder `Text` (and the `.navigationTitle`) with the recipe's title, ingredients and instructions. Then change the `NavigationLink` in `MyRecipesScreen` to pass the tapped recipe into `RecipeDetailScreen`. (Hint: to send a `Recipe` with `NavigationLink(value:)`, `Recipe` has to conform to `Hashable` as well as `Identifiable`. Look back at the "Why Hashable?" slide.)

Next, follow the same steps to give `DiscoverScreen` its own `NavigationStack` and `NavigationLink`s to `RecipeDetailScreen`. Note that we can reuse the same `RecipeDetailScreen` view to display recipes from both `MyRecipesScreen` and `DiscoverScreen`.
