//
//  TabBarManager.swift
//  GRDB Project
//
//  Created by Navin Rai on 23/02/26.
//

import Foundation
import Combine
import SwiftUI


// MARK: - Tab Manager
class TabManager: ObservableObject {
    @Published var activeTabs: [AppTab] = []
    @Published var selectedTab: UUID?
    
    let availableTabs: [AppTab] = [
        AppTab(title: "Home",      icon: "house.fill",        isDefault: true),
        AppTab(title: "Search",    icon: "magnifyingglass",   isDefault: true),
        AppTab(title: "Profile",   icon: "person.fill",       isDefault: true),
        AppTab(title: "Favorites", icon: "heart.fill",        isDefault: false),
        AppTab(title: "Messages",  icon: "message.fill",      isDefault: false),
        AppTab(title: "Explore",   icon: "safari.fill",       isDefault: false),
        AppTab(title: "Calendar",  icon: "calendar",          isDefault: false),
        AppTab(title: "Analytics", icon: "chart.bar.fill",    isDefault: false),
    ]
    
    init() {
        activeTabs = availableTabs.filter { $0.isDefault }
        selectedTab = activeTabs.first?.id
    }
    
    func isTabActive(_ tab: AppTab) -> Bool {
        activeTabs.contains(tab)
    }
    
    func toggleTab(_ tab: AppTab) {
        if isTabActive(tab) {
            guard activeTabs.count > 1 else { return }
            activeTabs.removeAll { $0.id == tab.id }
            if selectedTab == tab.id {
                selectedTab = activeTabs.first?.id
            }
        } else {
            let ordered = availableTabs.filter { t in
                activeTabs.contains(t) || t.id == tab.id
            }
            activeTabs = ordered
        }
    }
    
    func moveTab(from source: IndexSet, to destination: Int) {
        activeTabs.move(fromOffsets: source, toOffset: destination)
    }
}


