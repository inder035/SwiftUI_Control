//
//  LabelView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A standard label for user interface items, consisting of an icon with a title.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Label("Document", systemImage: "folder.circle")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/label")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Label")
    }
}

#Preview {
    LabelView()
}
