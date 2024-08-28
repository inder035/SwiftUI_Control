//
//  AppStorageView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 16/08/24.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("username") var username: String = "Anonymous"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A property wrapper type that reflects a value from UserDefaults and invalidates a view on a change in value in that user default.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 8) {
                    Text("Welcome, \(username)!")
                    Button("Log in") {
                        username = "@twostraws1"
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/appstorage")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("App Storage")
    }
}

#Preview {
    AppStorageView()
}
