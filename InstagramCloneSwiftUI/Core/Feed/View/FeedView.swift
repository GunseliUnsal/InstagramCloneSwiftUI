//
//  FeedView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 28.09.2024.
//

import SwiftUI

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 32){
                    ForEach(viewModel.posts){ post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top, 8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Image(.instagramLogoBlack)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 32)
                }
                
                ToolbarItem(placement: .topBarTrailing){
                    Button{} label: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                            .foregroundStyle(.black)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    FeedView()
}

