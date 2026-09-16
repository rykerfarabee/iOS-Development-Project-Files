import UIKit

let stepCounts = [4200, 9800, 12000, 7600]
var moreSteps = stepCounts.map { $0 + 500 }
print(moreSteps)
var goodAmount = stepCounts.filter { $0 > 8000 }
print(goodAmount)
var totalSteps = stepCounts.reduce(0, +)
print(totalSteps)
