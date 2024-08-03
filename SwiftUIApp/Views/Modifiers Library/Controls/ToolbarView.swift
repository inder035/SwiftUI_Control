//
//  ToolbarView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ToolbarView: View {
    @State private var showingSheet = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Populates the toolbar or navigation bar with the specified items.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/toolbar(content:)-5w0tj")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Toolbar")
        .toolbar {
            ToolbarItem(placement: .bottomBar) {
                Button("Press Me") {
                    showingSheet.toggle()
                }
            }
        }
        .sheet(isPresented: $showingSheet) {
            SheetDataView(showingSheet: $showingSheet)
        }
    }
}

#Preview {
    ToolbarView()
}
