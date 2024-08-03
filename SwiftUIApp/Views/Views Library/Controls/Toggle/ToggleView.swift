//
//  ToggleView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 14/07/24.
//

import SwiftUI

struct ToggleView: View {
    @State private var vibrateOnRing = true
    @State private var showGreeting = true
    @State private var isOn = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control that toggles between on and off states.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Toggle(
                        "Vibrate on Ring",
                        systemImage: "dot.radiowaves.left.and.right",
                        isOn: $vibrateOnRing
                    )
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack() {
                    Toggle("Show welcome message", isOn: $showGreeting)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                    Text(showGreeting ? "Toggle : On " : "Toggle : Off")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    Toggle("Filter", isOn: $isOn)
                               .toggleStyle(.button)
                               .tint(.mint)
                               .frame(maxWidth: .infinity)
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/toggle")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Toggle")
    }
}

#Preview {
    ToggleView()
}
