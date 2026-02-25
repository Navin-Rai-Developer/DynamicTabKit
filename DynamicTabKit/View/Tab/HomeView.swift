//
//  HomeView.swift
//  GRDB Project
//
//  Created by Navin Rai on 23/02/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "house.fill")
                    .font(.system(size: 60))
                    .foregroundColor(.accentColor)
                Text("Welcome Home!")
                    .font(.title2.bold())
            }
            .navigationTitle("Home")
        }
    }
}

//  Preview: Home screen
#Preview("Home View") {
    HomeView()
}
