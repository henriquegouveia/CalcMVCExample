//
//  Person.swift
//  Coverage
//
//  Created by Henrique César Gouveia on 30/11/23.
//

import Foundation

struct Person {
    var name: String
    var email: String
    var dateOfBirth: Date
    var gender: Gender

    enum Gender {
        case male
        case female
        case other
    }
}
