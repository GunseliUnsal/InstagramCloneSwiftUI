import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
                .onAppear {
                    selectedIndex = 0
                }

            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
                .onAppear {
                    selectedIndex = 1
                }

            UploadPostView(tabIndex: $selectedIndex)
                .tabItem {
                    Image(systemName: "plus.square")
                }
                .tag(2)
                .onAppear {
                    selectedIndex = 2
                }

            Text("Liked")
                .tabItem {
                    Image(systemName: "heart")
                }
                .tag(3)
                .onAppear {
                    selectedIndex = 3
                }

            CurrentUserProfileView(user: User.MOCK_USERS[0])
                .tabItem {
                    Image(systemName: "person")
                }
                .tag(4)
                .onAppear {
                    selectedIndex = 4
                }
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
}
