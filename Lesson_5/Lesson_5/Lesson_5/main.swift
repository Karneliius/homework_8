//
//  main.swift
//  Lesson_5
//
//  Created by Anelya Kabyltayeva on 11.12.2022.
//

import Foundation
class Facebook{
    }

class Account {
    private var AccountsList: [AccountStruct] = []
    func createAccount (with username: String, and email: String) {
        let account = AccountStruct(username: username, email: email)
        AccountsList.append(account)
    }
    func showAllAccounts() {
        print(AccountsList)
    }

    struct AccountStruct {
        var username: String
        var email: String
    }
}

var account = Account()
account.createAccount(with: "Anel", and: "aka@f2c.dev")
account.createAccount(with: "Symbat", and: "ska@oris.space")
account.createAccount(with: "Dariya", and: "sde@neoetf.fund")
account.showAllAccounts()


class Admin: Account {}
class User: Account {
    var  firstName: String
    var  lastName: String
    var  gender: String
    var  age: Int
    
    init(firstName: String, lastName: String, gender: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.age = age
    }
    
    func addInfo (){
        print ("In your information to the account: the following data was added: \(firstName), \(lastName),\(gender),\(age)")
    }
}
let userOne = User(firstName:  "Anel", lastName: "Kabyltayeva", gender: "female", age: 23)
userOne.addInfo()
