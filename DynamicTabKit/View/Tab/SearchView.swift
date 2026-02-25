//
//  SearchView.swift
//  GRDB Project
//
//  Created by Navin Rai on 23/02/26.
//

import SwiftUI

struct SearchView: View {
    @State private var query = ""

    var body: some View {
        NavigationView {
            VStack(spacing: 16) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: 60))
                    .foregroundColor(.accentColor)
                Text("Search")
                    .font(.title2.bold())
                TextField("Type to search...", text: $query)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)
            }
            .navigationTitle("Search")
        }
    }
}

//  Preview: Search screen
#Preview("Search View") {
    SearchView()
}
