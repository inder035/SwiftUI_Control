//
//  PickerView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 14/07/24.
//

import SwiftUI

struct PickerView: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = "Red"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control for selecting from a set of mutually exclusive values.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack(spacing: 20) {
                    VStack {
                        Text("Menu Type")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3).bold()
                        
                        Picker("Please choose a color", selection: $selectedColor) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.menu)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 8))
                    }
                    
                    VStack {
                        Text("Navigation Link Type")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3).bold()
                        List {
                            Picker("Please choose a color", selection: $selectedColor) {
                                ForEach(colors, id: \.self) {
                                    Text($0)
                                }
                            }
                            .padding(8)
                            .pickerStyle(.navigationLink)
                        }
                        .listStyle(.plain)
                        .frame(height: 60)
                        .clipShape(.rect(cornerRadius: 8))
                    }
                    
                    VStack {
                        Text("Palette Type")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3).bold()
                        
                        Picker("Please choose a color", selection: $selectedColor) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.palette)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 8))
                    }
                    
                    VStack {
                        Text("Segmented Type")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3).bold()
                        
                        Picker("Please choose a color", selection: $selectedColor) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.segmented)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 8))
                    }
                    
                    VStack {
                        Text("Wheel Type")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3).bold()
                        
                        Picker("Please choose a color", selection: $selectedColor) {
                            ForEach(colors, id: \.self) {
                                Text($0)
                            }
                        }
                        .pickerStyle(.wheel)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(.blue.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 8))
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/picker")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Picker")
    }
}

#Preview {
    PickerView()
}
