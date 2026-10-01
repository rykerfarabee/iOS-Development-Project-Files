---
id: 01897512-8E77-4910-BC73-732B4BECEA87
name: Form and Controls
type: lab
assignDay: SB08
dueDay: SB10
location:
---

# Form and Controls Lab Requirements - Due Sep 18, 2026

## Overview

Thread Count is a styling studio in Lehi. Right now they book consultations over the phone, and the stylist writes the details on a sticky note. They want one screen a client can fill out instead.

You are building that screen. Every row on it is something the client answers, so the whole thing belongs in a `Form`.

When finished, have an instructor sign off on your work.

## Instructions

1. Create a new SwiftUI iOS App project in Xcode. Name it "Form and Controls".
2. Above `body` in `ContentView`, add a constant that holds an array of at least 5 available consultation dates. Store each date as a `String`, written the way a client would read it, like "Tuesday, October 6".
3. Replace what is inside `body` with a `Form`. Everything you add from here goes inside it.
4. Organize the form into at least 3 `Section` groups, each with a heading that says what the group is for. The steps below say which section each row belongs in.

### Section 1: the client

5. Add a text field for the client's name and store what they type in a property.
6. Add a second text field for the look they are going for, something like "job interview" or "first date". Give it its own property.

### Section 2: the appointment

7. Add a picker for the consultation date, building its rows from your array. Store the chosen date in a property.
8. Add a stepper for how many outfits the stylist should plan. Limit it to a range of 1 to 5, and show the current number in the stepper's label.
9. Add a slider for how bold the client wants the styling to be. Use a range of 0 to 1, where 0 is safe and 1 is bold.
10. Add a toggle for whether the client wants a text reminder the day before.
11. When that toggle is on, show one more row in this section: a text field for the client's phone number. When it is off, that row is not on the screen at all.

### Section 3: the summary

12. Add a final section that reports everything back to the stylist: the name, the look, the date, the number of outfits, the boldness value, and whether a reminder was requested. Label every line. "Outfits: 3" tells the stylist something. "3" does not.
13. The boldness value will print as a long decimal. That is expected for now, and it is not something you need to fix.
14. Run the app. Change every control one at a time and watch the summary update as you go.
15. Flip the reminder toggle off and on, and check that the phone number row appears and disappears with it.

## Black Diamond

- Your array holds strings, so the app knows nothing about an appointment except the day. Replace it with an array of a struct that holds the date as a `Date`,  as well as the stylist working that day, and the start time. Make the picker select a whole appointment rather than a `String`, and have the summary report all three facts from that one selection. You will need to rethink how the picker's rows are tagged.
- Add some extra design to make the app more visually appealing--try out different Form styles, different color schemes, and anything else you feel would look nice.

## Rubric

- [ ] Project named "Form and Controls"
- [ ] An array of at least 5 dates, drawn into the picker with a `ForEach`
- [ ] A `Form` containing at least 3 `Section` groups, each with a heading
- [ ] `TextField`, `Picker`, `Stepper`, `Slider` and `Toggle` each used at least once
- [ ] Every control's value held in a `@State` property and bound with `$`
- [ ] The phone number field shows up only while the reminder toggle is on
- [ ] The summary section has a labeled line for every answer, and all of them update
