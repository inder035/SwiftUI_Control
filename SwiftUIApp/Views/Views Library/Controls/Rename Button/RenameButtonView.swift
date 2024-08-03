//
//  RenameButtonView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 14/07/24.
//

import SwiftUI

struct RenameButtonView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A button that triggers a standard rename action.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    RenameButton()
                        .renameAction {
                            print("Rename Logic")
                        }
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/renamebutton")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Rename Button")
    }
}

#Preview {
    RenameButtonView()
}
