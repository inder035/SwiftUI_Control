//
//  TransactionView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 14/08/24.
//

import SwiftUI

struct TransactionView: View {
    @State private var isZoomed = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Applies the given transaction mutation function to all animations used within the view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 50) {
                    Button("Toggle Zoom") {
                        var transaction = Transaction(animation: .linear)
                        transaction.disablesAnimations = true
                        withTransaction(transaction) {
                            isZoomed.toggle()
                        }
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Text("Zoom Text 1")
                        .font(.title)
                        .scaleEffect(isZoomed ? 2 : 1)
                    
                    Text("Zoom Text 2")
                        .font(.title)
                        .scaleEffect(isZoomed ? 2 : 1)
                        .transaction { t in
                            t.animation = .none
                        }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/transaction(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Transaction")
    }
}

#Preview {
    TransactionView()
}
