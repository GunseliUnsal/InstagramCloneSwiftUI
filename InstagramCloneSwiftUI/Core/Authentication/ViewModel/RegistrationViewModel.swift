//
//  RegistrationViewModel.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 5.10.2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var password: String = ""

    
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, username: username)
        
        username = ""
        email = ""
        password = ""
    }
}
