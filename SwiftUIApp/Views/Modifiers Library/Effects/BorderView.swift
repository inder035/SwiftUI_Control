//
//  BorderView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct BorderView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Adds a border to this view with the specified style and width.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Border View")
                        .padding()
                        .border(.red, width: 4)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/border(_:width:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Border")
    }
}

#Preview {
    BorderView()
}
