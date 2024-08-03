//
//  OutlineGroupView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct Tree<Value: Hashable>: Hashable {
    let value: Value
    var children: [Tree]? = nil
}

struct OutlineGroupView: View {
    
    let categories: [Tree<String>] = [
        .init(
            value: "Clothing",
            children: [
                .init(value: "Hoodies"),
                .init(value: "Jackets"),
                .init(value: "Joggers"),
                .init(value: "Jumpers"),
                .init(
                    value: "Jeans",
                    children: [
                        .init(value: "Regular"),
                        .init(value: "Slim")
                    ]
                ),
            ]
        ),
        .init(
            value: "Shoes",
            children: [
                .init(value: "Boots"),
                .init(value: "Sliders"),
                .init(value: "Sandals"),
                .init(value: "Trainers"),
            ]
        )
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A structure that computes views and disclosure groups on demand from an underlying collection of tree-structured, identified data.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    OutlineGroup(categories, id: \.value, children: \.children) { tree in
                        Text(tree.value)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .background(.blue.opacity(0.1))
                            .clipShape(.rect(cornerRadius: 8))
                    }
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/outlinegroup")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Outline Group")
    }
}

#Preview {
    OutlineGroupView()
}
