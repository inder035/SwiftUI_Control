//
//  ContentShapeView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ContentShapeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Defines the content shape for hit testing.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        Image(systemName: "person.circle").resizable().frame(width: 50, height: 50)
                        Text("Paul Hudson")
                    }
                    .padding()
                    .background(Color.blue.opacity(0.2))
                    .contentShape(Rectangle())
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/contentshape(_:eofill:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Content Shape")
    }
}

#Preview {
    ContentShapeView()
}
