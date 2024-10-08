//
//  ProfileHeaderView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 1.10.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
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
                
                Text(user.username)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            //action button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity, minHeight: 32, alignment: .center)
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.gray, lineWidth: 1))
            }
            .padding(.horizontal)
            
            Divider()
        }
        

    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
