//
//  Person.swift
//  SplitFree
//
//  Created by Henrique César Gouveia on 30/11/23.
//

import Foundation
import SwiftData

@Model
final class Person {
    var name: String
    var dateOfBirth: Date
    var id: String
    var phoneNumber: Int
    var email: String
    
    init(name: String, dateOfBirth: Date, id: String, phoneNumber: Int, email: String) {
        self.name = name
        self.dateOfBirth = dateOfBirth
        self.id = id
        self.phoneNumber = phoneNumber
        self.email = email
    }
}
