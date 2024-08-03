//
//  ColorPickerView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct ColorPickerView: View {
    
    @State private var bgColor = Color.white
    
    var body: some View {
        ScrollView {
            VStack {
                Text("A control used to select a color from the system color picker UI")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ColorPicker("Set the background color", selection: $bgColor, supportsOpacity: true)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.ultraThinMaterial)
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/colorpicker")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .background(bgColor)
        .navigationTitle("Color Picker")
    }
}

#Preview {
    ColorPickerView()
}
