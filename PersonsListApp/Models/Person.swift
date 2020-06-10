//
//  Person.swift
//  PersonsListApp
//
//  Created by Vladislav on 10.06.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

struct Person {
    var firstName: String
    var lastName: String
    var phone: Int
    var email: String
    
    static func returnAllPersons() -> [Person] {
        var persons: [Person] = []
        
        let data = DataManager()
        
        let firstNames = data.firstNames.shuffled()
        let lastNames = data.lastNames.shuffled()
        let phones = data.phones.shuffled()
        let emails = data.emails.shuffled()
        
        for index in 0..<firstNames.count {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        
        return persons
    }
}
