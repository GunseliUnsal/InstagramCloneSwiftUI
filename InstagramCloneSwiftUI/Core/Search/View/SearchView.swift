//
//  SearchView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 28.09.2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    @StateObject var viewModel = SearchViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing: 12){
                    ForEach(viewModel.users) { user in
                        NavigationLink(value: user){
                            HStack{
                                CircularProfileImageView(user: user, size: .xSmall)
                                
                                VStack(alignment: .leading){
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    
                                    if let fullName = user.fullName {
                                        Text(fullName)
                                    }
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search")
            }
            .navigationDestination(for: User.self, destination: {
                user in ProfileView(user: user)
            })
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
