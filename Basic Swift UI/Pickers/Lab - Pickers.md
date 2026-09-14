---
id: 7C4A8D8B-BF99-4065-B5E2-2AD824B488C0
name: Pickers
type: lab
assignDay: SB06
dueDay: SB07
location:
---

# Pickers Lab Requirements - Due Sep 15, 2026

Build a single screen app. The screen shows facts about one of Utah's national parks. A picker decides which park.

In class your picker stored a `String`. This time it stores a whole struct. One selection changes four things on screen at once.

When finished, have an instructor sign off on your work.

## Your Data

| Park | Became a national park | Acres | Closest town |
| --- | --- | --- | --- |
| Zion | 1919 | 147,000 | Springdale |
| Bryce Canyon | 1928 | 36,000 | Bryce Canyon City |
| Arches | 1971 | 77,000 | Moab |
| Capitol Reef | 1971 | 242,000 | Torrey |

Acreage is rounded. Type the numbers without commas.

## Instructions

1. Make a new iOS App project in Xcode. Name it `ParkFacts`.
2. Above the `ContentView` struct, write a new struct named `Park`. Give it four properties: the park's name, the year it became a national park, its size in acres, and the closest town. Pick a sensible type for each one.
3. Write `: Hashable` right after the struct's name. A picker has to be able to tell one option from another, and this is how you promise Swift that it can. `Hashable` is a protocol. You read about protocols tonight. You do not need to understand it today. Just type it.
4. Inside `ContentView`, create four `Park` values, one for each row of the table. Store each one in its own constant.
5. Add a `@State` property to hold the park the user has chosen. Start it at Zion.
6. Add a `Picker`. Give it the label "Park". Pass it your state property with the `$` prefix.
7. Inside the picker, add one `Text` row per park. The text shows the park's name.
8. Tag each row. This is the part that is new. Tag it with the whole park value, not with the park's name.
9. Under the picker, add four `Text` views. Each one reads a different property off the selected park. Label each one so a reader knows what the number means. "Acres: 147000" tells you something. "147000" does not.
10. Put the picker and the four `Text` views in a `VStack`.
11. Run the app. Change the picker. All four lines should change at the same time.
12. Add `.pickerStyle(.segmented)` to the picker. Look at it with four parks in it. Decide which style you want to keep, and be ready to say why.

## Black Diamond

Give the `Park` struct a computed property that reports how many years it has been a national park. Treat the current year as 2026. Display it as a fifth line on screen.

## Rubric

All exercises are complete and correct.

- [ ] A `Park` struct holds all four facts about a park
- [ ] The picker's selection is a `Park`, not a `String`
- [ ] Every picker row is tagged with a whole `Park` value
- [ ] Four labeled `Text` views all change from one selection
- [ ] Both picker styles were tried, and the student can say which one they chose
