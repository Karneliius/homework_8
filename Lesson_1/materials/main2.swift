//
//  main.swift
//  Lesson_1
//
//  Created by Askar on 07.11.2022.
//

import Foundation

let myArray: [String] = ["Six eggs", "Milk", "Flour"]
var myArrayTwo = ["Six eggs", "Milk", "Flour"]

myArrayTwo.append("Water")

print(myArray)
print(myArrayTwo)

var myArrayThree: Array<Double> = [1, 2, 3, 4, 5, 6, 7]
let emptyString = ""

let emptyArray: [String] = []
let emptyStringTwo = String()

myArrayThree.insert(9, at: 2)
myArrayThree[7] = 19

print(myArrayThree)

let repeatingArray: [Double] = Array(repeating: 0, count: 7)

print(repeatingArray)

let embededArray: [Double] = myArrayThree + repeatingArray

print(embededArray)

print("The number of products in my list is \(myArrayTwo.count)")

var newArray: [Int] = [3,4,5]
newArray.append(7) // [3,4,5,7]
newArray.append(8)

newArray += [4]
newArray = newArray + [9]

print(newArray)

print(newArray[newArray.count - 1])

var bigList: [String] = ["blue", "green", "yellow", "purple", "pink", "red", "white", "orange"]

print(bigList[...4])

var removedColor: String = bigList.remove(at: 5)

print(removedColor)

var fourthItem: String

fourthItem = bigList.remove(at: 4)

print(bigList)
print(fourthItem)

bigList.removeSubrange(2...4)
bigList.removeLast()

print(bigList)

var mySet: Set<Int> = [1,2,3] // |Int|
mySet.insert(4)
mySet.insert(3)

print(mySet)
print(1 == 2)

let emptyStringThree = String()
let emptySet = Set<Character>()

mySet.remove(2)

print(mySet)

var myDictionary: Dictionary<String, String> = ["01": "Astana", "02": "Almaty", "03": "Shymkent"]
let examResults: [String: Bool] = ["Askar": false, "Rustem": true, "Assyl": true]

print(myDictionary)
print(examResults)

let emptyDictionary: [String: String] = [:]

let exampleArray: [Int] = [4,5,7]
print(exampleArray[2])

//print(myDictionary["01"])
print(myDictionary.count)

myDictionary["05"] = "Taldykorgan"
myDictionary["01"] = "Nur-Sultan"
myDictionary["02"] = nil // null
myDictionary.updateValue("Astanam", forKey: "01")
myDictionary.removeValue(forKey: "05")

print(myDictionary)

/*
 Home work / Assignment

 Полная Ваша характеристика:
 
 1. Имя
 2. Фамилия
 3. Любимый цвет
 4. Все члены семьи
 5. Самые редкие имена которые Вы встречали
 6. В каких городах Вы побывали ("TSE": Astana)
 7. Указать рейндж Ваших лююбимых увлечений
 Общий. Поиграйтесь со всем, что мы вместе с Вами создали
 Финальный. Интерполяция строк (краткий рассказ о себе)
 
*/
