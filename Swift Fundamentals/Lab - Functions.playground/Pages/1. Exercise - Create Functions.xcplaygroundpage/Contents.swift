/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func introduceMyself(name: String, age: Int, interests: String) {
    print("Hi my name is \(name), im \(age) years old and I like \(interests)")
}
introduceMyself(name: "Ryker", age: 17, interests: "soccer")
//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation

var randomNum = Int.random(in: 0...4)
func magicEightBall(randomNum: Int) -> String {
    switch randomNum {
    case 1:
        return "No"
    case 2:
        return "Yes"
    case 3:
        return "Outlook not good"
    case 4:
        return "Possibly"
    default:
        return "Absolutely"
    }
}
var response = magicEightBall(randomNum: randomNum)
print(response)
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
