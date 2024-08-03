//
//  MenuView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct MenuView: View {
    @State private var gender = "Select"
    @State private var group = "Select"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control for presenting a menu of actions.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Simple Menu")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    GroupBox {
                        HStack {
                            Text("Gender :")
                            Spacer()
                            VStack {
                                Menu(gender) {
                                    Button("Male") {gender = "Male"}
                                    Button("Female") {gender = "Female"}
                                    Button("Other") {gender = "Other"}
                                }
                            }
                            .frame(width: 100)
                            .padding()
                            .background(.blue.opacity(0.1))
                            .clipShape(.rect(cornerRadius: 8))
                        }
                    }
                }
                
                VStack {
                    Text("Nested Menu")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title3).bold()
                    GroupBox {
                        HStack {
                            Text("Select Item :")
                            
                            Spacer()
                            VStack {
                                Menu(group) {
                                    Menu("Fruits") {
                                        Button("Apple") {group = "Apple"}
                                        Button("Banana") {group = "Banana"}
                                        Button("Orange") {group = "Orange"}
                                    }
                                    Menu("Vegetables") {
                                        Button("Spinach") {group = "Spinach"}
                                        Button("Lettuce") {group = "Lettuce"}
                                        Button("Fenugreek") {group = "Fenugreek"}
                                    }
                                }
                            }
                            .frame(width: 100)
                            .padding()
                            .background(.blue.opacity(0.1))
                            .clipShape(.rect(cornerRadius: 8))
                        }
                    }
                }
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/menu/")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Menu")
    }
    
    func placeOrder() { }
    func adjustOrder() { }
    func cancelOrder() { }
}

#Preview {
    MenuView()
}
