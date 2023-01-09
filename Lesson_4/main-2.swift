//
//  main.swift
//  main
//
//  stuff
//

import Foundation

enum BarCode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = BarCode.upc(8, 58292, 84357, 3)
var prodcutQrcode = BarCode.qrCode("MilkiwayChocolateAstana")

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem) \(manufacturer) \(product) \(check)")
case .qrCode(let productCode):
    print("QR: \(productCode)")
}

switch prodcutQrcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem) \(manufacturer) \(product) \(check)")
case .qrCode(let productCode):
    print("QR: \(productCode)")
}

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lifeFeed = "\n"
    case carriageReturn = "\r"
}

let myTabulation = ASCIIControlCharacter.tab
print(myTabulation.rawValue)

enum Letter: String {
    case one = "one", two, three, four, five, six
}

enum Chisla: Int {
    case one, two, three, four, five, six
}

enum Bukva: String {
    case one, two, three, four, five, six
}

enum Floating: Float {
    case one, two, three, four, five, six
}

print(Number.six.rawValue)
print(Letter.two.rawValue)
print(Chisla.three.rawValue)
print(Bukva.four.rawValue)
print(Floating.five.rawValue)

enum Number: Int {
    case one, two, three, four, five, six
}

let myEnumVariable = Number(rawValue: 4)
print(myEnumVariable!)

let name: String = "Askar"
//name.

class Human {
    
    var firstName: String
    var lastName: String
    var age: Int
    
    init(firstName: String, lastName: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
    
    func birthday() {
        age += 1
    }
    
    func clone(newHuman: Human) {
        newHuman.firstName = firstName
        newHuman.lastName = lastName
        newHuman.age = age
    }
}

func myFunction() {
    print("I am a function!")
}

//let myHuman = Human(firstName: "Askar", lastName: "Aitkulov", age: 0)
//print(myHuman.age)
//myHuman.birthday()
//print(myHuman.age)
//myHuman.birthday()
//print(myHuman.age)
//myHuman.birthday()
//print(myHuman.age)
//myHuman.birthday()
//print(myHuman.age)

struct Animal {
    var name: String
    var age: Int
    
    mutating func birthday() {
        age += 1
    }
}

class Car {
    
    var probeg: Int
    var numberOfWheels: Int
    var gosNumber: String
    
    init(probeg: Int, numberOfWheels: Int, gosNumber: String) {
        self.probeg = probeg
        self.numberOfWheels = numberOfWheels
        self.gosNumber = gosNumber
    }
}

//class Tesla: Car {
//
//    var model: String
//
//
//} // challenge

/*
 
 Struct vs. Class
 
 Struct - value data type
 Class - reference data type
 
 */

var myCat = Animal(name: "Miku", age: 0)
var myHuman = Human(firstName: "Assyl", lastName: "Aitkulova", age: 0)

var anotherCat = myCat
anotherCat.name = "Piku"
print(myCat.name, anotherCat.name)
var anotherHuman = Human(firstName: "", lastName: "", age: 0)
myHuman.clone(newHuman: anotherHuman)
anotherHuman.firstName = "Kate"
print(myHuman.firstName, anotherHuman.firstName)
