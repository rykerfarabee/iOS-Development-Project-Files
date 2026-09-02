import UIKit

struct MadLibGenerator {
    var adjective: String
    var animal: String
    var number: String
    var clothingItem: String
    var funnySound: String
    var verbEndingWithIng: String
    var celebrityChef: String
    var exclamation: String
    let storyCount = 3
    var randomStoryNumber = Int.random(in: 1...3)
   
    func generateMadLib() -> String {
        var hasValidInputType: Bool {
            if adjective.isEmpty || animal.isEmpty || number.isEmpty || clothingItem.isEmpty || funnySound.isEmpty || verbEndingWithIng.isEmpty || celebrityChef.isEmpty || exclamation.isEmpty {
                return false
            } else {
                return true
            }
        }
    var storyTitle: String {
    switch randomStoryNumber {
    case 1:
        return "Family Dinner"
    case 2:
        return "Breakfast"
default:
    return "Vacation"
    }
}
    print(storyTitle)
        if hasValidInputType == true {
           switch randomStoryNumber {
            case 1:
                return "Yesterday, I decided to cook a \(adjective) dinner for my family. The main course was a roasted \(animal) that had been marinating for \(number) hours. To look professional, I wore my favorite \(clothingItem) and a chef's hat.Suddenly, the oven made a loud \(funnySound) sound! Thick smoke started \(verbEndingWithIng) out of the kitchen.I panicked and called \(celebrityChef) for emergency advice. They answered the phone, took one look at my video feed, and shouted, \"\(exclamation)\"Then the house exploded and no one got to enjoy the meal I had worked so hard on."
            case 2:
                return "It was a completely \(adjective) Tuesday morning when I woke up to a loud \(funnySound) coming from the kitchen. I bolted out of bed, quickly threw on my favorite \(clothingItem), and ran downstairs to see what was happening.To my absolute shock, a giant \(animal) was standing by the stove, carefully \(verbEndingWithIng) a massive batch of pancakes! Standing right next to it, wearing a tiny chef's hat, was \(celebrityChef) barking out orders.\"\(exclamation)\" I yelled in disbelief.\(celebrityChef) turned around, looked me straight in the eye, and said, \"Don't just stand there! We have exactly \(number) minutes to finish breakfast before the food critics arrive!\""
            default:
                return "My family's vacation to the Grand Canyon was going great until we encountered a highly \(adjective) tour guide. Right in the middle of his speech, we heard a sudden \(funnySound) echoing through the canyon walls.Everyone gasped as a wild \(animal) burst from the bushes, completely dressed in a neon \(clothingItem). Before anyone could react, the creature began \(verbEndingWithIng) wildly across the observation deck.Suddenly, \(celebrityChef) jumped out of a nearby tour bus, holding a golden spatula like a sword. \"\(exclamation)\" they shouted, trying to wrangle the beast.\"Quick!\" they yelled to the crowd. \"I need someone to throw me \(number) pounds of butter, or this afternoon is ruined!\""
            }
        } else {
            return "Invalid Input"
        }
    }
}

let madLibGenerator = MadLibGenerator(adjective: "diverse", animal: "octopus", number: "2000", clothingItem: "sock", funnySound: "fart", verbEndingWithIng: "screaming", celebrityChef: "Gordon Ramsey", exclamation: "great googly moogly!")
let madLib = madLibGenerator.generateMadLib()
print(madLib)
