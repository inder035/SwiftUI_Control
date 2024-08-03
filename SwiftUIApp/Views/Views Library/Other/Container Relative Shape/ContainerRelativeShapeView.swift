//
//  ContainerRelativeShapeView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct ContainerRelativeShapeView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A shape that is replaced by an inset version of the current container shape. If no container shape was defined, is replaced by a rectangle.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ZStack {
                        ContainerRelativeShape()
                            .inset(by: 4)
                            .fill(.blue)
                        
                        Text("Hello, World!")
                            .font(.title)
                    }
                    .frame(width: 300, height: 160)
                    .background(.red)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/containerrelativeshape")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Container Relative Shape")
    }
}

#Preview {
    ContainerRelativeShapeView()
}
