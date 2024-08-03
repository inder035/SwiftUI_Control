//
//  AccentColorView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct AccentColorView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A color that reflects the accent color of the system or app.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Accent Color")
                        .foregroundStyle(Color.accentColor)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/color/accentcolor")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Accent Color")
    }
}

#Preview {
    AccentColorView()
}
