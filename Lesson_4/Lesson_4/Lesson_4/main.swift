//
//  main.swift
//  Lesson_4
//
//  Created by Anelya Kabyltayeva on 04.12.2022.
//

import Foundation

let myList: [Int] = [3,6,21,78,44,51,43]
print ("Initial list: (\(myList)")
func descending (_ s1:Int, _ s2:Int) -> Bool {
    return s1 > s2
}
var byDecreasing = myList.sorted(by: descending)

byDecreasing = myList.sorted(by: {(s1:Int, s2:Int)-> Bool in
    return s1>s2
})
                             
print ("List descending: \(byDecreasing)")


func ascending (_ s1:Int, _ s2:Int) -> Bool {
    return s1 > s2
}
var byIncreasing = myList.sorted(by: ascending)

byIncreasing = myList.sorted(by: {(s1:Int, s2:Int)-> Bool in
    return s2 > s1
})
                             
print ("List ascending: \(byIncreasing)")

func nearestToFifty (_ s1:Int, _ s2:Int) -> Bool {
    return abs(s1 - 50) < abs(s2 - 50)
}
var nearestNumbers = myList.sorted(by: nearestToFifty)

print("List nearest to 50: \(nearestNumbers)")

func Multiples(in myList: [Int], with target: Int) {
    var divisibleNumbers = myList.filter({ (s1: Int) -> (Bool) in
        return  s1 % target == 0
    })
    print("List divisible to 3: \(divisibleNumbers)")
}
let myTarget: Int = 3
let emptyList: [Int] = []
Multiples(in: myList, with: myTarget)

 
