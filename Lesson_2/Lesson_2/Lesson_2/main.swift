//
//  main.swift
//  Lesson_2
//
//  Created by Anelya Kabyltayeva on 20.11.2022.
//

import Foundation
let numbersTwo  = [8, 0, 3, 6]

func oddEven (numbers: [Int]) {
    var checked = 0
    for number in numbers {
        do {
            let res = number%2
            switch res {
                case 0 :
                    print(number, "The number is even.")
                    break
                case 1:
                    print(number, "The number is odd.")
                    break
                default:
                    break
            }
        }
        while(numbers.count != checked) {
            break
        }
        checked += 1
    }
}

oddEven (numbers:numbersTwo)

func recipeOfCake() {
    print ("To cook a cake we need 5 main ingredients.")
}
recipeOfCake()

func recipeOfCakeWithInput (ingredient: String) {
    print ("One of the main ingredient to cook a cake is \(ingredient)")
}
let someIngredient = "Milk"
recipeOfCakeWithInput(ingredient: someIngredient)

func recipeOfCakeWithInnerOuter (with ingredient: String) {
    print ("One of the main ingredient to cook a cake is \(ingredient)")
}
recipeOfCakeWithInnerOuter(with: someIngredient)

func recipeOfCakeWithNoOuter(_ ingredient: String) {
    print ("One of the main ingredient to cook a cake is \(ingredient)")
}
recipeOfCakeWithNoOuter(someIngredient)



var numbers = [0, 1, 0, 0, 4, 5, 0, 2, 0, 8, 9, 0]
print("Array before:", numbers)

func zerosAtTheEndOfList(numbers: [Int]) -> [Int] {
    var i = 0
    var res = numbers
    for number in numbers {
        if number == 0 {
            res.remove(at: i)
            res.append(number)
            i -= 1
        }
        i += 1
    }
    print("Array after: ", res)
    return res
}
var new = zerosAtTheEndOfList(numbers: numbers)


