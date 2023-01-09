//
//  main.swift
//  Lesson_1
//
//  Created by Askar on 07.11.2022.
//

import Foundation

let someCharacter: Character = "-"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d":
    print("\(someCharacter) is consonant")
default:
    print("\(someCharacter) is not a vowel or consonant")
}

let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]

for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
    /*
     sd
     f
     sdf
     sd
     f
     
     sdfsd
     */
}
/*
 g
 gr
 grt
 grtm
 */
print(puzzleOutput)

let road = "______|____"
for step in road {
    if step == "|" {
        print("Movement stopped!")
        break
    }
    print("Bee Beep!") // correct
//    switch step {
//    case "|":
//        print("Movement stopped!")
//        break
//    default:
//        print("Bee Beep!") // INCORRECT
//    }
}

print("-------------")

let integerToDescribe = 13
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

let numbers: [Int] = [1,2,3,4,5,6,7,8,9]
for index in 0..<numbers.count {
    print(numbers[numbers.count - index - 1])
}

var myPosition = "Boss"
var friendPosition = "Manager"
var friendTwoPosition = "CEO"

func greeting(for employeePosition: String) {
    switch employeePosition {
    case "Boss", "CEO", "Vice President":
        print("Welcome back, have a nice day boss!")
    case "Manager":
        print("Hi! Today we have 11 guests coming")
    case "Employee":
        print("Have a nice work day!")
    default:
        print("Hey how can I help you!")
    }
}

greeting(for: myPosition)
greeting(for: friendPosition)
greeting(for: friendTwoPosition)

print("Hello world!")
print("I love my life!")
print("Today I will have a wonderful day!")

func affirmation() {
    print("Hello world!")
    print("I love my life!")
    print("Today I will have a wonderful day!")
}

affirmation()

print("Hello world! My name is *your name*!")
print("I love my life!")
print("Today I will have a wonderful day!")

func affirmationWithInput(name: String) {
    print("Hello world! My name is \(name)!")
    print("I love my life!")
    print("Today I will have a wonderful day!")
}

let myName = "Askar"
affirmationWithInput(name: myName)

func affirmationWithInnerOuter(with name: String) {
    print("Hello world! My name is \(name)!")
    print("I love my life!")
    print("Today I will have a wonderful day!")
}

affirmationWithInnerOuter(with: myName)

func affirmationWithNoOuter(_ name: String) {
    print("Hello world! My name is \(name)!")
    print("I love my life!")
    print("Today I will have a wonderful day!")
}

affirmationWithNoOuter(myName)

func myMultiply(_ x: Int, _ y: Int) {
    print(x * y)
}

myMultiply(5, 4)
let resultFromMultiply = myMultiply(5, 4) // noting initialized
print(resultFromMultiply)

func multiplyWithReturn(_ x: Int, _ y: Int) -> Int {
    x * y
}

let resultFromFunction = multiplyWithReturn(5, 6)
print(resultFromFunction)

print("-----------")

let arrayToUse = [5,6,2,10,3,9,4,1,0,6]
func minMax(in array: [Int]) -> (Int, Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    print(currentMin, currentMax)
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
        print(currentMin, currentMax)
    }
    return (currentMin, currentMax)
}

let result = minMax(in: arrayToUse)
print("Final result from minMax is \(result)")

var gameStarted: Bool = false

/*
 
 Assignment 2 / HW 2
 
 
 1. ** Создать функцию с циклом while который ломается при определенном вводном значении. Нужно будет задействовать switch, if-else, break (опционально continue и fallthrough)
 
 2. *  , inner and  , no parameters, default parameter
 
 3. *** [4,5,0,2,5,0,7,8,0]
    Создать функцию, которая выведет новый лист, в котором все нули стоят в конце.
    result: [4,5,2,5,7,8,0,0,0] 
 
 */
