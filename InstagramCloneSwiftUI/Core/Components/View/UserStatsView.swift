//
//  UserStatsView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 27.09.2024.
//

import SwiftUI

struct UserStatsView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            Text(title)
                .font(.footnote)
        }
        .frame(width: 90)
    }
}

#Preview {
    UserStatsView(value: 3, title: "Followers")
}
