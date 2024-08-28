//
//  MenuOrderView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct MenuOrderView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("The preferred order of items for menus presented from this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Text("Favorite Card Suit")
                        .padding()
                        .contextMenu {
                            Button("♥️ - Hearts", action: {})
                            Button("♣️ - Clubs", action: {})
                            Button("♠️ - Spades", action: {})
                            Button("♦️ - Diamonds", action: {})
                        }
                        .menuOrder(.priority)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/environmentvalues/menuorder")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Menu Order")
    }
}

#Preview {
    MenuOrderView()
}
