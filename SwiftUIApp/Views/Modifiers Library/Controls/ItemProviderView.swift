//
//  ItemProviderView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ItemProviderView: View {
    @State private var firstName = ""
    @State private var links: [URL] = [
            URL(string: "https://twitter.com/mecid")!
        ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Provides a closure that vends the drag representation to be used for a particular data element.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text(links.first?.absoluteString ?? "")
                        .onDrag { NSItemProvider(object: links.first! as NSItemProviderWriting) }
                    TextField("First name", text: $firstName)
                        .padding()
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 8))
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/itemprovider(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Item Provider")
    }
}

#Preview {
    ItemProviderView()
}
