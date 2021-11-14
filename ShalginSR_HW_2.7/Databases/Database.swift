//
//  Database.swift
//  ShalginSR_HW_2.7
//
//  Created by Станислав on 10.11.2021.
//

class DataManager {
    let names: [String]
    let surnames: [String]
    let emails: [String]
    let phoneNumbers: [String]
    
    init() {
        self.names = [
            "John", "Albert", "Dave", "Paul", "Mark",
            "Kris", "Alice", "March", "Dana", "Diana"
        ]
        self.surnames = [
            "Ford", "Margiela", "Smith", "Johnson", "Williams",
            "Jones", "Brown", "Davis", "Miller", "Wilson"
        ]
        self.emails = [
            "aaa@gmail.com", "bbb@gmail.com", "ccc@gmail.com", "ddd@gmail.com",
            "eee@gmail.com", "fff@gmail.com", "ggg@gmail.com",
            "lll@gmail.com", "www@gmail.com", "qqq@gmail.com"
        ]
        self.phoneNumbers = [
            "644322", "112233", "445223", "425681", "567909",
            "761234", "541278", "986510", "567109", "254167"
        ]
    }
}
