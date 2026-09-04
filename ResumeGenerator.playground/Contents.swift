import UIKit

struct ResumeGenerator {
    var fullName: String
    var jobTitle: String
    var topSkill1: String
    var topSkill2: String
    var yearsOfExperience: String
    var careerGoal: String
    static let formatCount = 3
    var formatNumber: Int = ResumeGenerator.randomFormatNumber()
    
    var hasValidInput: Bool {
        if fullName.isEmpty ||
            jobTitle.isEmpty ||
            topSkill1.isEmpty ||
            topSkill2.isEmpty ||
            yearsOfExperience.isEmpty ||
            careerGoal.isEmpty {
            return false
        } else {
            return true
        }
    }

    static func randomFormatNumber() -> Int {
        return Int.random(in: 1...formatCount)
    }
 
    var formatTitle: String {
        switch formatNumber {
        case 1:
            return "Professional Summary"
        case 2:
            return "Career Snapshot"
        default:
            return "Personal Profile"
        }
    }

    func generateResume() -> String {

        if hasValidInput == false {
            return "Invalid Input"
        }

        switch formatNumber {
        case 1:
            return """
            My name is \(fullName), and I am a \(jobTitle) with \(yearsOfExperience) years of experience. My strongest skills include \(topSkill1) and \(topSkill2). I am looking to continue growing professionally and use my experience and skills to achieve my career goal of \(careerGoal).
            """
            
        case 2:
            return """
            \(fullName) is a motivated \(jobTitle) with \(yearsOfExperience) years of experience. With strengths in \(topSkill1) and \(topSkill2), I bring a strong work ethic and a desire to succeed. My professional goal is to \(careerGoal).
            """
            
        default:
            return """
            Professional Profile: \(fullName)
            
            Career: \(jobTitle)
            Experience: \(yearsOfExperience) years
            Top Skills: \(topSkill1), \(topSkill2)
            Career Goal: \(careerGoal)
            
            \(fullName) is prepared to use their experience and skills as a \(jobTitle) while working toward the goal of \(careerGoal).
            """
        }
    }
}

let myResume = ResumeGenerator(
    fullName: "Ryker Farabee",
    jobTitle: "Software Developer",
    topSkill1: "Problem Solving",
    topSkill2: "Swift Programming",
    yearsOfExperience: "0",
    careerGoal: "build useful and creative applications"
)

print(myResume.formatTitle)
print(myResume.generateResume())


let secondResume = ResumeGenerator(
    fullName: "Michael Pinson",
    jobTitle: "Pooper scooper",
    topSkill1: "Scooping poopies",
    topSkill2: "Pooping",
    yearsOfExperience: "17",
    careerGoal: "Poops and scoops those poops",
    formatNumber: 1

)

print(secondResume.formatTitle)
print(secondResume.generateResume())

let invalidResume = ResumeGenerator(
    fullName: "Ethan Beecher",
    jobTitle: "",
    topSkill1: "Leadership",
    topSkill2: "Teamwork",
    yearsOfExperience: "-8",
    careerGoal: "lead successful projects"
)

print(invalidResume.generateResume())
