//
//  CapsuleView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct CapsuleView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A capsule shape aligned inside the frame of the view containing it.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Capsule()
                        .fill(.green)
                        .frame(width: 100, height: 50)
                    
                    UnevenRoundedRectangle(cornerRadii: .init(topLeading: 20, topTrailing: 20))
                        .fill(.orange)
                        .frame(width: 200, height: 200)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/capsule")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Capsule")
    }
}

#Preview {
    CapsuleView()
}
