//
//  NavigationSplitViewColumnWidthView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct NavigationSplitViewColumnWidthView: View {
    @State private var firstSelectedDataItem: DataModel?
    @State private var secondSelectedDataItem: DataModel?
    @State private var thirdSelectedDataItem: DataModel?
    
    var body: some View {
        VStack {
            Text("Sets a fixed, preferred width for the column containing this view.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            NavigationSplitView {
                List(SampleData.firstScreenData, selection: $firstSelectedDataItem) { item in
                    NavigationLink(item.text, value: item)
                }
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/navigationsplitviewcolumnwidth(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .navigationTitle("Sidebar")
                    .navigationSplitViewStyle(.prominentDetail)
            } content: {
                VStack(alignment: .leading) {
                    if firstSelectedDataItem != nil {
                        Text("Previously Selected Item: \(firstSelectedDataItem!.text)")
                    }
                    List(SampleData.secondScreenData, selection: $secondSelectedDataItem) { item in
                        NavigationLink(item.text, value: item)
                    }
                    .navigationTitle("Content")
                }.padding()
                    .navigationSplitViewColumnWidth(
                        min: 150, ideal: 200, max: 400)
            } detail: {
                VStack(alignment: .leading) {
                    if secondSelectedDataItem != nil {
                        Text("Previously Selected Item: \(secondSelectedDataItem!.text)")
                            .padding()
                    }
                    List(SampleData.lastScreenData, selection: $thirdSelectedDataItem) { item in
                        Text(item.text)
                    }
                }
            }
        }
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationSplitViewColumnWidthView()
}
