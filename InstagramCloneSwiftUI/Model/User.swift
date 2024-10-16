//
//  User.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 30.09.2024.
//

import Foundation
import Firebase
import FirebaseAuth

struct User: Identifiable,Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false }
        return  currentUid == id
    }
}


extension User {
    static var MOCK_USERS: [User] = [
        .init(id: UUID().uuidString, username: "naruto", profileImageUrl: nil, fullName: "Naruto Uzumaki", bio: "🍜 Ramen Forever", email: "uzumakinaruto@gmail.com"),
        .init(id: UUID().uuidString, username: "sakura", profileImageUrl: nil, fullName: "Sakura Haruno", bio: "🌸 Always learning", email: "sakuraharuno@gmail.com"),
        .init(id: UUID().uuidString, username: "gaara", profileImageUrl: nil, fullName: nil, bio: "Living with the Sandstorm", email: "gaarastorm@gmail.com"),
        .init(id: UUID().uuidString, username: "rocklee", profileImageUrl: nil, fullName: "Rock Lee", bio: "🥇 No ninjutsu? No problem!", email: "rockleeking@gmail.com"),
        .init(id: UUID().uuidString, username: "sasuke", profileImageUrl: nil, fullName: "Sasuke Uchiha", bio: "🌑 Last Uchiha | 🐍 Leader of Taka", email: "sasukeuchiha@gmail.com"),
        ]
}
