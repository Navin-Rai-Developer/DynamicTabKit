//
//  ProfileView.swift
//  GRDB Project
//
//  Created by Navin Rai on 23/02/26.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var tabManager: TabManager

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.accentColor)
                Text("Your Profile")
                    .font(.title2.bold())

                NavigationLink(destination: SettingsView()) {
                    Label("Customize Tabs", systemImage: "square.grid.2x2")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor.opacity(0.1))
                        .cornerRadius(12)
                        .padding(.horizontal)
                }
            }
            .navigationTitle("Profile")
        }
    }
}

//  Preview: Profile screen with navigation to Settings
#Preview("Profile View") {
    ProfileView()
        .environmentObject(TabManager())
}
