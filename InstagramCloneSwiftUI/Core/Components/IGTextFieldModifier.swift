//
//  IGTextFieldModifier.swift
//  InstagramCloneSwiftUI
//
//  Created by Günseli Ünsal on 29.09.2024.
//

import Foundation
import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .clipShape(.rect(cornerRadius: 10))
            .padding(.horizontal, 24)
    }
}
