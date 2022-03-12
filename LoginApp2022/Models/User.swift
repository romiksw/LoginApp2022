//
//  User.swift
//  LoginApp2022
//
//  Created by Roman Kozlov on 19.02.2022.
//

import Foundation

struct User {
    let login = "User"
    let password = "Password"
    
    let personInformation: Person
    
    static func getUser() -> User {
        User(personInformation: Person(name: "Roman", surname: "Kozlov", age: 25, townBirth: "Moscow", yearOfBirth: 1997))
    }
}

struct Person {
    let name: String
    let surname: String
    
    let age: Int
    let townBirth: String
    
    let yearOfBirth: Int
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
