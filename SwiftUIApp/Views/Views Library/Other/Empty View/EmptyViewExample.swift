//
//  EmptyViewExample.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct EmptyViewExample: View {
    @State var showemptyview: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("A view that doesn’t contain any content.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Go EmptyView") {
                        showemptyview.toggle()
                    }
                    .sheet(isPresented: $showemptyview) {
                        EmptyView()
                            .background(Color.green)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/emptyview")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Empty View")
    }
}

#Preview {
    EmptyViewExample()
}
