//
//  ToolbarColorSchemeVIew.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ToolbarColorSchemeVIew: View {
    @State private var isPresented = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Specifies the preferred color scheme of a bar managed by SwiftUI.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Show Sheet") {
                        isPresented = true
                    }
                    .sheet(isPresented: $isPresented) {
                        List {
                            Text("Check us out for more")
                            ForEach(1..<50, id: \.self) { idx in
                                Label("Item \(idx)", systemImage: "\(idx).circle.fill")
                            }
                        }
                        .navigationTitle("DevTechie.com")
                        .preferredColorScheme(.light)
                        .toolbarBackground(
                            .blue, for: .navigationBar, .tabBar)
                        .toolbarColorScheme(
                            .dark, for: .navigationBar, .tabBar)

                    }
                    
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/toolbarcolorscheme(_:for:)#")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Toolbar Color Scheme")
        .toolbarColorScheme(.dark, for: .navigationBar)
    }
}

#Preview {
    ToolbarColorSchemeVIew()
}
