//
//  NavigationLinkView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct NavigationLinkView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that controls a navigation presentation.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Click to go next page")
                    
                    NavigationLink {
                        NavigationSecondView()
                    } label: {
                        Text("Next Page").bold()
                            .foregroundStyle(Color.white)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .clipShape(.rect(cornerRadius: 8))
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/navigationlink")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Navigation Link")
    }
}

#Preview {
    NavigationLinkView()
}
