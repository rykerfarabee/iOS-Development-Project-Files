import UIKit

struct DVD {
    var title: String
    var genre: String
    var runtimeMinutes: Int
}

let dvd1 = DVD(
    title: "The Incredibles",
    genre: "Animation",
    runtimeMinutes: 115
)

let dvd2 = DVD(
    title: "Jurassic Park",
    genre: "Adventure",
    runtimeMinutes: 127
)

struct Building {
    var name: String
    var floors: Int
    var address: String
}

let building1 = Building(
    name: "Empire State Building",
    floors: 102,
    address: "New York, NY"
)

let building2 = Building(
    name: "Seattle Public Library",
    floors: 11,
    address: "Seattle, WA"
)

struct SocialMediaProfile {
    var username: String
    var followers: Int
    var verified: Bool
}

let profile1 = SocialMediaProfile(
    username: "alex_gamer",
    followers: 12500,
    verified: false
)
let profile2 = SocialMediaProfile(
    username: "music_maria",
    followers: 87500,
    verified: true
)

struct Resume {
    var name: String
    var jobTitle: String
    var yearsExperience: Int
}

let resume1 = Resume(
    name: "Jordan Smith",
    jobTitle: "Software Developer",
    yearsExperience: 4
)

let resume2 = Resume(
    name: "Taylor Johnson",
    jobTitle: "Graphic Designer",
    yearsExperience: 7
)

struct WashingMachine {
    var brand: String
    var capacityKg: Double
    var hasDryer: Bool
}

let washingMachine1 = WashingMachine(
    brand: "Samsung",
    capacityKg: 8.0,
    hasDryer: true
)

let washingMachine2 = WashingMachine(
    brand: "LG",
    capacityKg: 6.5,
    hasDryer: false
)

struct GameAudioSettings {
    var masterVolume: Int
    var musicVolume: Int
    var soundEffectsVolume: Int
}

let audioSettings1 = GameAudioSettings(
    masterVolume: 80,
    musicVolume: 60,
    soundEffectsVolume: 90
)

let audioSettings2 = GameAudioSettings(
    masterVolume: 50,
    musicVolume: 30,
    soundEffectsVolume: 70
)

struct Piano {
    var brand: String
    var numberOfKeys: Int
    var color: String
}

let piano1 = Piano(
    brand: "Yamaha",
    numberOfKeys: 88,
    color: "Black"
)

let piano2 = Piano(
    brand: "Kawai",
    numberOfKeys: 88,
    color: "White"
)

struct Apartment {
    var address: String
    var bedrooms: Int
    var monthlyRent: Double
}

let apartment1 = Apartment(
    address: "123 Oak Street",
    bedrooms: 2,
    monthlyRent: 1800.00
)

let apartment2 = Apartment(
    address: "456 Pine Avenue",
    bedrooms: 1,
    monthlyRent: 1450.00
)

struct Bicycle {
    var brand: String
    var gearCount: Int
    var color: String
}

let bicycle1 = Bicycle(
    brand: "Trek",
    gearCount: 21,
    color: "Blue"
)

let bicycle2 = Bicycle(
    brand: "Specialized",
    gearCount: 18,
    color: "Red"
)

struct Password {
    var username: String
    var length: Int
    var hasSpecialCharacters: Bool
}

let password1 = Password(
    username: "student123",
    length: 12,
    hasSpecialCharacters: true
)

let password2 = Password(
    username: "gamer456",
    length: 16,
    hasSpecialCharacters: true
)
