//
//  ListView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct Ocean: Identifiable {
    let name: String
    let id = UUID()
}

struct ListView: View {
    @State private var oceans = [
        Ocean(name: "Pacific"),
        Ocean(name: "Atlantic"),
        Ocean(name: "Indian"),
        Ocean(name: "Southern"),
        Ocean(name: "Arctic")
    ]

    var body: some View {
        VStack {
            VStack(spacing: 20) {
                Text("A container that presents rows of data arranged in a single column, optionally providing the ability to select one or more members.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                List(oceans) {
                    Text($0.name)
                }
                .clipShape(.rect(cornerRadius: 8))
                                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/list")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("List")
    }
}

#Preview {
    ListView()
}
