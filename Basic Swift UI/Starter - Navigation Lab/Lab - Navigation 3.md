---
id: A844A00A-7C80-419F-9EAC-CC45F8A281EB
name: Navigation 3
type: lab
assignDay: SB17
dueDay: SB18
location:
---

# Navigation 3 Lab Requirements - Due Sep 30, 2026

## Overview:
Finish the recipe app by adding tabs and a way to add a new recipe.

## Instructions:
In `MainTabView`, wrap `MyRecipesScreen()` in a `TabView`, and place `DiscoverScreen()` in it as the second tab. Apply `.tabItem` modifiers to each with an appropriate `Label`.

Now that `MyRecipesScreen` has a `NavigationStack`, the plus button for adding a new recipe should appear in its navigation toolbar. Add a `.sheet` to `MyRecipesScreen`, bound to the `showingAddRecipe` state variable, that displays `AddRecipeSheet`. (Hint: a sheet isn't on the stack that showed it, so wrap `AddRecipeSheet` in its own `NavigationStack` inside the `.sheet`, or its title and Save/Cancel buttons won't appear. `AddRecipeSheet` also needs a binding to your list of recipes.)

**Black Diamond:**
Our users want to be able to edit their existing recipes. Create a screen titled `EditRecipeScreen` with `TextField`s to edit the displayed recipe in `RecipeDetailScreen`; add a button to the toolbar of `RecipeDetailScreen` with a pencil icon to access it. Making it work will require changes in `RecipeDetailScreen` to make your recipe editable.

Add a favorite button to `RecipeDetailScreen` that, when toggled, moves a recipe from the Discover screen to My Recipes and vice versa. You will need to rethink how data is stored in the app to make this possible, perhaps moving your stored lists of recipes up the view hierarchy.

Add a custom path for `NavigationStack` in both `MyRecipesScreen` and `DiscoverScreen`. When a user moves a recipe from Discover to My Recipes, the root view of the stack should change from Discover to My Recipes, so that hitting the back button takes them to the view where that recipe is now stored.
