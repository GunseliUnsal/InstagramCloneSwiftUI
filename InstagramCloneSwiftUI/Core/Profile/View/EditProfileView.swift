//
//  EditProfileView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 15.10.2024.
//

import SwiftUI
import PhotosUI


struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    
    @StateObject var viewModel: EditProfileViewModel
    
    init(user: User) {
        self._viewModel = StateObject(wrappedValue: EditProfileViewModel(user: user))
    }
    
    var body: some View {
        VStack{
            VStack {
                HStack{
                    Button("Cancel") {
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button("Done") {
                        Task {
                            try await viewModel.updateUserData()
                            dismiss()
                        }
                    }
                    .font(.subheadline)
                    .fontWeight(.bold)
                    
                }
                .padding(.horizontal)
                
                Divider()
                
                //select profile pic
               
                PhotosPicker(selection: $viewModel.selectedImage) {
                    VStack{
                        if let image = viewModel.profileImage {
                            image
                                .resizable()
                                .foregroundStyle(.white)
                                .background(.gray)
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                        } else {
                            CircularProfileImageView(user: viewModel.user, size: .large)
                        }
                        
                        Text("Select Profile Picture")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Divider()
                    }
                }
                .padding(.vertical, 8)
                
                //edit profile info
                VStack{
                    EditProfileRowView(title: "Name", placeholder: "Enter your name...", text: $viewModel.fullName)
                    EditProfileRowView(title: "Bio", placeholder: "Enter your bio...", text: $viewModel.bio)
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    EditProfileView(user: User.MOCK_USERS[0])
}


struct EditProfileRowView: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack{
            Text(title)
                .padding(.leading, 8)
                .frame(width: 100, alignment: .leading)
            
            VStack{
                TextField(placeholder, text: $text)
                
                Divider()
            }
        }
        

        .font(.subheadline)
        .frame(height: 36)
    }

}
