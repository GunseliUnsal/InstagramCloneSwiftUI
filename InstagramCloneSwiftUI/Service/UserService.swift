//
//  UserService.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 15.10.2024.
//

import Foundation
import FirebaseFirestore

struct UserService {
    @MainActor
    static func fetchAllUsers() async throws -> [User] {
        
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        return snapshot.documents.compactMap( {try? $0.data(as: User.self)} )
        
    }
}
