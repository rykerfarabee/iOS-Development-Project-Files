//  🏔️ MTECH Code Challenge CS08: "Selection Sort"
//  Concept: Learn about another common sorting algorithm and practice manipulating data in an array

//  Instructions:
    //  Just like your previous code challenges, you are not allowed to use the .sort() method
    //  Create a function that takes in an array of Ints. Sort the array using an selection sort
    //  A visualization of what an insertion sort is can be seen here: 🔗https://en.wikipedia.org/wiki/Selection_sort#/media/File:Selection-Sort-Animation.gif

//  Examples:
    //  Input: [-43, 6, -2, 29, 16]
    //  Output: [-43, -2, 6, 16, 29]

//  ⌺ Black Diamond Challenge:
    //  Read about Introsort, the actual sorting algorithm Apple has chosen to use in the Array.sort() method, as well as elsewhere. 🔗https://en.wikipedia.org/wiki/Introsort
    //  Like before, you are not expected to understand every element of the page, but take notes in a comment on this challenge about what you can glean from the information.

import Foundation
func selectionSort(_ array: [Int]) -> [Int] {
    var numbers = array
    let count = numbers.count
    
    for pass in 0..<count {
            var minIndex = pass

            for index in (pass + 1)..<count {
                if numbers[index] < numbers[minIndex] {
                    minIndex = index
                }
            }

            if minIndex != pass {
                let oldValue = numbers[pass]
                numbers[pass] = numbers[minIndex]
                numbers[minIndex] = oldValue
            }
        }

    return numbers
}
selectionSort([15, 5, 6, 7, 2, 3, 45, 12])
