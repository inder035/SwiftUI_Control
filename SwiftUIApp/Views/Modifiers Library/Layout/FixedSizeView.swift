//
//  FixedSizeView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct FixedSizeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Fixes this view at its ideal size.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    HStack {
                        Text("This is a short string.")
                            .padding()
                            .frame(maxHeight: .infinity)
                            .background(.red)

                        Text("This is a very long string with lots and lots of text that will definitely run across multiple lines because it's just so long.")
                            .padding()
                            .frame(maxHeight: .infinity)
                            .background(.green)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/fixedsize()")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Fixed Size")
    }
}

#Preview {
    FixedSizeView()
}
