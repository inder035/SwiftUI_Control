//
//  PrivacySensitiveView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 14/08/24.
//

import SwiftUI

struct PrivacySensitiveView: View {
    @Environment(\.redactionReasons) var redactionReasons
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Marks the view as containing sensitive, private user data.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        Text("Account #")
                        
                        Text("3243543534534545")
                            .font(.headline)
                            .privacySensitive() // Hide only the account number.
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/privacysensitive(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Privacy Sensitive")
    }
}



#Preview {
    PrivacySensitiveView()
}
