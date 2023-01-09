//
//  main.swift
//  main
//
//  stuff
//

import Foundation

class Car {
    
    var numberOfWheels: Int
    var dateCreated: String
    
    init(numberOfWheels: Int, dateCreated: String) {
        self.numberOfWheels = numberOfWheels
        self.dateCreated = dateCreated
    }
}

extension Car {
    func beeBeep() {
        
    }
}

class Tesla: Car {
    
    var model: String
    
    init(numberOfWheels: Int, dateCreated: String, model: String) {
        self.model = model
        super.init(numberOfWheels: numberOfWheels, dateCreated: dateCreated)
    }
}

var myTesla = Tesla(numberOfWheels: 4, dateCreated: "Today", model: "X")

struct Color {
    
    var red: Double = 0
    var blue: Double
    var green: Double
    
    init() {
        self.red = 0
        self.green = 0
        self.blue = 0
    }
    
    init(blue: Double, green: Double) {
        self.blue = blue
        self.green = green
    }
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}

let myColorWithDefaultInit = Color(red: 0.1, green: 0.1, blue: 0.1)
let myColorWithWhite = Color(white: 0.5)
let myColorWithNoRed = Color(blue: 0.2, green: 0.2)
let myColorWithEmptyInit = Color()

extension Color {
    func sayColor() {
        print("\(red) and \(green) and \(blue)")
    }
}

myColorWithWhite.sayColor()

extension String {
    func sayHello() {
        print("Hi! My string is \(self)")
    }
}

let myName = "Askar"
let carName = "Tesla"
myName.sayHello()
carName.sayHello()

//class MyViewController: UIViewController {
//    let tableView: String
//}
//
//extension MyViewController: TableViewDelegate {
//
//}
//
//extension MyViewController: CollectionViewDelegate {
//
//}
//
//extension MyViewController: APIManagerDelegate {
//
//}

//var myVar: Color? = Color()
//
//print(myVar)


var anotherVar = Color()
var cloneVar = anotherVar
cloneVar.blue = 0.1
anotherVar.blue = 0.9
print(cloneVar.blue)
print(anotherVar.blue)

class Person {
    
    var name: String
    
    init(name: String) {
        self.name = "\(name) de Italino"
    }
}

var myPerson = Person(name: "Askar")
print(myPerson.name)
myPerson.name = "Max"
print(myPerson.name)

struct Cat {
    
    var name: String
    let numberOfLegs: Int = 4

    init(name: String) {
        self.name = name
    }
}

var myCat = Cat(name: "Miku")
print(myCat.numberOfLegs)

class DataImporter {
    
    /*
     
     functionality
     
     */
    
    var fileName = "data.txt"
}

class DataManager {
    
    lazy var importer = DataImporter()
    var exporter: String = "Export"
    var data: [String] = []
}

let manager = DataManager()
manager.data.append("File1")
manager.data.append("File2")
//print(manager.importer)

// Computed properties

var length = 7.0
var width = 3.0
var colorLitresPerMeterSquare = 1.5
var colorAmount: Double {
    get {
        return (length * width) / colorLitresPerMeterSquare
    }
    set {
        let area = newValue / colorLitresPerMeterSquare
        print("Area equals to \(area)")
    }
}

var colorAmountClone: Double {
    (length * width) / colorLitresPerMeterSquare
}

print(colorAmount)
colorAmount = 40
