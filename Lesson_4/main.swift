//
//  main.swift
//  main
//
//  stuff
//

import Foundation

let name = "Askar"
var emptyVal: Int? = nil
var myVal: Int? = 5
myVal = emptyVal
//print(myVal! * 5)

if myVal != nil {
    print("\(myVal!)")
} else {
    print("ERROR!")
}

if let newVal = myVal {
    print(newVal)
} else {
    print("ERROR!")
}

if let number = Int("123") {
    print(number)
} else {
    print("ERROR!")
}

let age = 30
if age < 60 && age > 20 {
    print("Adult")
} else {
    print("Go home!")
}

let position = "Fdsfdsf"
if position == "Manager" || position == "CEO" {
    print("Hi Boss!")
} else {
    print("Give me your ID!")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
} else {
    print("DIDN'T WORK!")
}

if let firstNumber = Int("5") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}

//var firstNumber = 5
//firstNumber = 6

guard let firstNumber = Int("475") else { fatalError("ERROR!!!") }
print(firstNumber)

//func myFunction(num: Int?) {
//    guard let num = num else { fatalError() }
//    print(num) // option 1
//    if let num {
//        print(num)
//    } // option 2
//}

let constant = 15
var defaultValue: Int = 15
var webAge: Int? = nil

print("Hello! Your age is \(webAge ?? defaultValue)")
print("Hello! Your age is \(webAge ?? defaultValue)")
print("Hello! Your age is \(webAge ?? defaultValue)")
print("Hello! Your age is \(webAge ?? defaultValue)")
print("Hello! Your age is \(webAge ?? defaultValue)")

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms: Int = 1
}

let john = Person()
let residenceInHotel = Residence()

func zaselit(who person: Person, in residence: Residence) {
    person.residence = residence
}

zaselit(who: john, in: residenceInHotel)

if let roomCount = john.residence?.numberOfRooms {
    print("John has \(roomCount) rooms in his residence")
} else {
    print("No data about rooms has been found!")
}

//print(john.residence?.numberOfRooms)

enum CompassPoint {
    case north
    case east
    case west
    case south
}

print(CompassPoint.north)

enum Planet: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToSpace = Planet.mars
directionToSpace = .saturn
print(directionToSpace)

switch directionToSpace {
case .jupiter: print("Go to jupiter!")
case .mars: print("WOW MARS!")
case .earth: print("Lovely Earth!")
default: print("Nah, boring!")
}

enum FetchType {
    case videos
    case photos
}

enum InputType {
    case pdf
    case jpg
    case png
    case txt
}

for planet in Planet.allCases {
    print(planet)
}

print(Planet.allCases.count)

enum BarCode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = BarCode.upc(8, 58292, 84357, 3)
var prodcutQrcode = BarCode.qrCode("MilkiwayChocolateAstana")
print(productBarcode)
print(prodcutQrcode)
