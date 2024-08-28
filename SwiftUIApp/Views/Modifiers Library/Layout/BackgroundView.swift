//
//  BackgroundView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the view’s background to an insettable shape filled with a style.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Text("Swift UI")
                        .font(.largeTitle)
                        .padding()
                        .background(Circle()
                            .fill(.red)
                            .frame(width: 50, height: 50))
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/background(_:in:fillstyle:)-20tq5")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Background")
    }
}

#Preview {
    BackgroundView()
}
