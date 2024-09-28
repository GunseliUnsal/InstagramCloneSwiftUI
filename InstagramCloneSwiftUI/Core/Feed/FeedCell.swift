//
//  FeedCell.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 28.09.2024.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(spacing: 10){
            //pic and name
            HStack{
                Image("naruto3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                
                Text("naruto")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .clipShape(Rectangle())
                
                Spacer()
                
            }
            .padding(.leading, 8)

            //photo
            Image("naruto2")
                
                .resizable()
                .scaledToFill()
                .frame(width: .infinity, height: 400)
            
            //like comment share
            HStack(spacing: 16){
                Button{
                    print("like")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button{
                    print("comment")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button{
                    print("share")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundStyle(.black)
            
            //likes and caption
            VStack(alignment: .leading, spacing: 10){
                Text("0 likes")
                    .fontWeight(.bold)
                
                HStack{
                    Text("naruto ").fontWeight(.bold) +
                    
                    Text("I look amazing")
                }
                
                Text("6h ago")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            
            
        }
        
    }
}

#Preview {
    FeedCell()
}
