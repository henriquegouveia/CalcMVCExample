//
//  Item.swift
//  Coverage
//
//  Created by Henrique César Gouveia on 30/11/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
