//
//  UploadPostView.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 3.10.2024.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePickerPresented: Bool = false
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex: Int
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    caption = ""
                    viewModel.postImage = nil
                    viewModel.selectedImage = nil
                    tabIndex = 0
                }label: {
                    Text("Cancel")
                }
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button{}label: {
                    Text("Upload")
                }
            }
            .padding(.horizontal)
            
            HStack(spacing: 8){
                if let image = viewModel.postImage{
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height:100)
                        .clipped()
                        
                }
                
                TextField("Enter your caption...", text: $caption, axis: .vertical)
            }
            .padding()
            Spacer()
        }
        .onAppear{
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
        
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
