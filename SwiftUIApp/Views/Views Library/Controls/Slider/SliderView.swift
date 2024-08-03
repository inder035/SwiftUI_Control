//
//  SliderView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct SliderView: View {
    @State private var celsius: Double = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control for selecting a value from a bounded linear range of values.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Slider(value: $celsius, in: -100...100)
                    Text("\(celsius, specifier: "%.1f") Celsius is \(celsius * 9 / 5 + 32, specifier: "%.1f") Fahrenheit")
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/slider")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Slider")
    }
}

#Preview {
    SliderView()
}
