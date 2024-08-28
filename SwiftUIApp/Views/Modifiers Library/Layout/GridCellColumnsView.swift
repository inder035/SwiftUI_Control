//
//  GridCellColumnsView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct GridCellColumnsView: View {
    @State private var isOn = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Tells a view that acts as a cell in a grid to span the specified number of columns.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Grid(alignment: .leadingFirstTextBaseline) {
                        GridRow {
                            Text("Regular font:")
                                .gridColumnAlignment(.trailing)
                            Text("Helvetica 12")
                            Button("Select...") { }
                        }
                        GridRow {
                            Text("Fixed-width font:")
                            Text("Menlo Regular 11")
                            Button("Select...") { }
                        }
                        GridRow {
                            Color.clear
                                .gridCellUnsizedAxes([.vertical, .horizontal])
                            Toggle("Use fixed-width font for new documents", isOn: $isOn)
                                .gridCellColumns(2) // Span two columns.
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/gridcellcolumns(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Grid Cell Columns")
    }
}

#Preview {
    GridCellColumnsView()
}
