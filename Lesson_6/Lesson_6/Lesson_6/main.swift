//
//  main.swift
//  Lesson_6
//
//  Created by Anelya Kabyltayeva on 19.12.2022.
//

import Foundation
protocol Flying {
    func fly()
}
protocol Swimable {
    func swim()
}
protocol Hunter {
    func hunt()
}
protocol Voicable {
    func voice()
}

class Bird {
    
    private var numberOfLegs: Int {
        return 2
    }
    
    func getNumberOfLegs() -> Int {
        return numberOfLegs
    }
    func ordersOfBirds () -> String {
        return "Each bird has it's own voice!"
    }
    func doVoice() -> String {
        return "Birds classification"
    }
}
class Eagle: Bird, Flying, Swimable, Hunter {
    func swim() {
        print( "The type - bald eagle can swim!")
    }
    
    func hunt(){
        print ("Skilled hunters!")
    }
    
    
    override func doVoice() -> String {
        return "The peal cal!"
    }
    override func ordersOfBirds() -> String {
        return "The eagle belongs to the Falconiformes group"
    }
    
    func fly() {
        print("Eagles are excellent flyers!")
    }
}

class Duck: Bird, Flying, Swimable, Hunter, Voicable {
    func hunt() {
        print ("Is not a hunter!")
    }
    
    func swim() {
        print("Ducks can swim underwater")
    }
    override func ordersOfBirds() -> String {
        return "A duck belongs to the Anseriformes group"
    }
    func fly() {
        print("They have the ability to fly in the air")
    }
    func voice (){
        print("A good quack is the sound a duck makes")
    }
   
}
let myEagle = Eagle()
print(myEagle.getNumberOfLegs())
print(myEagle.ordersOfBirds())
print(myEagle.hunt())
print(myEagle.doVoice())
print(myEagle.fly())
print(myEagle.swim())
let myDuck = Duck()
print(myDuck.getNumberOfLegs())
print(myDuck.swim())
print(myDuck.ordersOfBirds())
print(myDuck.fly())
print(myDuck.voice())
print(myDuck.hunt())



