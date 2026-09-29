import UIKit

var testScore: Int?
//Nil could mean that the student hasn't taken the test yet which is different than getting a 0
var middleName: String?
//People could not have a middle name so it wouldn't have a value.
var shippingTrackingNumber: Int
// you can't ship something without having it labeled
var flightArrivalTime: Double
// it has to arrive at some point. It can change but it will arrive
var customerLoyaltyTier: Int?
//some customers might not be in the loyalty program which is different than having the lowest tier
var promoCodeExpiration: Double?
//some promo codes don't expire which isn't the same as already being expired.
var jobEndDate: Double?
//some jobs dont have a specific end date
var usersLocation: String?
// Can turn off location in settings which is different than just not existing
var phoneNumber: Int?
//Not everyone has a phone but not having a phone number is different than it being 0
var hairColor: String?
//some people cant grow hair that is different than being see through.
