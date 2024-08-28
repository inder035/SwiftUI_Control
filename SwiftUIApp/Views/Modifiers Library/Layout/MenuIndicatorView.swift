//
//  MenuIndicatorView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct MenuIndicatorView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the menu indicator visibility for controls within this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Menu {
                        ForEach(0..<10) { index in
                           Text("\(index)")
                        }
                    } label: {
                        Label("Back", systemImage: "square.and.arrow.up.circle.fill")
                            .labelStyle(.iconOnly)
                    }
                    .menuIndicator(.hidden)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/menuindicator(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Menu Indicator")
    }
}

#Preview {
    MenuIndicatorView()
}
