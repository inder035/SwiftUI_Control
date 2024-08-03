//
//  ContextMenuView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct ContextMenuView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                VStack {
                    Text("Deprecated").bold()
                        .foregroundStyle(Color.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("A container for views that you present as menu items in a context menu.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                    
                VStack {
                    Text("Options")
                        .contextMenu {
                            Button {
                                print("Change country setting")
                            } label: {
                                Label("Choose Country", systemImage: "globe")
                            }
                            
                            Button {
                                print("Enable geolocation")
                            } label: {
                                Label("Detect Location", systemImage: "location.circle")
                            }
                        }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/contextmenu")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Context Menu")
    }
}

#Preview {
    ContextMenuView()
}
