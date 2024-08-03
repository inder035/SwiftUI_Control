//
//  NavigationDestinationView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct NavigationDestinationView: View {
    @State var isShow: Bool
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Associates a destination view with a presented data type for use within a navigation stack.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Press") {
                        isShow = true
                    }
                    .navigationDestination(isPresented: $isShow) {
                        PopoverView()
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/navigationdestination(for:destination:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Navigation Destination")
    }
}

#Preview {
    NavigationDestinationView(isShow: false)
}
