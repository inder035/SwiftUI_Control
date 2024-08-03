//
//  ToolbarTitleMenuView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ToolbarTitleMenuView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("The title menu of a toolbar.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/toolbartitlemenu")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Toolbar Title Menu")
        .navigationBarTitleDisplayMode(.inline)
        .toolbarTitleMenu(content: {
            VStack {
                Button("Cut") {
                    print("Cut")
                }
                Button("Copy") {
                    print("Copy")
                }
                Button("Paste") {
                    print("Paste")
                }
            }
        })        
    }
}

#Preview {
    ToolbarTitleMenuView()
}
