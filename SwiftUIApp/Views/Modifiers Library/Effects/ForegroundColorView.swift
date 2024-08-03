//
//  ForegroundColorView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ForegroundColorView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    Text("Deprecated")
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Sets the color of the foreground elements displayed by this view.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                VStack {
                    HStack {
                        Image(systemName: "clock.fill")
                        Text("Set the time")
                    }
                    .font(.largeTitle.bold())
                    .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/foregroundcolor(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Foreground Color")
    }
}

#Preview {
    ForegroundColorView()
}
