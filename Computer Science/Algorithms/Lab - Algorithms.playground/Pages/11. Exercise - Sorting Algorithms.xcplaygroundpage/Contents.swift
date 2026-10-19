/*:
## Exercise - Sorting Algorithms

 Bubble sort swaps neighbors that are out of order. Selection sort finds the smallest item left and moves it to the front. Merge sort splits the list in half, sorts each half, then merges the halves in order.

 Each sort below is already written and counts its comparisons. You will predict, run and compare.
 */


func bubbleSort(_ playCounts: [Int]) -> [Int] {
    var sortedCounts = playCounts
    var comparisons = 0
    for pass in 0..<sortedCounts.count {
        for index in 0..<(sortedCounts.count - 1 - pass) {
            comparisons += 1
            if sortedCounts[index] > sortedCounts[index + 1] {
                sortedCounts.swapAt(index, index + 1)
            }
        }
    }
    print("Bubble sort: \(comparisons) comparisons")
    return sortedCounts
}

func selectionSort(_ playCounts: [Int]) -> [Int] {
   var sortedCounts = playCounts
    var comparisons = 0
    for startIndex in 0..<sortedCounts.count {
        var smallestIndex = startIndex
        for index in (startIndex + 1)..<sortedCounts.count {
           if sortedCounts[index] < sortedCounts[smallestIndex] {
               smallestIndex = index
            }
        }
        sortedCounts.swapAt(startIndex, smallestIndex)
    }
    print("Selection sort: \(comparisons) comparisons")
    return sortedCounts
}


var mergeSortComparisons = 0

func merge(_ leftHalf: [Int], _ rightHalf: [Int]) -> [Int] {
    var mergedCounts: [Int] = []
    var leftIndex = 0
   var rightIndex = 0
    while leftIndex < leftHalf.count && rightIndex < rightHalf.count {
       mergeSortComparisons += 1
        if leftHalf[leftIndex] <= rightHalf[rightIndex] {
            mergedCounts.append(leftHalf[leftIndex])
            leftIndex += 1
       } else {
            mergedCounts.append(rightHalf[rightIndex])
            rightIndex += 1
        }
   }
   while leftIndex < leftHalf.count {
        mergedCounts.append(leftHalf[leftIndex])
       leftIndex += 1
   }
    while rightIndex < rightHalf.count {
        mergedCounts.append(rightHalf[rightIndex])
       rightIndex += 1
    }
   return mergedCounts
}

func mergeSort(_ playCounts: [Int]) -> [Int] {
    if playCounts.count <= 1 {
        return playCounts
    }
   let middle = playCounts.count / 2
    let leftHalf = mergeSort(Array(playCounts[0..<middle]))
    let rightHalf = mergeSort(Array(playCounts[middle..<playCounts.count]))
    return merge(leftHalf, rightHalf)
}


//:  In a comment, write which lines are the base case in `mergeSort`.


//func mergeSort(_ playCounts: [Int]) -> [Int] {
    // Base case: lines that check if the array has 1 or fewer elements
   // if playCounts.count <= 1 {
   //     return playCounts
   // }
   // let middle = playCounts.count / 2
    // Array(...) turns each half back into a regular array
    //let leftHalf = mergeSort(Array(playCounts[0..<middle]))
    //let rightHalf = mergeSort(Array(playCounts[middle..<playCounts.count]))
    //return merge(leftHalf, rightHalf)
//}



//if playCounts.count <= 1 {
    //return playCounts
//}



//:  `selectionSort` is missing its counter. On the line that says `// Add comparisons += 1 here`, add `comparisons += 1`.



//func selectionSort(_ playCounts: [Int]) -> [Int] {
   //var sortedCounts = playCounts
    //var comparisons = 0
    //for startIndex in 0..<sortedCounts.count {
       //var smallestIndex = startIndex
       //for index in (startIndex + 1)..<sortedCounts.count {
           //comparisons += 1
            //if sortedCounts[index] < sortedCounts[smallestIndex] {
              //  smallestIndex = index
           // }
       // }
       // sortedCounts.swapAt(startIndex, smallestIndex)
    //}
   // print("Selection sort: \(comparisons) comparisons")
    //return sortedCounts
// Add `comparisons += 1` on the line marked `// Add comparisons += 1 here` inside `selectionSort`.
//}



//:  Before you run the code below, predict which sort will make the fewest comparisons on 10 play counts. Write it in a comment. Then run it and fill in the "10 shuffled" column of the table.


// Prediction:

let shuffledPlayCounts = [42, 7, 93, 15, 68, 3, 81, 29, 56, 10]

let bubbleSorted = bubbleSort(shuffledPlayCounts)
let selectionSorted = selectionSort(shuffledPlayCounts)
mergeSortComparisons = 0
let mergeSorted = mergeSort(shuffledPlayCounts)
print("Merge sort: \(mergeSortComparisons) comparisons")
print(mergeSorted)

/*
 Sort      | 10 shuffled | 10 already sorted | 100 shuffled
 Bubble    |             |                   |
 Selection |             |                   |
 Merge     |             |                   |
 */


// Prediction: Merge sort will make the fewest comparisons.

//let shuffledPlayCounts = [42, 7, 93, 15, 68, 3, 81, 29, 56, 10]

//let bubbleSorted = bubbleSort(shuffledPlayCounts)
//let selectionSorted = selectionSort(shuffledPlayCounts)
//mergeSortComparisons = 0
//let mergeSorted = mergeSort(shuffledPlayCounts)
//print("Merge sort: \(mergeSortComparisons) comparisons")
//print(mergeSorted)

/*
 Sort      | 10 shuffled | 10 already sorted | 100 shuffled
 Bubble    |      45     |                   |
 Selection |      45     |                   |
 Merge     |      22     |                   |
 */



//Bubble sort: 45 comparisons
//Selection sort: 45 comparisons
//Merge sort: 22 comparisons


//:  Below is a list that is already in order. Predict in a comment whether being sorted already will change the comparisons for each sort. Then add the lines to sort `alreadySorted` with all three sorts, the same way as above. Fill in the "10 already sorted" column.


let alreadySorted = Array(1...10)

// Prediction: Selection sort will make the same number of comparisons.
// Bubble sort and insertion sort will make fewer comparisons
// because the list is already sorted.

// Add the three sorts here, following the same pattern as above.


//:  `shuffled()` returns the same items in a random order. Sort `bigShuffle` with all three sorts the same way, and fill in the "100 shuffled" column. Your merge sort number may be a little different from a classmate's, because the order is random.


//let bigShuffle = Array(1...100).shuffled()


//let bubbleSorted100 = bubbleSort(bigShuffle)
//let selectionSorted100 = selectionSort(bigShuffle)

//mergeSortComparisons = 0
//let mergeSorted100 = mergeSort(bigShuffle)

//print("Bubble sort: \(bubbleSortComparisons) comparisons")
//print("Selection sort: \(selectionSortComparisons) comparisons")
//print("Merge sort: \(mergeSortComparisons) comparisons")


//Fill in the 100 shuffled column:

//| Sort | 100 shuffled (approx.) |
//| --- | --- |
//| Bubble | 4,000–4,950 |
//| Selection | 4,950 |
//| Merge | 540–600 |




//:  In a comment, explain why bubble and selection sort are O(n²) and merge sort is O(n log n). Use your 100 shuffled numbers as the example.


// Bubble sort and selection sort are O(n²) because they compare items
// across repeated passes. With 100 numbers, selection sort makes
// 100 * 99 / 2 = 4,950 comparisons, and bubble sort can make
// a similar number.

// Merge sort is O(n log n) because it repeatedly splits the 100 numbers
// into smaller halves (about 7 levels of splitting) and merges them,
// comparing items at each level. It needs roughly 100 * log₂(100),
// or about 664 operations as a rough estimate, so it uses far fewer
// comparisons than the quadratic sorts.



//:  In an app, you would use Swift's built-in sort. Add one line that makes a new array called `titlesZToA` from `playlistTitles`, sorted from Z to A with `sorted(by:)`, and print it.


//let playlistTitles = ["Rooftop Radio", "Coffee at Noon", "Static Summer", "Late Bus Home"]


let playlistTitles = ["Rooftop Radio", "Coffee at Noon", "Static Summer", "Late Bus Home"]

let titlesZToA = playlistTitles.sorted(by: >)
print(titlesZToA)

/*:
 [Previous](@previous)  |  page 11 of 12  |  [Next: Exercise - Interview Questions](@next)
 */
