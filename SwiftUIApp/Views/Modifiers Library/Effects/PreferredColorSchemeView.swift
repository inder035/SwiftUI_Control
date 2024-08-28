//
//  PreferredColorSchemeView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct PreferredColorSchemeView: View {
    @State private var isPresented = false
    @State private var isDarkMode = true
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the preferred color scheme for this presentation.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Show Sheet") {
                        isPresented = true
                    }
                    .sheet(isPresented: $isPresented) {
                        List {
                            Toggle("Dark Mode", isOn: $isDarkMode)
                        }
                        .preferredColorScheme(isDarkMode ? .dark : .light)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/preferredcolorscheme(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Preferred Color Scheme")
    }
}

#Preview {
    PreferredColorSchemeView()
}
