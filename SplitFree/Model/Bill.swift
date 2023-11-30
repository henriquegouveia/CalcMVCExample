//
//  Bill.swift
//  SplitFree
//
//  Created by Henrique César Gouveia on 30/11/23.
//

import Foundation
import SwiftData

@Model
final class Bill {
    var timestamp: Date
    var name: String
    var amount: Float
    var splitedBill: [SplitedBill]
    
    init(timestamp: Date, name: String, amount: Float, splitedBill: [SplitedBill]) {
        self.timestamp = timestamp
        self.name = name
        self.amount = amount
        self.splitedBill = splitedBill
    }
}

@Model
final class SplitedBill {
    var person: Person
    var amount: Float
    
    init(person: Person, amount: Float) {
        self.person = person
        self.amount = amount
    }
}
