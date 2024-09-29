//
//  LoginView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 28.09.2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                //logo image
                Image(.instagramLogoBlack)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                //text fields
                TextField("Enter your email", text: $email)
                    .textInputAutocapitalization(.never)
                    .modifier(IGTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(IGTextFieldModifier())
                
                //forgot password
                Button{
                    print("Show forgot password")
                }label:{
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                //login button
                NavigationLink {
//                    AddEmailView()
//                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .clipShape(.rect(cornerRadius: 8))
                        .foregroundStyle(.white)
                }
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 1)
                        .foregroundStyle(.gray)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 1)
                }
                .foregroundStyle(.secondary)
                
                HStack{
                    Image(.facebookLogo)
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                    Text("Continue with Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                    .foregroundStyle(Color(.systemBlue))
                    
                }
                .padding(.vertical, 16)
                
            }
        }
        
    }
}

#Preview {
    LoginView()
}
