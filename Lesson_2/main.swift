//
//  main.swift
//  Lesson_1
//
//  Created by Askar on 07.11.2022.
//

import Foundation

class User {
    
}

let user: [User] = [User(), User(), User()]

let names: [String] = ["Anna", "Alex", "Oscar", "Bob", "Michael", "Roody", "Nansy"]

for name in names {
    print("Hey, \(name), hello!")
}

print("Hey, \(names[0]), hello!")
print("Hey, \(names[1]), hello!")
print("Hey, \(names[2]), hello!")
print("Hey, \(names[3]), hello!") // NOT GOOD

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]

for (animalName, legCount) in numberOfLegs {
    print("\(animalName) has \(legCount) legs")
}

let myArray: [String] = ["Askar", "Assyl", "Timur"]
let myTupple = ("Askar", 30, "purple", 190.23)
print(myTupple.0)

print(names[2...5])

for index in 2...5 {
    print("Hey, \(names[index]), hello!")
}

print("--------")

for index in 0..<names.count {
    print("Hey, \(names[index]), hello!")
}

print("--------")

let minutesInHour: Int = 60
for tickMark in 0...minutesInHour {
    print(tickMark)
}

let hours = 12
let hourInteraval = 3
for tickMark in stride(from: 3, through: hours, by: hourInteraval) {
    print(tickMark)
}

print("--------")

var counter = 10

while counter < 10 { //
    print("Not yet! Counter is equal to \(counter)")
    counter += 1
}

repeat {
    counter += 1
    print("Not yet! Counter is equal to \(counter)")
} while counter < 10

var isRaining: Bool = true

if isRaining {
    print("Take an umbrella!")
} else {
    print("Have a great time!")
}

var studentAge: Int = 40

if studentAge < 18 {
    print("Go home!")
} else {
    print("Welcome!")
}

var employeePosition: String = "Boss"

if employeePosition == "Boss" {
    print("You have full access!")
} else if employeePosition == "Vice President" {
    print("You almost have full access!")
} else if employeePosition == "Manager" {
    print("You have full access to personnel")
} else {
    print("You don't have access!")
}

switch employeePosition {
case "Boss":
    print("You have full access!")
    // asfsdf
    // sdfsdf
case "Vice President":
    print("You almost have full access!")
case "Manager":
    print("You have full access to personnel")
default:
    print("You don't have access!")
}

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings)")

let point = (0, 0)
switch point {
case (0, 0):
    print("on the origin")
case (let x, 0):
    print("on the x-axis with an x value \(x)")
case (0, let y):
    print("on the y-axis with an y value \(y)")
case let (x, y):
    print("somewhere else at \(x) \(y)")
}
