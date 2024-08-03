//
//  SigninAppleView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI
import AuthenticationServices

struct SigninAppleView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("The view that creates the Sign in with Apple button for display.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                VStack {
                    SignInWithAppleButton(
                        onRequest: { request in
                            request.requestedScopes = [.fullName, .email]
                        },
                        onCompletion: { result in
                            switch result {
                            case .success(let authResults):
                                print("Authorization successful.")
                                print(authResults)
                            case .failure(let error):
                                print("Authorization failed: " + error.localizedDescription)
                            }
                        }
                    )
                    .frame(height: 52)
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/authenticationservices/signinwithapplebutton")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("SignInWithAppleButton")
    }
}

#Preview {
    SigninAppleView()
}
