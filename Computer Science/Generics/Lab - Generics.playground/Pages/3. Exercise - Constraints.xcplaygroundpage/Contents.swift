/*:
## Exercise - Constraints

 A constraint limits which types can fill in a type parameter. `T: Equatable` means `T` can be any type that can be checked with `==`. `T: Comparable` means `T` can be any type that can be put in order with `<` and `>`.

 This function won't build. Read the error, then add a constraint so it builds. Don't change anything inside the function.
 */


func position<T: Equatable>(of target: T, in items: [T]) -> Int? {
    for index in 0..<items.count {
        if items[index] == target {
            return index
        }
    }
    return nil
}


//:  Create one `[String]` and one `[Int]`. For each array, call `position(of:in:)` once with a value that is in the array and once with a value that isn't, so four calls in all. Print each result, using `??` to print `-1` when the value isn't found.

let words: [String] = ["apple", "banana", "orange"]
let numbers: [Int] = [10, 20, 30]

print(position(of: "banana", in: words) ?? -1)
print(position(of: "grape", in: words) ?? -1)

print(position(of: 20, in: numbers) ?? -1)
print(position(of: 40, in: numbers) ?? -1)



//:  Here is a struct for a concert ticket. Make `Ticket` conform to `Equatable`. Then create a `[Ticket]` with three tickets, and use `position(of:in:)` to find one of them. Print the result.


struct Ticket: Equatable {
    let row: String
    let seat: Int
}

let tickets = [
    Ticket(row: "A", seat: 1),
    Ticket(row: "B", seat: 5),
    Ticket(row: "C", seat: 10)
]

let target = Ticket(row: "B", seat: 5)

print(position(of: target, in: tickets) ?? -1)


//:  Remove `: Equatable` from `Ticket` and read the error on your `position(of:in:)` call. Put `: Equatable` back. In a comment, explain what the error was telling you.


// Answer:Ticket must conform to Equatable becauseposition(of:in:) uses == to compare the tickets.


//:  Write a generic function called `isBetween(_:low:high:)` that returns a `Bool`. It returns `true` when the first argument is greater than or equal to `low` and less than or equal to `high`. The first argument has no label, and all three arguments are the same type `T`. Add the constraint `T` needs. Call it with three `Int` values and with three `String` values, and print each result. (Strings are compared in alphabetical order, so `"m"` is between `"a"` and `"z"`.)

func isBetween<T: Comparable>(_ value: T, low: T, high: T) -> Bool {
    return value >= low && value <= high
}

print(isBetween(5, low: 1, high: 10))
print(isBetween(15, low: 1, high: 10))

print(isBetween("m", low: "a", high: "z"))
print(isBetween("z", low: "a", high: "m"))


//:  Call `isBetween(_:low:high:)` with three `Bool` values. Read the error, then delete that line. In a comment, explain why `Bool` can't be used here but `String` can.


// Answer: Bool can't be used because it doesn't conform to Comparable because false isnt less than or greater than true but there are ways to ccompare strings.


/*:
 [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - Where Clauses](@next)
 */
