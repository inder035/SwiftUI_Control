//
//  AllowsHitTesting.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 16/08/24.
//

import SwiftUI

struct AllowsHitTesting: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Configures whether this view participates in hit test operations..")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ZStack {
                    Button("Tap Me") {
                        print("Button was tapped")
                    }
                    .frame(width: 100, height: 100)
                    .background(.gray)
                    
                    Rectangle()
                        .fill(.red.opacity(0.2))
                        .frame(width: 300, height: 300)
                        .clipShape(Circle())
                        .allowsHitTesting(false)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/allowshittesting(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Allows Hit Testing")
    }
}

#Preview {
    AllowsHitTesting()
}
