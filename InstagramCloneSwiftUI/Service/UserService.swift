//
//  UserService.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 15.10.2024.
//

import Foundation
import FirebaseFirestore
import Firebase
import FirebaseAuth

struct UserService {
    
    static func fetchUser(withUid uid: String) async throws -> User {
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        return try snapshot.data(as: User.self)
    }
    
    static func fetchAllUsers() async throws -> [User] {
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap( {try? $0.data(as: User.self)} )
        
    }
}
