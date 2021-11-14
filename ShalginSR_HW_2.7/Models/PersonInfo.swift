//
//  Model.swift
//  ShalginSR_HW_2.7
//
//  Created by Станислав on 10.11.2021.
//

// MARK: - Private Properties
private var database = DataManager.shared

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
        
        let iterationCount = min(
            names.count, surnames.count,
            emails.count, phoneNumbers.count
        )
        
        for index in 0..<iterationCount {
            randomPersons.append(Person(
                name: names[index], surname: surnames[index],
                email: emails[index], phoneNumber: phoneNumbers[index]
            ))
        }
        return randomPersons
    }
}
