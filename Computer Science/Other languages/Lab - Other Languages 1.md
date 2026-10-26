---
id: 8412C456-8463-4A6C-AC25-7AE8BC7789F7
name: Other Languages 1
type: lab
assignDay: CS08
dueDay: CS09
location:
---

# Other Languages 1 Lab Requirements - Due Oct 19, 2026

Today you saw which languages developers use and what each one is for. Tonight you'll take a closer look at four of them. You'll fill in a comparison chart, one row at a time, so you can see what each language has in common with Swift and where it's different.

## Instructions

Copy the chart below into your own file. Fill in every blank cell for **Python**, **Kotlin**, **C**, and **JavaScript**.

- The Swift column is already filled in. Use it as an example of the kind of answer each row needs.
- In syntax rows, write real code, not a description. For example, write `var score = 10`, not "it uses var."
- If a language doesn't have a feature, write "none" and then what it does instead. For example, C has no `func` keyword, so explain how C writes a function.
- You can use any source, including official docs, learnxinyminutes.com, and AI. AI can be wrong, so check anything that looks surprising against a second source.

## Part 1: The Big Picture

| Comparison | Swift | Python | Kotlin | C | JavaScript |
| --- | --- | --- | --- | --- | --- |
| Who made it, and what year? | Apple, 2014 | Guidovan Rossum, 1991 |JetBrains, 2011| Dennis Ritchie, 1972 |Brendan Eich 1995|
| What is it mostly used for? | Apps for Apple devices |General-purpose programming, automation, data science, and AI |Android apps and cross-platform development |Operating systems and embedded systems |Interactive websites and web applications |
| Compiled or interpreted? | Compiled |Interpreted |Compiled |Compiled |Interpreted |
| Static or dynamic typing? | Static |Dynamic |Static |Static |Dynamic |

## Part 2: Syntax

| Comparison | Swift | Python | Kotlin | C | JavaScript |
| --- | --- | --- | --- | --- | --- |
| Write a comment | `// note` |# note |// note|// note |// note |
| Make a constant | `let maxPlayers = 4` |MAX_PLAYERS = 4 |val maxPlayers = 4 |const int maxPlayers = 4; |const maxPlayers = 4; |
| Make a variable | `var score = 10` |score = 10 |var score = 10 |int score = 10; |let score = 10 |
| Make a variable with its type written out | `var score: Int = 10` |score: int = 10 |var score: int = 10 |int score = 10; |let score: number = 10 |
| Keyword that starts a function | `func` |def |fun |None |function |
| A function that adds two whole numbers | `func add(a: Int, b: Int) -> Int { return a + b }` |def add(a, b): return a + b |fun add(a: Int, b: Int): Int { return a + b } |int add(int a, int b) { return a + b; } |function add(a, b) { return a + b; } |
| Print a line of text | `print("Hello")` |print("Hello") |println("Hello") |printf("Hello\n"); |console.log("Hello"); |
| Put a variable inside a string | `"Hi, \(name)"` |f"Hi, {name}" |"Hi, $name" |printf("Hi, %s", name); |Hi, ${name} |
| Loop over the numbers 1 through 5 | `for number in 1...5 { }` |for number in range(1, 6): |for (number in 1..5) { } |for (int number = 1; number <= 5; number++) { } |for (let number = 1; number <= 5; number++) { } |
| Make a list of numbers | `let numbers = [1, 2, 3]` |numbers = [1, 2, 3] |val numbers = listOf(1, 2, 3) |int numbers[] = {1, 2, 3}; |const numbers = [1, 2, 3]; |
| The value for "nothing here" | `nil` |none |null |NULL |null or undefined |
| Do lines end with a semicolon? | Optional, usually left off |No, usually left of |Optional, usually left off |Yes, generally required |Optional, usually left off |

## Part 3: Compare

Answer each question in 2-3 sentences below your chart.

1. Which of the four languages looks the most like Swift? Use at least two rows from your chart as evidence.
Kotlin they both use let for constants and var for variables and both you write a type after the name like var score : Int
2. Which language looks the least like Swift? Use at least two rows as evidence.
Python changes a lot like using def instead of func and seperates code with indents instead of curly braces
3. C has no keyword for starting a function. Look at your answer for the `add` function. How can you tell it's a function? 
a function in c starts by saying what type it will return then it has parameters in parentheses after a name and then curly braces that has the actual function
4. Python lets you write a type, like `score: int = 10`. Can you still put a `String` into `score` afterward? Try it or look it up, and explain what that tells you about Python's typing.
Yes you can because pythons type annotations are more like hints than restrictions which means it is dynamically typed
When finished, have an instructor sign off on your chart and answers.

## Black Diamond

Add a fifth column for Go or Rust and fill in every row. Then write your `add` function in that language and run it at go.dev/play or play.rust-lang.org.

## Rubric

- [ ] All 16 rows are filled in for Python, Kotlin, C, and JavaScript
- [ ] Syntax rows are written as real code
- [ ] The `add` function row is correct in all four languages
- [ ] All 4 Part 3 questions are answered with evidence from the chart
- [ ] Walk an instructor through any two rows of your choice
