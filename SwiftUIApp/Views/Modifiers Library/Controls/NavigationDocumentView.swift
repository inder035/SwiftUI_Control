//
//  NavigationDocumentView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct NavigationDocumentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Configures the view’s document for purposes of navigation.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/navigationdocument(_:)-66zro")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Navigation Document")
        .navigationDocument("https://developer.apple.com/documentation/swiftui/view/navigationdocument(_:)-66zro")
    }
}

#Preview {
    NavigationDocumentView()
}
