/*:
## Exercise - Interview Questions

 Interviewers for iOS jobs often ask about algorithms, searching and sorting. Answer each question in a comment, the way you would answer it out loud in an interview. Write in your own words, 2 to 4 sentences each. Use an example from this playground where it helps.
 */


// 1. What is an algorithm?
// An algorithm is a set of steps to solve a problem.
// For example, sorting songs by their titles.

// 2. What is the difference between linear search and binary search?
// Linear search checks each item one at a time.
// Binary search looks at the middle and cuts the list in half.
// Binary search only works if the list is sorted.

// 3. What is Big O notation?
// Big O tells us how much an algorithm slows down as the list gets bigger.
// In our playground, selection sort made 4,950 comparisons with 100 items.

// 4. Why are bubble sort and selection sort O(n²)?
// They compare items many times while sorting.
// With 100 items, selection sort makes 4,950 comparisons,
// so it takes more work when the list gets bigger.

// 5. Why is merge sort O(n log n)?
// Merge sort splits the list into smaller parts and puts them back in order.
// This takes fewer comparisons than bubble sort and selection sort
// when sorting a big list.

// 6. When would you use Swift's built-in sort?
// I would use Swift's built-in sort because it is easy and efficient.
// For example, sorted(by: >) puts playlist titles in order from Z to A.



//:  1. What does Big-O describe, and why do we usually talk about the worst case?


// Answer:
// Big-O describes how an algorithm's work grows when the list gets bigger.
// We usually talk about the worst case because it shows how much work
// the algorithm might need at most.


//:  2. Walk me through how binary search works. When can't you use it?


// Answer: Binary search is a way to find an item in a sorted list by cutting the search area in half each time. And when you cant use it is when the list isn't sorted, because you can't tell which half to ignore.
// Or when you can't access the middle item directly, like in a basic linked list where you have to move through items one at a time.


//:  3. Your code passed every test with 20 songs, but it is slow in production with 50,000 songs. What might be going on, and how would you find out?


// Answer: The code might be too slow because it has to check too many songs as the list gets bigger.
// I would test it with more songs and use a profiler to see which part of the code is taking the most time.
// I would also check if I'm using a slow algorithm, like bubble sort, instead of a faster one like merge sort.


//:  4. Why is merge sort faster than bubble sort on a large list?


// Answer: Merge sort is faster because it splits the list into smaller parts
// and sorts them, while bubble sort keeps comparing items over and over.
// Merge sort is O(n log n), but bubble sort is O(n²), so merge sort
// does much less work when the list gets really big.



//:  5. How would you check an array for duplicates? Now how would you make it faster?


// Answer: I would compare each item with the other items to see if any are the same.
// To make it faster, I would use a Set because it only keeps unique items.
// This lets me check for duplicates much faster without comparing every item.


//:  6. What is recursion, and what happens if a recursive function has no base case?


// Answer: Recursion is when a function calls itself to solve a problem.
// If it has no base case, it keeps calling itself and can eventually crash
// because it runs out of stack space.



//:  7. Why would you use Swift's built-in `sort()` in an app instead of writing your own sort?


// Answer: I would use Swift's built-in sort because it is already tested and works well.
// It saves time and is usually faster than writing my own sorting code.
// I would only write my own sort if I had a special reason to.



/*:
 [Previous](@previous)  |  page 12 of 12
 */
