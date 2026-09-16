---
id: C6EE5ED9-CD95-4188-80E3-8E78456D290B
name: Lists
type: lab
assignDay: SB07
dueDay: SB08
location:
---

# Lists Lab Requirements - Due Sep 16, 2026

## Overview

You are building a simple version of a game library app, like Steam's. It shows every game a player owns, and lets them filter the list down to just the ones they have installed.

## Instructions

1. Create a new SwiftUI project and name it "Game Library Lab".
2. Above `ContentView`, write a new struct named `Game`. Give it three properties: `title` (a `String`), `genre` (a `String`), and `installed` (a `Bool`).
3. Write `: Identifiable` right after the struct's name, and give it an `id` property set to `UUID()`. A `List` needs every row to have a unique `id`, and this is how you give it one.
4. Inside `ContentView`, add a `@State` property named `games` that holds an array of at least 8 `Game` values. Mix installed and uninstalled games, and use real or made-up titles and genres.
5. Add a `@State` property named `filterSelection` that starts at `"All"`.
6. Above `body`, add a constant named `filterOptions` that holds the array `["All", "Installed", "Uninstalled"]`.
7. Add a `Picker` above your list. Give it the label "Filter", pass it `$filterSelection`, and style it with `.pickerStyle(.segmented)`. Build its options with `ForEach(filterOptions, id: \.self)`, the same way you rebuilt yesterday's Picker in class.
8. Write a computed property named `filteredGames` that returns an array of `Game`. Use a `switch` on `filterSelection`:
   - `"Installed"` returns only the games where `installed` is `true`.
   - `"Uninstalled"` returns only the games where `installed` is `false`.
   - Anything else (`"All"`) returns every game.

### A Note on `.filter`

`.filter` is a method every array has. It walks through the array and keeps only the elements where a closure you give it returns `true`. You learned closures today, so the syntax will look familiar:

```swift
games.filter { $0.installed }
```

`$0` stands for the game being checked. This line keeps every game whose `installed` property is `true`.

9. Build a `List` using `ForEach(filteredGames)`. Each row shows the game's `title`, its `genre`, and whether it is installed. Show the installed status as text: "Installed" or "Not Installed".
10. Run the app. Tap through all three segments and check that the list updates each time.

## Black Diamond

Add a second `Picker` that filters by `genre` instead of installed status. A student should be able to pick a genre and an installed status at the same time, and see only the games that match both. Your `filteredGames` computed property will need to check both filters, not just one.

## Rubric

- [ ] `Game` struct with `title`, `genre`, `installed`, and conforms to `Identifiable`
- [ ] At least 8 games, a mix of installed and not
- [ ] Segmented Picker built with `ForEach(filterOptions, id: \.self)`
- [ ] `filteredGames` computed property, using `.filter` with `$0`
- [ ] List shows title, genre, and installed status for every row
- [ ] All three filter options tested and working
