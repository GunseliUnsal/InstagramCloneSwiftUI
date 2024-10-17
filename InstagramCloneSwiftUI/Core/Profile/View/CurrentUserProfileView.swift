//
//  CurrentUserProfileView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 1.10.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    
    var body: some View {
        NavigationStack{
            ScrollView {
                ProfileHeaderView(user: user)
                
                PostGridView(user: user)
                
            }
                
                    .navigationTitle("Profile")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button {
                                AuthService.shared.signout()
                            } label: {
                                Image(systemName: "line.3.horizontal")
                                    .foregroundStyle(.black)
                            }
                            
                        }
                    }
           
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
