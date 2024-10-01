//
//  ProfileView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 27.09.2024.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible() ,spacing: 1),
        .init(.flexible() ,spacing: 1),
        .init(.flexible() ,spacing: 1)
    ]
    
    let user: User
    
    var body: some View {
            ScrollView {
                VStack{
                    //header
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
                            
                        } label: {
                            Text("Edit Profile")
                                .foregroundStyle(.black)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 360, height: 32)
                                .overlay(RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1))
                            
                        }
                        
                        Divider()
                    }
                    
                    //post grid view
                    VStack {
                        LazyVGrid(columns: gridItems, spacing: 1) {
                            ForEach(0...15, id: \.self) {_ in
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFill()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
