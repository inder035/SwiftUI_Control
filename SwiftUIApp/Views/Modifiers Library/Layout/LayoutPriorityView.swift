//
//  LayoutPriorityView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct LayoutPriorityView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the priority by which a parent layout should apportion space to this child.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    HStack {
                        Text("The rain Spain falls mainly on the Spaniards.")
                        Text("Knowledge is power, France is bacon.")
                            .layoutPriority(1)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/layoutpriority(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Layout Priority")
    }
}

#Preview {
    LayoutPriorityView()
}
