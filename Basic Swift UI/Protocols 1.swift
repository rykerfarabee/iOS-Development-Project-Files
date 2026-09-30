//  Protocols 1.swift
//  Lab for SB07. Due at the start of the next class.
//
//  How to use this file:
//  1. Open any Xcode project. Your project from a previous lab is fine.
//  2. Drag this file into it.
//  3. Open the canvas with Editor > Canvas. Each Part below shows up as its own
//     tab across the top. Click a tab to run that Part.
//  4. Work top to bottom. Write your answers to the written questions in
//     comments, right under the question.
//
//  This needs Xcode 26 or newer. The #Playground macro does not exist before that.

import Playgrounds

// Part 1 - Reading a Protocol

// A protocol on its own does nothing. It is a list of requirements.

protocol Chargeable {
    var batteryPercent: Int { get }
    var isPluggedIn: Bool { get set }
    func plugIn()
}

// 1.1 Name what it requires.
//     Write one sentence for each of the three lines inside Chargeable, saying
//     what a conforming type has to provide.
//     a. would need to provide a batteryPercent Int
//     b. would need to prvide a value of true or false for isPluggedIn
//     c. and it would need to have a func named plugIn
//
//     Two of those requirements are properties. One of them can be declared
//     with let in a conforming type and one cannot. Which is which, and why?
//     Answer: the two variables are properties and the function can be a conforming type

struct WirelessMouse: Chargeable {
    var batteryPercent: Int
    var isPluggedIn: Bool

    func plugIn() {
        print("Mouse is charging")
    }
}

// 1.2 Does it conform? yes
//     The two types below are commented out because they do not compile.
//     Decide by hand what is wrong with each one first. Then uncomment one at
//     a time, read the error Xcode gives you, and write down whether you were
//     right.

 struct SmartWatch: Chargeable {
     var batteryPercent: Int
     var isPluggedIn: Bool

     func plugIn() {
         print("Watch is charging")
     }
 }
//
//     What is wrong with SmartWatch? isPluggedIn is a constant
//     Answer: same as above

// struct ElectricScooter: Chargeable {
//     var batteryPercent: Int
//     var isPluggedIn: Bool
// }
//
//     What is wrong with ElectricScooter? it doesnt have the plugIn func
//     Answer:

// 1.3 Spot the mistake.
//     Each of the two types below has one problem. Find it, then fix it by
//     editing the code and uncommenting it.

protocol Scannable {
    var barcode: String { get }
    func scan() -> String
}

 struct LibraryBook: Scannable {
     var barcode: String

     func scan() -> String {
         "\(barcode)"
     }
 }

 struct ParkingPass {
     var barcode: String

     func scan() -> String {
         return "\(barcode)"
     }
 }

#Playground("Part 1 - Reading a Protocol") {
    let officeMouse = WirelessMouse(batteryPercent: 42, isPluggedIn: false)
    officeMouse.plugIn()
    print("Battery: \(officeMouse.batteryPercent)%")

    var pass: ParkingPass = ParkingPass(barcode: "Your Mom")
    pass.scan()
}

// Part 2 - Writing a Protocol

// 2.1 Declare a protocol called Reservable with these three requirements:
//     1. A property roomNumber of type String that can be read.
//     2. A property isAvailable of type Bool that can be read and changed.
//     3. A method reserve(forHours:) that takes an Int and returns nothing.
//
protocol Reservable {
    var roomNumber: String{ get }
    var isAvailable: Bool{ get }
    func reserve(_ fourHours: Int)
}

// 2.2 Write a struct called StudyRoom that conforms to Reservable. Inside
//     reserve(forHours:), print a sentence with the room number and the number
//     of hours in it.

struct StudyRoom: Reservable {
    var roomNumber: String
    var isAvailable: Bool
    
    func reserve(_ fourHours: Int) {
        print("Study room \(roomNumber) reserved for \(fourHours) hours.")
    }
}

// 2.3 Write a second type called TennisCourt that also conforms to Reservable.
//     Give its reserve(forHours:) a different printed message.
//
//     What do these two types now have in common, and what is still different
//     about them?
//     Answer: They both conform to Reservable, so they both have a room number,
//     availability status, and reserve method. Their printed messages are different.
//
//
struct TennisCourt: Reservable {
    var roomNumber: String
    var isAvailable: Bool
    
    func reserve(_ fourHours: Int) {
        print("Tennis court \(roomNumber) reserved for \(fourHours) hours.")
    }
}

#Playground("Part 2 - Writing a Protocol") {
    // Create a StudyRoom and call reserve(forHours: 2) on it.
    // Then create a TennisCourt and reserve it too. Watch both printouts.
    let studyRoom = StudyRoom(roomNumber: "101", isAvailable: true)
    studyRoom.reserve(2)
    
    let tennisCourt = TennisCourt(roomNumber: "Court 1", isAvailable: true)
    tennisCourt.reserve(2)
}

// Part 3 - Your Own

// 3.1 Pick something you know well. Instruments, recipes, video games, tools,
//     cars. Anything works.
//
//     1. Write a protocol with at least one property requirement and at least
//        one method requirement. Use full names, not abbreviations.
//     2. Write two different types that conform to it.
//     3. Write one sentence saying what your protocol guarantees about any
//        type that conforms to it.
//        Answer: The protocol guarantees that any conforming vehicle has a
//        make and can start its engine.
//
//     Write the protocol and the two types here.

protocol Vehicle {
    var make: String { get }
    func startEngine()
}

struct Car: Vehicle {
    var make: String
    
    func startEngine() {
        print("\(make) car engine started.")
    }
}

struct Truck: Vehicle {
    var make: String
    
    func startEngine() {
        print("\(make) truck engine started.")
    }
}

#Playground("Part 3 - Your Own") {
    // Create one of each of your two types and use them.
    let car = Car(make: "Toyota")
    car.startEngine()
    
    let truck = Truck(make: "Ford")
    truck.startEngine()
}

// Mixed Review

// Write a protocol called Trackable with one requirement: a property
// statusDescription of type String that can be read.
//
// Then write a class called Shipment that conforms to Trackable. Give it two
// stored properties, trackingNumber of type String and hasArrived of type
// Bool. Satisfy statusDescription with a computed property that returns a
// different sentence depending on whether hasArrived is true or false.
//
// Write both here.

protocol Trackable {
    var statusDescription: String { get }
}

class Shipment: Trackable {
    var trackingNumber: String
    var hasArrived: Bool
    init(trackingNumber: String, hasArrived: Bool) {
        self.trackingNumber = trackingNumber
        self.hasArrived = hasArrived
    }
    var statusDescription: String {
        if hasArrived {
            return "Shipment \(trackingNumber) has arrived."
        } else {
            return "Shipment \(trackingNumber) has not arrived yet."
        }
    }
}

#Playground("Mixed Review") {
    // Create two Shipment objects, one that has arrived and one that has not.
    // Print statusDescription for each.
    let arrivedShipment = Shipment(trackingNumber: "12345", hasArrived: true)
    let pendingShipment = Shipment(trackingNumber: "67890", hasArrived: false)
    
    print(arrivedShipment.statusDescription)
    print(pendingShipment.statusDescription)
}

// Black Diamond (optional)

#Playground("Black Diamond") {
    // A protocol says what a type must have. It never says how the type does it.
    //
    // Some developers say that makes code easier to change later. Others say it
    // adds a layer you have to go looking through to find the real work. Pick a
    // side and argue it in 3 to 5 sentences.
    //
    // Answer:

    print("Black Diamond: write your answer in the comment above")
}
