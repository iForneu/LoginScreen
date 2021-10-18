//
//  KorotaevKN.swift
//  LoginScreen
//
//  Created by Kirill Korotaev on 14.10.2021.
//

//MARK: - User
struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData () -> User {
        User (login: "User",
              password: "Password",
              person: Person.getPerson()
        )
    }
}

//MARK: - Person
struct Person {
    let name: String
    let surname: String
    let firstImage: String
    let secondImage: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Kirill", surname: "Korotaev", firstImage: "KorotaevKN", secondImage: "KorotaevKN1")
    }
}
