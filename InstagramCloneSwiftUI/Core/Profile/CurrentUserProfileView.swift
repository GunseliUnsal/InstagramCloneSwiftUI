//
//  CurrentUserProfileView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 1.10.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible() ,spacing: 1),
        .init(.flexible() ,spacing: 1),
        .init(.flexible() ,spacing: 1)
    ]
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack{
                    //header
                    VStack(spacing: 10){
                        
                        //pic and stats
                        HStack{
                            Image("naruto3")
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
                            Text("Naruto Uzumaki")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Ramen Forever")
                                .font(.footnote)
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
                                Image("naruto")
                                    .resizable()
                                    .scaledToFill()
                            }
                        }
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
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
    CurrentUserProfileView()
}
