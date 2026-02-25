//
//  TabModel.swift
//  GRDB Project
//
//  Created by Navin Rai on 23/02/26.
//

import Foundation

// MARK: - Tab Model
struct AppTab: Identifiable, Codable, Equatable {
    let id: UUID
    var title: String
    var icon: String
    var isDefault: Bool
    
    init(id: UUID = UUID(), title: String, icon: String, isDefault: Bool = false) {
        self.id = id
        self.title = title
        self.icon = icon
        self.isDefault = isDefault
    }
}
