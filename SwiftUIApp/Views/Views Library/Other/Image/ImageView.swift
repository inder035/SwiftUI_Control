//
//  ImageView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A view that displays an image.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Image(systemName: "cloud.heavyrain.fill")
                    Text("Rain")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/image")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Image")
    }
}

#Preview {
    ImageView()
}
