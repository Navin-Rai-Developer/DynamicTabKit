//
//  SettingView.swift
//  GRDB Project
//
//  Created by Navin Rai on 23/02/26.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var tabManager: TabManager
    @State private var isEditingOrder = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(tabManager.activeTabs) { tab in
                        TabToggleRow(tab: tab)
                    }
                    .onMove { tabManager.moveTab(from: $0, to: $1) }
                } header: {
                    HStack {
                        Text("Active Tabs (\(tabManager.activeTabs.count))")
                        Spacer()
                        Button(isEditingOrder ? "Done" : "Reorder") {
                            isEditingOrder.toggle()
                        }
                        .font(.caption)
                    }
                } footer: {
                    Text("Minimum 1 tab required.")
                }
                
                let inactiveTabs = tabManager.availableTabs.filter { !tabManager.isTabActive($0) }
                if !inactiveTabs.isEmpty {
                    Section("Add More Tabs") {
                        ForEach(inactiveTabs) { tab in
                            TabToggleRow(tab: tab)
                        }
                    }
                }
            }
            .navigationTitle("Customize Tabs")
            .environment(\.editMode, .constant(isEditingOrder ? .active : .inactive))
        }
    }
}

// ✅ Preview: Settings with default tabs (5 available to add)
#Preview("Settings - Default") {
    SettingsView()
        .environmentObject(TabManager())
}

// Preview: Settings with all tabs already active (nothing to add)
#Preview("Settings - All Active") {
    let manager = TabManager()
    manager.activeTabs = manager.availableTabs
    manager.selectedTab = manager.activeTabs.first?.id
    return SettingsView()
        .environmentObject(manager)
}

// Preview: Settings with only 1 tab (remove buttons disabled)
#Preview("Settings - Single Tab") {
    let manager = TabManager()
    manager.activeTabs = [manager.availableTabs[0]]
    manager.selectedTab = manager.availableTabs[0].id
    return SettingsView()
        .environmentObject(manager)
}
