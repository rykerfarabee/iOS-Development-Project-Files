//  🏔️ MTECH Code Challenge CS05: "#Bridges"
//  Concept: Practice applying unique evaluation requirements to a data collection (in this case, a string).

//  Instructions:
    //  Create a function that takes a string as input and returns an Int.
    //  The input string will represent a two-dimensional grid, composed of spaces and hashes (#).
    //  Create a function that returns the count of all bridges in a two-dimensional grid, with "/" representing a line break.
    //  A sequence in the input string is considered a "bridge" if:
        //  It connects from one end of the grid to the one opposite to it, vertically or horizontally.
        //  It is unobstructed.

// Example
    // Input:
    // "#########/#       #/#   #   #/#   #   #/#### ####/#   #   #/#   #   #/#       #/#########"
    
    //  Logic:
    //  In this case the number 4 is returned because, when mapped out, the string reveals four bridges that meet the requirements listed above, as shown here:
        
    /*  #########/
        #       #/
        #   #   #/
        #   #   #/
        #### ####/
        #   #   #/
        #   #   #/
        #       #/
        #########  */

    // Output: 4

//  Notes:
    //  Intersecting bridges can still count, as shown.
    //  Vertical bridges count as long as the requirements are met.

//  ⌺ Black Diamond Challenge:
    //  Modify your function to be able to identify a bridge made out of any characters, not just hash marks. Each bridge can only be constructed of one character, or else it doesn't count (i.e., "0000n0000" would not be a valid bridge.)

import Foundation
func countBridges(_ input: String) -> Int {
    let rows = input.components(separatedBy: "/")
    var bridgeCount = 0

    for row in rows {
        if !row.contains(" ") {
            bridgeCount += 1
        }
    }

    for column in 0..<rows[0].count {
        var isBridge = true

        for row in rows {
            let index = row.index(row.startIndex, offsetBy: column)

            if row[index] == " " {
                isBridge = false
            }
        }

        if isBridge {
            bridgeCount += 1
        }
    }

    return bridgeCount
}
print(countBridges("#########/#       #/#   #   #/#   #   #/#### ####/#   #   #/#   #   #/#       #/#########"))

