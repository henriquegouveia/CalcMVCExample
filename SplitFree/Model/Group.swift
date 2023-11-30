//
//  Group.swift
//  SplitFree
//
//  Created by Henrique César Gouveia on 30/11/23.
//

import Foundation
import SwiftData

@Model
final class Group: Identifiable, Hashable {
    var id = UUID()
    var timestamp: Date
    var name: String
    var people: [Person]
    var expenses: [Bill]
    
    init(timestamp: Date, name: String, people: [Person], expenses: [Bill]) {
        self.timestamp = timestamp
        self.name = name
        self.people = people
        self.expenses = expenses
    }
}
