//
//  StepperView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct StepperView: View {
    @State private var age = 18
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control that performs increment and decrement actions.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Stepper("Enter your age", value: $age, in: 0...130)
                    Text("Your age is \(age)")
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/stepper")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Stepper")
    }
}

#Preview {
    StepperView()
}
