//
//  GridCellUnsizedAxesView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct GridCellUnsizedAxesView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Asks grid layouts not to offer the view extra size in the specified axes.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Grid {
                        GridRow {
                            Text("Hello")
                            Image(systemName: "globe")
                        }
                        Divider()
                            .gridCellUnsizedAxes(.horizontal)
                        GridRow {
                            Image(systemName: "hand.wave")
                            Text("World")
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/gridcellunsizedaxes(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Grid Cell Unsized Axes")
    }
}

#Preview {
    GridCellUnsizedAxesView()
}
