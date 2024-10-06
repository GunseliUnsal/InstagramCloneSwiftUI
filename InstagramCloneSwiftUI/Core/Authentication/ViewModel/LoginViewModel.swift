//
//  LoginViewModel.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 6.10.2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    func signIn() async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
