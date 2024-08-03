//
//  NavigationViewExample.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 14/07/24.
//

import SwiftUI

struct NavigationViewExample: View {
    @State private var path = [Int]()
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(spacing: 20) {
                    VStack {
                        Text("Deprecated").bold()
                            .foregroundStyle(Color.red)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("A view for presenting a stack of views that represents a visible path in a navigation hierarchy.")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
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
                    .padding()
                    .background(.blue.opacity(0.1))
                    .clipShape(.rect(cornerRadius: 8))
                    
                    Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/navigationview")!)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal)
            }
        }
        .navigationTitle("Navigation View")
    }
}

#Preview {
    NavigationViewExample()
}
