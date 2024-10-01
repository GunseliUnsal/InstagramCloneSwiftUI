//
//  User.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 30.09.2024.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
}


extension User {
    static var MOCK_USERS: [User] = [
        .init(id: UUID().uuidString, username: "naruto", profileImageUrl: "naruto2", fullName: "Naruto Uzumaki", bio: "🍜 Ramen Forever", email: "uzumakinaruto@gmail.com"),
        .init(id: UUID().uuidString, username: "sakura", profileImageUrl: "sakura2", fullName: "Sakura Haruno", bio: "🌸 Always learning", email: "sakuraharuno@gmail.com"),
        .init(id: UUID().uuidString, username: "gaara", profileImageUrl: "gaara", fullName: nil, bio: "Living with the Sandstorm", email: "gaarastorm@gmail.com"),
        .init(id: UUID().uuidString, username: "rocklee", profileImageUrl: "rocklee", fullName: "Rock Lee", bio: "🥇 No ninjutsu? No problem!", email: "rockleeking@gmail.com"),
        .init(id: UUID().uuidString, username: "sasuke", profileImageUrl: "sasuke", fullName: "Sasuke Uchiha", bio: "🌑 Last Uchiha | 🐍 Leader of Taka", email: "sasukeuchiha@gmail.com"),
        ]
}
