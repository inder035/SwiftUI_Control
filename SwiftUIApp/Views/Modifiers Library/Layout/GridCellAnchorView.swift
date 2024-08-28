//
//  GridCellAnchorView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct GridCellAnchorView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Specifies a custom alignment anchor for a view that acts as a grid cell.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Grid(alignment: .center, horizontalSpacing: 1, verticalSpacing: 1) {
                        GridRow {
                            Color.red.frame(width: 60, height: 60)
                            Color.red.frame(width: 60, height: 60)
                        }
                        GridRow {
                            Color.red.frame(width: 60, height: 60)
                            Color.blue.frame(width: 10, height: 10)
                                .gridCellAnchor(UnitPoint(x: 0.25, y: 0.75))
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/gridcellanchor(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Grid Cell Anchor")
    }
}

#Preview {
    GridCellAnchorView()
}
