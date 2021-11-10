//
//  Model.swift
//  ShalginSR_HW_2.7
//
//  Created by Станислав on 10.11.2021.
//

// MARK: - Private Properties
private var database = DataManager()

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

//MARK: - Get Person
extension Person {
    static func getPerson() -> [Person] {
        let names = database.names.shuffled()
        let surnames = database.surnames.shuffled()
        let emails = database.emails.shuffled()
        let phoneNumbers = database.phoneNumbers.shuffled()
        
        var randomPersons: [Person] = []
        
        for element in 0...database.names.count - 1 {
            randomPersons.append(Person(
                name: names[element], surname: surnames[element],
                email: emails[element], phoneNumber: phoneNumbers[element]
            ))
        }
        return randomPersons
    }
}
