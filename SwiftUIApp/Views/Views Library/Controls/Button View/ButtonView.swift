//
//  ButtonView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct ButtonView: View {
    
    @State private var signIn = false
    @State private var tapCount = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control that initiates an action.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button(action: {
                        self.signIn = true
                    }, label: {
                        Text("Sign In")
                    })
                    
                    Button(action: {
                        self.signIn = true
                    }, label: {
                        Label("Sign In", systemImage: "arrow.up")
                    })
                    
                    Button("Sign In", systemImage: "arrow.up") {
                        self.signIn = true
                    }
                    
                    Button("Sign In", systemImage: "arrow.up") {
                        self.signIn = true
                    }.labelStyle(.iconOnly)
                    
                    Button("Delete", role: .destructive) {
                        self.signIn = true
                    }
                }
                .frame(maxWidth: .infinity)
                .buttonStyle(.bordered)
                
                
                Divider()
                
                VStack {
                    Button("Tap Count: \(tapCount)") {
                        tapCount += 1
                    }
                    .buttonRepeatBehavior(.enabled)
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                    
                    Text("Long press on the button")
                        .frame(maxWidth: .infinity, alignment: .center)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/button")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)            
        }
        .navigationTitle("Button")
    }
}

#Preview {
    ButtonView()
}
