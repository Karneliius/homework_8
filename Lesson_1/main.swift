//
//  main.swift
//  Lesson_1
//
//  Created by Anelya Kabyltayeva on 10.11.2022.
//

import Foundation
let myFirstName: String = "Anelya"
let myLastName: String = "Kabyltayeva"
let myAge: Int = 23

let emptyString = " "

var favouriteColors: Set = ["nude", "black",  "jade", "white"]

print (favouriteColors.remove("white"))

for colors in favouriteColors {
    print (" \(colors)")
}
let emptyStringTwo = " "

var membersOfMyFamily: [String: String] = ["Father" : "Kanat", "Mother" : "Tolkyn", "Older brother" : "Anuar", "Younger sister" : "Altynai","Younger brother" : "Amir"]

membersOfMyFamily ["Me"] = "Anelya"
print (membersOfMyFamily)

print ("My family consists of \(membersOfMyFamily.count) people:")

for (member, memberName) in membersOfMyFamily {
    print ("\(member): \(memberName)")

}

let arrayOfAges: [Int] = [52, 55]
var arrayOfAgesTwo: [Int] = [23, 32, 16]
arrayOfAgesTwo.append(10)
print(arrayOfAgesTwo)

let embededArrayOfAges: [Int] = arrayOfAges + arrayOfAgesTwo
print (embededArrayOfAges)

var setOfRareNames: Set <String> = ["Zere", "Aylin", "Alim", "Aikun"]
setOfRareNames.insert("Inayat")
setOfRareNames.insert("Latifa")


let cities = ["TDK": "Taldykorgan", "TSE": "Astana", "DXB": "OAE", "AYT": "Antalya"]
if cities.isEmpty {
  print("The cities dictionary is empty.")
} else {
  print("The cities dictionary is not empty.")
}

print (cities)

let myHobbies: [String] = ["Reading", "Swimming", "Volleyball"]


let firstPlace = myHobbies[0]


let yearOfGraduateOfSchool = 2018
let yearOfGraduateOfUniversity = 2022

let message = "My name is \(myFirstName) and I am \(myAge) years old. I have graduated school in \(yearOfGraduateOfSchool) and graduated university in \(yearOfGraduateOfUniversity). I have \(favouriteColors.count) favourite colors. My family consists of \(membersOfMyFamily.count) people. They are \(membersOfMyFamily). I know the following rare names:\(setOfRareNames).I was in \(cities.count) cities: \(cities ["TSE"]), \(cities ["DXB"]), \(cities ["TDK"]),\(cities ["AYT"]). I have \(myHobbies.count) hobbies.The most favourite thing what I like to do in my free time is \(firstPlace)."
print (message)

