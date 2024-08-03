//
//  LazyVerticalGridView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 16/07/24.
//

import SwiftUI

struct LazyVerticalGridView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A container view that arranges its child views in a grid that grows vertically, creating items only as needed.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Lazy Vertical Grid")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    
                    ScrollView {
                        LazyVGrid(columns: columns) {
                            ForEach(0x1f600...0x1f649, id: \.self) { value in
                                Text(String(format: "%x", value))
                                Text(emoji(value)).font(.largeTitle)
                            }
                        }
                    }
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/lazyvgrid")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Lazy Vertical Grid")
    }
    
    private func emoji(_ value: Int) -> String {
        guard let scalar = UnicodeScalar(value) else { return "?" }
        return String(Character(scalar))
    }
}

#Preview {
    LazyVerticalGridView()
}
