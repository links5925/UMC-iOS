//
//  Item.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/18/25.
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
