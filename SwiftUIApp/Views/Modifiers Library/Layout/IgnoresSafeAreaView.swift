//
//  IgnoresSafeAreaView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct IgnoresSafeAreaView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Expands the safe area of a view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Hello World")
                        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 100, maxHeight: .infinity)
                        .background(.red)
                        .ignoresSafeArea()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/ignoressafearea(_:edges:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Ignores Safe Area")
    }
}

#Preview {
    IgnoresSafeAreaView()
}
