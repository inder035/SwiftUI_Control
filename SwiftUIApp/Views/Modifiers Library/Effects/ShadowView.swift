//
//  ShadowView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ShadowView: View {
    let steps = [0, 5, 10]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Adds a shadow to this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack(spacing: 50) {
                        ForEach(steps, id: \.self) { offset in
                            HStack(spacing: 50) {
                                ForEach(steps, id: \.self) { radius in
                                    Color.blue
                                        .shadow(
                                            color: .primary,
                                            radius: CGFloat(radius),
                                            x: CGFloat(offset), y: CGFloat(offset))
                                        .frame(height: 80)
                                        .overlay {
                                            VStack {
                                                Text("\(radius)")
                                                Text("(\(offset), \(offset))")
                                            }
                                        }
                                }
                            }
                        }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/shadow(color:radius:x:y:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Shadow")
    }
}

#Preview {
    ShadowView()
}
