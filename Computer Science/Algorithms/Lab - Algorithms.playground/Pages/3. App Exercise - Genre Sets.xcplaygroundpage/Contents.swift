/*:
## App Exercise - Genre Sets

 >These exercises reinforce Swift concepts in the context of a music streaming app.

 A `Set` holds unique values with no order. Adding a value that is already in the set does nothing.
 */


let listeningHistory = ["Pop", "Rock", "Pop", "Jazz", "Hip-Hop", "Rock", "Pop", "Country", "Jazz"]
let friendGenres: Set<String> = ["Jazz", "Classical", "Pop", "Folk"]




//:  Create a variable called `genresListened` that is a `Set` made from `listeningHistory`. (Hint: `Set(listeningHistory)` makes a set from an array.) Print the count of `listeningHistory` and the count of `genresListened`. In a comment, explain why the two counts are different.

var genresListened = Set(listeningHistory)

print(listeningHistory)
print(genresListened)





//:  Use `contains` to check whether `genresListened` has "Jazz" and whether it has "Metal". Print a message for each one, like "You listen to Jazz" or "You have not tried Metal yet."


if genresListened.contains("Jazz") {
    print("You listen to Jazz")
} else {
    print("You have not tried Jazz yet.")
}

if genresListened.contains("Metal") {
    print("You listen to Metal")
} else {
    print("You have not tried Metal yet.")
}


//:  The user hides "Country" from their profile. Remove it from `genresListened`, then print the set. In a comment, explain why the genres might not print in the same order they appear in `listeningHistory`.


genresListened.remove("Country")
print(genresListened)




//:  The app shows genres two friends have in common. Write a `for`-in loop over `genresListened`. Use `contains` to print each genre that is also in `friendGenres`.


for genre in genresListened {
    if friendGenres.contains(genre) {
        print(genre)
    }
}


/*:
 [Previous](@previous)  |  page 3 of 12  |  [Next: Exercise - Spot the Big-O](@next)
 */
