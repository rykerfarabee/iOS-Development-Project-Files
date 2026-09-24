import UIKit

let stepCounts = [4200, 9800, 12000, 7600]
var moreSteps = stepCounts.map { $0 + 500 }
print(moreSteps)
var goodAmount = stepCounts.filter { $0 > 8000 }
print(goodAmount)
var totalSteps = stepCounts.reduce(0, +)
print(totalSteps)
extension String {
    func shout() -> String {
        return self.uppercased() + "!"
    }
}
let greet = "Hello"
print(greet.shout())
enum LibrarySection{
    case fiction, nonFiction, reference, periodicals
}
let currentSelection: LibrarySection = .periodicals
