//
//  Model.swift
//  ShalginSR_HW_2.7
//
//  Created by Станислав on 10.11.2021.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
