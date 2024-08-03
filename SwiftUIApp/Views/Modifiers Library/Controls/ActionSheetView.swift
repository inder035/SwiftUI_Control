//
//  ActionSheetView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var showingOptions = false
    @State private var selection = "None"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    Text("Deprecated").bold()
                        .foregroundStyle(Color.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("A representation of an action sheet presentation.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                VStack {
                    Text(selection)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    Button("Show Options") {
                        showingOptions = true
                    }
                    .actionSheet(isPresented: $showingOptions) {
                        ActionSheet(
                            title: Text("Select a color"),
                            buttons: [
                                .default(Text("Red")) {
                                    selection = "Red"
                                },
                                
                                    .default(Text("Green")) {
                                        selection = "Green"
                                    },
                                
                                    .default(Text("Blue")) {
                                        selection = "Blue"
                                    },
                            ]
                        )
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/actionsheet")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Action Sheet")
    }
}

#Preview {
    ActionSheetView()
}
