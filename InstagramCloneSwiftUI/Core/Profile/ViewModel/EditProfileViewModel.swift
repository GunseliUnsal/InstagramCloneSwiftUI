//
//  EditProfileViewModel.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 15.10.2024.
//

import SwiftUI
import Firebase
import PhotosUI

@MainActor
class EditProfileViewModel: ObservableObject {
    
    @Published var user: User
    
    @Published var selectedImage: PhotosPickerItem? {
        didSet { Task { await loadImage(fromItem: selectedImage) } }
    }
    
    @Published var profileImage: Image?
    
    @Published var fullName: String = ""
    @Published var bio: String = ""
    
    init(user: User) {
        self.user = user
    }
    
    func loadImage(fromItem item: PhotosPickerItem?) async {
        guard let item = item else { return }
        
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        
        self.profileImage = Image(uiImage: uiImage)
    }
    
    func updateUserData() async throws {
        
        var data = [String: Any]()
        
        if !fullName.isEmpty && user.fullName != fullName {
            data["fullName"] = fullName
        }
        
        if !bio.isEmpty && user.bio != bio {
            data["bio"] = bio
        }
        
        if !data.isEmpty {
            try await Firestore.firestore().collection("users").document(user.id).updateData(data)
        }
    }
}
