//
//  main.swift
//  Lesson_1
//
//  Created by Askar on 07.11.2022.
//

import Foundation

var number = 5
let numberTwo = 600
var name = "Askar"

number = 600000000
//numberTwo = 7

print(number)
print(numberTwo)

var myNumber: Double = 5.0
var nickName: String = "Aitkulov"

var numberOfStudents: Int = 26
var thisVariableIsAnotherOne: Int = 14

var numberFour = 4 // good
var number_4 = 4 // not in swift
var NumberFour = 4 // not in swift
var API_KEY = "KEY" // not in swift

let studentName: String = "Rustem"
print(studentName)

let anotherStudent: String = "Kydyr"
print("My name is \(anotherStudent) and I am glad to meet you")

let catName: String = "Miku"; print(catName)

let letterA: Character = "a"
let myString: String = "Zoom"
let myInteger: Int = 7
let myFloatingNumber: Double = 5.25
let myBoolean: Bool = true

let myText: String = """
Paragraph one
    Parahraph two
text text text
"""

print(myText)

let anotherText: String = "Hello!\\How are you?"
let zeroSymbol: String = "Askar\0Aitkulov"
let stringWithLiterals = "And he said: \"Hi?\""

print(anotherText)
print(zeroSymbol)
print(stringWithLiterals)

var emptyString = ""
var anotherEmptyString = String()

print(emptyString, anotherEmptyString)

var multiplier: Int = 3

print("\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)")

var limitedInteger: UInt8 = 14 // 0 -> 255
print(limitedInteger)

print(UInt.max, UInt.min)

var userConfirmation: Bool = false
userConfirmation = true

func didUpdateWeather(with model: String) {
    print(model)
}

didUpdateWeather(with: "Weather is good!")

/*
 
 String name = "Askar";
 System.out.println("My name is " + name + " and I am glad to meet you");
 
 */

/*
 
 14
 15
 16
 Askar
 ["apple", "tomato", "juice"]
 
 */

/*
 
 dsf
 sd
 
 */

/*
 
 Decimal = 25, 10675, 212, 21.45
 Binary = 1011, 1111, 10010011
 
 00000000
 11111111 -> 255
 
 */

// yagni -> you aint gonna need it
