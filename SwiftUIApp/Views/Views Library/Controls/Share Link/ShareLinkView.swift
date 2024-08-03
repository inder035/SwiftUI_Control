//
//  ShareLinkView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct ShareLinkView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that controls a sharing presentation.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ShareLink(item: URL(string: "https://developer.apple.com/xcode/swiftui/")!)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/SwiftUI/ShareLink")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("ShareLink")
    }
}

#Preview {
    ShareLinkView()
}
