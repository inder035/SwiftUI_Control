//
//  ContrastView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ContrastView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the contrast and separation between similar colors in this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ForEach(-1..<6) {
                        Color.red.frame(width: 60, height: 60, alignment: .center)
                            .overlay(CircleView2(), alignment: .center)
                            .contrast(Double($0) * 0.2)
                            .overlay(Text("\(Double($0) * 0.2 * 100, specifier: "%.0f")%")
                                .font(.callout),
                                     alignment: .bottom)
                            .border(Color.gray)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/contrast(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Contrast")
    }
}

struct CircleView2: View {
    var body: some View {
        Circle()
            .fill(Color.green)
            .frame(width: 25, height: 25, alignment: .center)
    }
}

#Preview {
    ContrastView()
}
