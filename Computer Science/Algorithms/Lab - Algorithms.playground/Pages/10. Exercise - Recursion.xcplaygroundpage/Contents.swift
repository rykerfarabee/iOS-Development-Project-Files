/*:
## Exercise - Recursion

 A recursive function calls itself on a smaller piece of the problem. The base case is the part that stops the calls. Each call waits on the stack until the call it made finishes.
 */


func countdownToRelease(from secondsLeft: Int) {
    if secondsLeft == 0 {
        print("New album out now!")
        return
    }
    print("\(secondsLeft)...")
    countdownToRelease(from: secondsLeft - 1)
    print("Finished counting down from \(secondsLeft)")
}

//:  In a comment, write which lines are the base case. Then predict what `countdownToRelease(from: 3)` will print.

// Base case: if secondsLeft == 0, print "New album out now!" and return.
// This stops the recursion.

// countdownToRelease(from: 3) will print:
//
// 3...
// 2...
// 1...
// New album out now!
// Finished counting down from 1
// Finished counting down from 2
// Finished counting down from 3
//

//:  Call `countdownToRelease(from: 3)` and observe the printout.


//3...
//2...
//1...



//:  On the line that says `// Add the "finished" print here`, add `print("Finished the call for \(secondsLeft)")`. Before you run it again, predict the order the new lines will print in. Then run it. In a comment, explain why the calls finish in the opposite order they started.


//func countdownToRelease(from secondsLeft: Int) {
    //if secondsLeft == 0 {
     //   print("New album out now!")
      //  return
   // }
   // print("\(secondsLeft)...")
    //countdownToRelease(from: secondsLeft - 1)
   // print("Finished the call for \(secondsLeft)")
//}

// Prediction and expected output for countdownToRelease(from: 3):
// 3...
// 2...
// 1...
// New album out now!
// Finished the call for 1
// Finished the call for 2
// Finished the call for 3

// The calls finish in the opposite order they started because each
// recursive call waits for the call it made to return. The call for 3
// must wait for 2, and 2 must wait for 1. Once the base case is reached,
// the calls finish in reverse order as they return up the call stack.



//:  A song gets 1 play on day 1, 2 plays on day 2, 3 plays on day 3, and so on. The function below adds up all the plays through a given day.


func totalPlays(through day: Int) -> Int {
    if day == 1 {
        return 1
    }
    return day + totalPlays(through: day - 1)
}




//:  Predict what `totalPlays(throughDay: 4)` returns, and how many times `totalPlays` gets called in all. Then print the result and check.


// Prediction:
// totalPlays(throughDay: 4) = 4 + 3 + 2 + 1 = 10
// Total function calls: 4 (days 4, 3, 2, and 1)

//print(totalPlays(through: 4))
// Expected output: 10



//:  Do not run this one. In a comment, explain what would happen if you called `totalPlays(throughDay: -1)`, and why. Use the words base case and stack in your answer.



// Calling totalPlays(throughDay: -1) would cause infinite recursion because
// the base case (day == 1) is never reached as the day keeps decreasing.
// Eventually, the call stack would run out of space, causing a stack overflow.



/*:
 [Previous](@previous)  |  page 10 of 12  |  [Next: Exercise - Sorting Algorithms](@next)
 */
