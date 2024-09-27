//
//  MainView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 27.09.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Tab("", systemImage: "house") {
                Text("Feed")
            }
            Tab("", systemImage: "magnifyingglass") {
                Text("Search")
            }
            Tab("", systemImage: "plus.square") {
                Text("Upload")
            }
            Tab("", systemImage: "heart") {
                Text("Liked")
            }
            Tab("", systemImage: "person") {
                ProfileView()
            }
        }
        .tint(.primary)
        
    }
}

#Preview {
    MainView()
}
