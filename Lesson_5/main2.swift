 //
//  main.swift
//  main
//
//  stuff
//

import Foundation

var width: Double = 5.0 {
    willSet {
        print("Setting new value \(newValue), old value is \(width)")
    }
    didSet {
        print("New value set \(width), old value is \(oldValue)")
    }
}
var widthClone: Double = 5.0 {
    didSet {
        if widthClone > 50 {
            print("Warning! 50 is a limit!")
            widthClone = 50
        }
    }
}
var length: Double = 6.0
var litresPerMetre: Double = 1.5

var amounOfPaint: Double {
    get {
        return (width * length) / litresPerMetre
    }
    set {
        let area = newValue * litresPerMetre
        print("For \(newValue) amount of paint we need to have area of \(area)")
    }
}

var amounOfPaintClone: Double { // Computed properties
    (width * length) / litresPerMetre
}

print(amounOfPaint)
amounOfPaint = 25

width = 7
widthClone = 29
print(widthClone)
widthClone = 74
print(widthClone)

print("--------------")

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set total steps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepper = StepCounter()
stepper.totalSteps = 20
stepper.totalSteps = 31
stepper.totalSteps = 63
stepper.totalSteps = 0

func sayHello() {
    print("HI!")
}

sayHello()

class User {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello() {
        print("Hi! I am \(name)")
    }
    
    func sayHello(to name: String) {
        print("Hi! I am \(self.name)! Nice to meet you, \(name)")
    }
}

let myUser = User(name: "Askar")
let anotherUser = User(name: "Rama")

myUser.sayHello()
anotherUser.sayHello()
myUser.sayHello(to: anotherUser.name)
anotherUser.sayHello(to: myUser.name)

print("------------------")

struct Facebook {
    
    private var usersList: [UserStruct] = []
    
    mutating func createUser(with name: String, and pass: String) {
        let user = UserStruct(name: name, pass: pass)
        usersList.append(user)
    }
    
    func showAllUsers() {
        print(usersList)
    }
}

struct UserStruct {
    var name: String
    var pass: String
}

class UserClass {
    var name: String
    var pass: String
    
    init(name: String, pass: String) {
        self.name = name
        self.pass = pass
    }
}

var facebook = Facebook()
facebook.createUser(with: "Askar", and: "111")
facebook.createUser(with: "Assyl", and: "222")
facebook.createUser(with: "Rustem", and: "333")
facebook.showAllUsers()

print("--------------")

struct Point {
    
    var x: Double, y: Double
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x = x + deltaX
        y = y + deltaY
    }
    
    mutating func moveBySelf(x deltaX: Double, y deltaY: Double) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
    
    func getCoordinates() {
        print(x, y)
    }
}

var myPoint = Point(x: 1, y: 2.5)
myPoint.getCoordinates()
myPoint.moveBy(x: 4, y: -2)
myPoint.getCoordinates()
myPoint.moveBySelf(x: -3, y: 2)
myPoint.getCoordinates()
// myPoint = Point(x: 5, y: 6)

print("----------------")

class Parent {
    
    func doSomnething() {
        print("Doing something")
    }
}

class Child: Parent {
    class func havingFun() {
        print("Having a great time!")
    }
}

var myParent = Parent()
myParent.doSomnething()
var myChild = Child()
myChild.doSomnething()
//myChild.havingFun()
Child.havingFun()

class Student {
    
    static var numberOfStudents: Int = 0
    var numberOfStudentsClone = 0
    
    init() {
        Student.numberOfStudents += 1
        numberOfStudentsClone += 1
    }
    
    class func sayHello() {
        print("Hello from student class")
    }
}

let studentOne = Student()
let studentTwo = Student()
let studentThree = Student()

print(Student.numberOfStudents)
print(studentOne.numberOfStudentsClone)
print(studentTwo.numberOfStudentsClone)
print(studentThree.numberOfStudentsClone)

class FirstGrade: Student {
    
//    override class func sayHello() {
//        print("Hello from first grade")
//    }
}

/*
 
 class Facebook {
    main action
    usersList -> admins can change
    bossAdmin
    createUser
    showAllAccounts -> total count
    showAdminsAndUsers -> total count admins, total count users
 }
 
 class Account {
    some functionality
 }
 
 -> class User: Account {
    additional func
    change self attributes and that is it
 }
 
 -> class Admin: Account {
    additional func
    delete users from users list
 }
 
 */
