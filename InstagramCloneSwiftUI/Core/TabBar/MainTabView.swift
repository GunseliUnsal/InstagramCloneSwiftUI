//
//  MainView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 27.09.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Tab("", systemImage: "house") {
                FeedView()
            }
            Tab("", systemImage: "magnifyingglass") {
                SearchView()
            }
            Tab("", systemImage: "plus.square") {
                Text("Upload")
            }
            Tab("", systemImage: "heart") {
                Text("Liked")
            }
            Tab("", systemImage: "person") {
                CurrentUserProfileView(user: User.MOCK_USERS[1])
            }
        }
        .tint(.primary)
        
    }
}

#Preview {
    MainTabView()
}
