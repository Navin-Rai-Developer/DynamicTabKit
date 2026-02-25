//
//  ToggelRowView.swift
//  GRDB Project
//
//  Created by Navin Rai on 23/02/26.
//

import SwiftUI

struct TabToggleRow: View {
    @EnvironmentObject var tabManager: TabManager
    let tab: AppTab
    
    var isActive: Bool { tabManager.isTabActive(tab) }
    
    var body: some View {
        HStack(spacing: 14) {
            Image(systemName: tab.icon)
                .foregroundColor(isActive ? .accentColor : .secondary)
                .frame(width: 28)
            
            Text(tab.title)
            
            Spacer()
            
            Button {
                withAnimation(.spring(response: 0.3)) {
                    tabManager.toggleTab(tab)
                }
            } label: {
                Image(systemName: isActive ? "minus.circle.fill" : "plus.circle.fill")
                    .foregroundColor(isActive ? .red : .green)
                    .font(.title3)
            }
            .buttonStyle(.plain)
            .disabled(isActive && tabManager.activeTabs.count <= 1)
        }
        .padding(.vertical, 2)
    }
}

//  Preview: Active tab row (shows minus/red)
#Preview("Row - Active Tab") {
    let manager = TabManager()
    let tab = manager.availableTabs[0]
    return List {
        TabToggleRow(tab: tab)
    }
    .environmentObject(manager)
}

//  Preview: Inactive tab row (shows plus/green)
#Preview("Row - Inactive Tab") {
    let manager = TabManager()
    let tab = manager.availableTabs[4] // "Messages" - not default
    return List {
        TabToggleRow(tab: tab)
    }
    .environmentObject(manager)
}
