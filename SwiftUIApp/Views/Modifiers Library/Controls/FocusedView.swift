//
//  FocusedView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct FocusedView: View {
    @FocusState private var isUsernameFocused: Bool
    @State private var username = "Anonymous"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Modifies this view by binding its focus state to the given Boolean state value.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        TextField("Enter your username", text: $username)
                            .focused($isUsernameFocused)
                            .padding()
                            .background(Color.white)
                            .clipShape(.rect(cornerRadius: 8))
                        
                        Button("Toggle Focus") {
                            isUsernameFocused.toggle()
                        }
                        .padding()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/focused(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Focused")
    }
}

#Preview {
    FocusedView()
}
