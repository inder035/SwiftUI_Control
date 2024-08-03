//
//  LinkView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control for navigating to a URL.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 20) {
                    Link("SwiftUI", destination: URL(string: "https://developer.apple.com/documentation/swiftui")!)
                    ShareLink(item: URL(string: "https://developer.apple.com/documentation/swiftui")!)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/link")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Link")
    }
}

#Preview {
    LinkView()
}
