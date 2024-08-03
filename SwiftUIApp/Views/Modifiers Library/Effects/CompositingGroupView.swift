//
//  CompositingGroupView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct CompositingGroupView: View {
    
    let circles: some View = ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
                .offset(y: -25)

            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
                .offset(x: -25, y: 25)

            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.green)
                .offset(x: 25, y: 25)
        }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Wraps this view in a compositing group.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    circles

                    circles
                        .opacity(0.5)
                    
                    circles
                        .compositingGroup()
                        .opacity(0.5)
                }
                .frame(height: 500)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/compositinggroup()")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Compositing Group")
    }
}

#Preview {
    CompositingGroupView()
}
