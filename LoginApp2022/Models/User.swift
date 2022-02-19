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
        User(personInformation: Person(name: "Roma", surname: "Kozlov"))
    }
}

struct Person {
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
