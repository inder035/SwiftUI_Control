//
//  TextEditorView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct TextEditorView: View {
    @State private var profileText = "Enter your bio"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that can display and edit long-form text.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    TextEditor(text: $profileText)
                        .frame(height: 200)
                        .clipShape(.rect(cornerRadius: 8))
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/texteditor")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("TextEditor")
    }
}

#Preview {
    TextEditorView()
}
