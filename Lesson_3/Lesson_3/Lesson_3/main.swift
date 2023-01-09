//
//  main.swift
//  Lesson_3
//
//  Created by Anelya Kabyltayeva on 27.11.2022.
//


let groups = [[5,1,10,5], [7,8,1], [2,3,2]]

func myFunction2 (groups: [[Int]]) {
  print("The groups are:", groups)
  var numberOfMan = [Int](0...groups.count)
  for (index, man) in groups.enumerated() {
    let sum = man.reduce(0, +)
    numberOfMan[index] = sum
    print("man\(index+1):", sum)
  }
  let i1 = numberOfMan.firstIndex(where: {$0 == numberOfMan.max() ?? 0})
  print("The richest on is man\(i1!+1): \(numberOfMan.max() ?? 0)")
}

myFunction2(groups: groups)


var listOfNumbers = [5,8,3,2,9,4,10]

func myFunction (sortingTwo: [Int]) {
  print("Result: ")
  for (index, num) in listOfNumbers.enumerated() {
    if num != 0 {
      for i in 0...num-1 {
        listOfNumbers[index] = num - i-1
        print(listOfNumbers)
      }
    }
    print(listOfNumbers)
  }
}

myFunction(sortingTwo: listOfNumbers)
