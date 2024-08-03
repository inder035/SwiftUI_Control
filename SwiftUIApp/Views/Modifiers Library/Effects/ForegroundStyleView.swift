//
//  ForegroundStyleView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ForegroundStyleView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets a view’s foreground elements to use a given style.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    HStack {
                        Image(systemName: "clock.fill")
                        Text("Set the time")
                    }
                    .font(.largeTitle.bold())
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.red, .black],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/foregroundstyle(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Accent")
    }
}

#Preview {
    ForegroundStyleView()
}
