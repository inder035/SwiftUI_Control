//
//  GridColumnAlignmentView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct GridColumnAlignmentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Overrides the default horizontal alignment of the grid column that the view appears in.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Grid(alignment: .leadingFirstTextBaseline) {
                        GridRow {
                            Text("Regular font:")
                                .gridColumnAlignment(.leading) // Align the entire first column.
                            Text("Helvetica 12")
                            Button("Select...") { }
                        }
                        GridRow {
                            Text("Fixed-width font:")
                            Text("Menlo Regular 11")
                            Button("Select...") { }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/gridcolumnalignment(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Grid Column Alignment")
    }
}

#Preview {
    GridColumnAlignmentView()
}
