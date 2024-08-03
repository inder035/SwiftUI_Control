//
//  PreferredColorSchemeView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct PreferredColorSchemeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/alert")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Accent")
    }
}

#Preview {
    PreferredColorSchemeView()
}
