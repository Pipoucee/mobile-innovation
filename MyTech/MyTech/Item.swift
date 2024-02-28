//
//  Item.swift
//  MyTech
//
//  Created by MOSTEFAI Tarik on 28/02/2024.
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
