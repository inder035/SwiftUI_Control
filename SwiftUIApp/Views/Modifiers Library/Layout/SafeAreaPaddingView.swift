//
//  SafeAreaPaddingView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct SafeAreaPaddingView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Adds the provided insets into the safe area of this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                VStack {
                    Circle()
                        .fill(.red)
                        .safeAreaPadding(.horizontal, 50)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/safeareapadding(_:)-5lh9p")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Safe Area Padding")
    }
}

#Preview {
    SafeAreaPaddingView()
}
