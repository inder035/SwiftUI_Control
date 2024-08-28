//
//  ToolbarBackgroundView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ToolbarBackgroundView: View {
    @State private var isBar = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Specifies the preferred visibility of backgrounds on a bar managed by SwiftUI.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    HStack {
                        Text("Toolbar")
                        Toggle(isOn: $isBar) {
                            
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/toolbarbackground(_:for:)-7lv0f#")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Toolbar Background")
        .toolbarBackground(isBar ? .hidden : .visible)
    }
}

#Preview {
    ToolbarBackgroundView()
}
