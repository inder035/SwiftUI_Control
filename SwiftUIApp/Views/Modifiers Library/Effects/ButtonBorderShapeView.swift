//
//  ButtonBorderShapeView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ButtonBorderShapeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the border shape for buttons in this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button {
                        
                    } label: {
                        Text("Border Shape")
                            .padding()
                            
                    }
                    .tint(.blue)
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/buttonbordershape")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Button Border Shap")
    }
}

#Preview {
    ButtonBorderShapeView()
}
