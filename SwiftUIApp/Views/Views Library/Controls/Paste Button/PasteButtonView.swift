//
//  PasteButtonView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 14/07/24.
//

import SwiftUI

struct PasteButtonView: View {
    @State private var username = "@twostraws"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A system button that reads items from the pasteboard and delivers it to a closure.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 20) {
                    TextField("Username", text: $username)
                        .padding()
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 8))
                        
                    
                    PasteButton(payloadType: String.self) { strings in
                        guard strings.first != nil else { return }
                        username = "Paste text"
                    }
                    .buttonBorderShape(.capsule)
                    
                    if username.isEmpty == false {
                        Text(username)
                    }
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/pastebutton")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Paste Button")
    }
}

#Preview {
    PasteButtonView()
}
