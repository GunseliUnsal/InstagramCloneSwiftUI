//
//  ProfileHeaderView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 1.10.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    @State private var showEditProfile : Bool = false
    
    var body: some View {
        VStack(spacing: 10){
            
            //pic and stats
            HStack{
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack{
                    UserStatsView(value: 3, title: "Posts")
                    UserStatsView(value: 9, title: "Followers")
                    UserStatsView(value: 23, title: "Following")
                }
            }
            .padding(.horizontal)
            
            //name and bio
            VStack(alignment: .leading, spacing: 4){
                if let fullName = user.fullName{
                    Text(fullName)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            //action button
            Button {
                if user.isCurrentUser {
                    showEditProfile.toggle()
                }
            } label: {
                Text(user.isCurrentUser ? "Edit Profile" : "Follow")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, minHeight: 32, alignment: .center)
                    .background(user.isCurrentUser ? Color.white : Color.blue)
                    .foregroundStyle(user.isCurrentUser ? .black : Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .stroke(user.isCurrentUser ? .gray : .clear, lineWidth: 1))
                    
            }
            .padding(.horizontal)
            
            Divider()
        }
        .fullScreenCover(isPresented: $showEditProfile) {
            EditProfileView(user: user)
        }

    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
