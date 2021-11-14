//
//  Database.swift
//  ShalginSR_HW_2.7
//
//  Created by Станислав on 10.11.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let names = [
        "John", "Albert", "Dave", "Paul", "Mark",
        "Kris", "Alice", "March", "Dana", "Diana"
    ]
    
    let surnames = [
        "Ford", "Margiela", "Smith", "Johnson", "Williams",
        "Jones", "Brown", "Davis", "Miller", "Wilson"
    ]
    
    let emails = [
        "aaa@gmail.com", "bbb@gmail.com", "ccc@gmail.com", "ddd@gmail.com",
        "eee@gmail.com", "fff@gmail.com", "ggg@gmail.com",
        "lll@gmail.com", "www@gmail.com", "qqq@gmail.com"
    ]
    
    let phoneNumbers = [
        "111111", "222222", "333333", "444444", "555555",
        "666666", "777777", "888888", "999999", "000000"
    ]
    
    private init() {}
}
