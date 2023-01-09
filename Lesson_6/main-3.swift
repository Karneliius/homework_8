//
//  main.swift
//  main
//
//  stuff
//

import Foundation

func setLabel() {
    // logic
}

func calculateBMI() {
    // logic
}

struct Student {
    
    private let id = Int.random(in: 1000...9999)
    private var name: String
    private var grade: Character
    
    init(name: String, grade: Character) {
        self.name = name
        self.grade = grade
    }
    
    func getName() -> String {
        return name
    }
    
    mutating func setName(on name: String) {
        self.name = name
    }
}

var myStudent = Student(name: "Askar", grade: "A")
//myStudent.name = "Raksa"
//myStudent.grade = "F" // incorrect
//print(myStudent.name, myStudent.grade)
print(myStudent.getName())
//myStudent.getName() = "Raksa" // incorrect
myStudent.setName(on: "Raksa")
print(myStudent.getName())

print("---------------------")

protocol Flyable {
    func fly()
}

protocol Swimable {
    func swim()
}

class Bird {
    
    private var numberOfLegs: Int {
        return 2
    }
    
    func getNumberOfLegs() -> Int {
        return numberOfLegs
    }
    
    func doVoice() -> String {
        return "Bird voice!"
    }
    
//    final func fly() -> String {
//        return "Flying!"
//    }
}

class Eagle: Bird, Flyable {
    
    func hunt() -> String {
        return "Hunting!"
    }
    
    override func doVoice() -> String {
        return "Mighty eagle voice!"
    }
    
    func fly() {
        print("Flying eagle!")
    }
}

class Duck: Bird, Flyable, Swimable {
    
    func swim() {
        print("Swimming duck!")
    }
    
    func fly() {
        print("Flying duck!")
    }
}

class Penguin: Bird, Swimable {
    func swim() {
        print("Swimming penguin")
    }
}

class Griffon: Bird {

}

extension Bird {
    
    final func eat() -> String {
        return "Eating!"
    }
}

let myEagle = Eagle()
print(myEagle.getNumberOfLegs())
print(myEagle.hunt())
print(myEagle.doVoice())
print(myEagle.fly())
let myDuck = Duck()
print(myDuck.getNumberOfLegs())
print(myDuck.swim())
print(myDuck.doVoice())
print(myEagle.fly())
let myPenguin = Penguin()

//class Car {
//    func move() {
//
//    }
//}
//
//class Human {
//    func move() {
//
//    }
//}

class Shape {
    
    func area() -> Double {
        return 0.0
    }
}

class Circle: Shape {
    
    override func area() -> Double {
        return 1.0 // (pi * r)**2
    }
}

class Rectangle: Shape {
    
    override func area() -> Double {
        return 2.0 // length * width
    }
}

// Protocol-Orientated Programming

protocol Doable {
    
}

protocol Dooable {
    
}

protocol Doooable {
    
}

class Raven: Bird, Doable, Dooable, Doooable {
    
}

// -------------------------------

class Admin {
    
    private var name: String = ""
    
    /*
     
     Some secret stuff
     
     */
}

protocol Adminable {
    
    var rowCount: Int { get set }
    
    func administrate()
}

print("-------------------")

class Vehicle {
    
    private var dateOfCreation: String = "now"
    
    func doSound() {
        print("Bee beep!")
    }
}

class Audi: Vehicle {
    
    override func doSound() {
        print("Wroom wroom!")
    }
}

protocol Autopilotable {
    
    func autoPilot(with password: String)
}

class Lexus: Audi, Autopilotable {
    
    func autoPilot(with password: String) {
        print("Moving on auto pilot mode")
    }
}

class Tesla: Vehicle, Autopilotable {
    
    func autoPilot(with password: String) {
        print("Moving on auto pilot mode and taking care of babies")
    }
}

protocol SomeProtocol {
    func doSomeThing()
}

protocol AnotherProtocol {
    func doAnotherThing()
}

protocol OtherProtocol {
    func doOtherThing()
}

class SomeClass: SomeProtocol, AnotherProtocol {
    func doSomeThing() {
        <#code#>
    }
    
    func doAnotherThing() {
        <#code#>
    }
}

class BigClass {
    
}

class SmallClass: BigClass, SomeProtocol, AnotherProtocol {
    func doSomeThing() {
        print("Hi")
    }
    
    func doAnotherThing() {
        print("Hi")
    }
}

print("----------------")

class ViewClass {
    
    /*
     
     
        logic
     
     */

}

//MARK: - Some protocol methods

extension ViewClass: SomeProtocol {
    func doSomeThing() {
        print("Hi")
    }
    
    
    /*
     
     some logic
     
     */
    
}

//MARK: - Other protocol methods

extension ViewClass: OtherProtocol {
    func doOtherThing() {
        print("Hi")
    }
    
    
    //
    
}

extension ViewClass: AnotherProtocol {
    func doAnotherThing() {
        print("Hi")
    }
    
    
    //
    
}
