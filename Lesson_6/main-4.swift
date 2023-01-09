//
//  main.swift
//  main
//
//  stuff
//

import Foundation

protocol SomeProtocol {
    
    var counter: Int { get set }
    var area: Double { get }
    
    func doSomething()
}

protocol Areable {
    func area() -> Double
}

class Shape: Areable {
    
    func area() -> Double {
        return 0.0
    }
}

protocol AnotherProtocol {
    
    static func someMethod()
    
    mutating func toggle()
}

struct SomeStruct: AnotherProtocol, OtherProtocol {

    var switchDevice: Bool = false
    
    init(someParameter: Int) {
        print("HI!")
    }
    
    static func someMethod() {
        print("I am some method")
    }
    
    mutating func toggle() {
        switchDevice = !switchDevice
    }
}

//let someStruct = SomeStruct()
// someStruct.someMehtod() // not found
SomeStruct.someMethod()

var isEnabled = false
isEnabled = !isEnabled
print(isEnabled)
isEnabled = !isEnabled
print(isEnabled)

protocol OtherProtocol {
    
    init(someParameter: Int)
}

struct OtherStruct: OtherProtocol {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    init(someParameter: Int) {
        name = "Clone \(someParameter)"
    }
}

let structObjectOne = OtherStruct(name: "Askar")
print(structObjectOne.name)
let structObjectTwo = OtherStruct(someParameter: 5)
print(structObjectTwo.name)

let otherProtocolType: OtherProtocol
otherProtocolType = SomeStruct(someParameter: 1)

print("----------------------")

protocol Voicable {
    
    func doVoice()
}

extension Voicable {
    func doVoice() {
        print("Some random voice!")
    }
}

struct Cat: Voicable {
    
    func doVoice() {
        print("Meow!")
    }
}

struct Dog: Voicable {
    func doVoice() {
        print("Bark!")
    }
}

struct Mouse: Voicable {

}

struct Bird: Voicable {

}

let cat = Cat()
let dog = Dog()
let mouse = Mouse()
let bird = Bird()
var voicable: [Voicable] = []
voicable.append(cat)
voicable.append(dog)
voicable.append(mouse)
voicable.append(bird)
for voicableAnimal in voicable {
    voicableAnimal.doVoice()
}

func changeString() {
    // some logic
}

/*
 
 class UIView {
    // base logic
 }
 
 class MyView: UIView {
    
    func newMethod() {
        // some logic
    }
 }
 
 extension UIView {
     func newMethod() {
        // some logic
    }
 }
 
 */

extension String {
    func sayHello() {
        print("Hi! I am \(self)")
    }
}

let myString = "My String"
myString.sayHello()

// 2042

/*
 
 let random = UIImage
 
 random.imageSetter.logic.logic.set(on: ourImage)
 
 
 */

func someFunc(with list:inout [Int]) {
    print("HAHA!")
}

/*
 
 Assignment 6
 
 *** Hierarchy of Birds
 
 class Bird // Superclass
 
 class Eagle // Subclass
  
 class Duck // Subclass
 
 ...
 
 protocol Flyable
 
 protocol Swimmable
 
 protocol Hunter
 
 protocol Voicable
 
 */
