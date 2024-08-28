//
//  ScrollDismissesKeyboardView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ScrollDismissesKeyboardView: View {
    @State private var username = "Anonymous"
    @State private var bio = "Enter the bio."
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Configures the behavior in which scrollable content interacts with the software keyboard.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        TextField("Name", text: $username)
                            .textFieldStyle(.roundedBorder)
                        TextEditor(text: $bio)
                            .frame(height: 200)
                            .clipShape(.rect(cornerRadius: 8))
                            .border(.quaternary, width: 1)
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/scrolldismisseskeyboard(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Scroll Dismisses Keyboard")
        .scrollDismissesKeyboard(.interactively)
    }
}

#Preview {
    ScrollDismissesKeyboardView()
}
