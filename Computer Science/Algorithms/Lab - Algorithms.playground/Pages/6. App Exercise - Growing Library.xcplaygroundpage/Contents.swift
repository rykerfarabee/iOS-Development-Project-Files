/*:
## App Exercise - Growing Library

 >These exercises reinforce Swift concepts in the context of a music streaming app.

 Every song in the app has an ID number. This version of linear search uses a `while` loop to walk through a library of song IDs.
 */



let library = [3, 7, 1, 9, 0, 5]
let targetID = 0

var index = 0
var checks = 0

while index < library.count {
    checks += 1

    if library[index] == targetID {
        break
    }

    index += 1
}

print("Checks to find song \(targetID): \(checks)")


//:  Before you run the calls below, predict how many checks it takes to find song 1 in each library. Write your predictions in a comment.



/*
Predictions for checks to find song 1:

Library size | Checks
10           | 1
100          | 1
1,000        | 1

Assuming song ID 1 is the first song checked in each library.
*/



//:  There is no song with the ID 0. Add three lines below that search for song 0 in `smallLibrary`, `mediumLibrary` and `largeLibrary`. Write the same way as the calls above.

            
            
            
            func linearSearch(for targetID: Int, in songIDs: [Int]) -> Int? {
                var checks = 0
                var index = 0
                while index < songIDs.count {
                    checks += 1
                    if songIDs[index] == targetID {
                        print("Found song \(targetID) after \(checks) checks")
                        return index
                    }
                    index += 1
                }
                print("Song \(targetID) not found after \(checks) checks")
                return nil
            }

            let smallLibrary = Array(1...10)
            let mediumLibrary = Array(1...100)
            let largeLibrary = Array(1...1000)
        
linearSearch(for: 1, in: smallLibrary)
linearSearch(for: 1, in: mediumLibrary)
linearSearch(for: 1, in: largeLibrary)





//:  Fill in the table with what the console printed.



//| Library size | Checks to find song 1 | Checks to find song 0 |
//| --- | --- | --- |
//| 10 | 1 | 10 |
//| 100 | 1 | 100 |
//| 1,000 | 1 | 1,000 |


//:  In a comment, answer each question. When the library gets 10 times bigger, what happens to the checks in the worst case? If the library had 1,000,000 songs, how many checks would the worst case take? What is the Big-O of linear search?

/*
When the library gets 10 times bigger, the worst-case number of checks
also gets 10 times bigger.

If the library had 1,000,000 songs, the worst case would take
1,000,000 checks.

The Big-O of linear search is O(n), because the number of checks
grows linearly with the size of the library.
*/




/*:
 [Previous](@previous)  |  page 6 of 12  |  [Next: Exercise - Binary Search](@next)
 */
