//
//  Post.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 1.10.2024.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    var caption: String
    var likes: Int
    let imageUrl: String
    let timeStamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Dattebayo!",
            likes: 104,
            imageUrl: "naruto3",
            timeStamp: Timestamp(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "hii this is my new picture I hope you like it sasuke🩷",
            likes: 124,
            imageUrl: "sakura",
            timeStamp: Timestamp(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "new profile pic",
            likes: 1,
            imageUrl: "gaara",
            timeStamp: Timestamp(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Never forget to smile",
            likes: 6,
            imageUrl: "rocklee",
            timeStamp: Timestamp(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "⭐️",
            likes: 10,
            imageUrl: "sasuke",
            timeStamp: Timestamp(),
            user: User.MOCK_USERS[4]
        )
        
        
    ]
}
