//
//  GenericTabView.swift
//  GRDB Project
//
//  Created by Navin Rai on 23/02/26.
//

import SwiftUI

struct GenericTabView: View {
    let tab: AppTab

    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Image(systemName: tab.icon)
                    .font(.system(size: 60))
                    .foregroundColor(.accentColor)
                Text(tab.title)
                    .font(.title2.bold())
                Text("Dynamically added tab")
                    .foregroundColor(.secondary)
            }
            .navigationTitle(tab.title)
        }
    }
}

// Preview: Generic tab (simulates a dynamically added tab)
#Preview("Generic Tab - Favorites") {
    GenericTabView(tab: AppTab(title: "Favorites", icon: "heart.fill"))
}

// /*Preview: Generi*/c tab - Calendar
#Preview("Generic Tab - Calendar") {
    GenericTabView(tab: AppTab(title: "Calendar", icon: "calendar"))
}
