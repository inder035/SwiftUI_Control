//
//  SecureFieldView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct SecureFieldView: View {
    @State private var currentPassword: String = ""
    @State private var newPassword: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control into which people securely enter private text.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 12) {
                    SecureField("Current Password", text: $currentPassword)
                        .padding()
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 8))
                    SecureField("New Password", text: $newPassword)
                        .padding()
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 8))
                    SecureField("Confirm Password", text: $confirmPassword)
                        .padding()
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 8))
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/securefield")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("SecureField")
    }
}

#Preview {
    SecureFieldView()
}
