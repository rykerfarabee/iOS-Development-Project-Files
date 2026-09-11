//  🏔️ MTECH Code Challenge SB05: "Multiply Each Int in [Int] By Five"
//  Concept: Practice looping over arrays

//  Instructions:
    //  Create a function that takes in an array of Int's as a parameter
    //  You will need to multiply each Int in the array by 5.
    //  The function will return the array of new Ints.

//  ⌺ Black Diamond Challenge:
    //  Create a second function for the same purpose. Return an array of Ints without using a for loop. (This will require a special method -- look it up!)

import Foundation

func multiplyByFive(_ numbers: [Int]) -> [Int] {
    return numbers.map { $0 * 5 }
}
let numbers = [1, 2, 3, 4]
let result = multiplyByFive(numbers)

print(result)
