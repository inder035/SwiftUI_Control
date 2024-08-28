//
//  FocusStateView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 27/08/24.
//

import SwiftUI

struct FocusStateView: View {
    @State private var comment: String = ""
    @FocusState private var isCommentFocused: Bool

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A property wrapper type that can read and write a value that SwiftUI updates as the placement of focus within the scene changes.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        Text("👋Help us improve")
                            .font(.system(.largeTitle, design: .rounded, weight: .black))
                        
                        TextField("Any comment?", text: $comment)
                            .padding()
                            .border(.gray, width: 1)
                            .focused($isCommentFocused)
                        
                        Button("Submit") {
                            isCommentFocused = false
                        }
                        .controlSize(.extraLarge)
                        .buttonStyle(.borderedProminent)
                    }
                    .onChange(of: isCommentFocused) { oldValue, newValue in
                        print(newValue ? "Focused" : "Not focused")
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/focusstate")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Focus State")
    }
}

#Preview {
    FocusStateView()
}
