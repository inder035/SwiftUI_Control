//
//  DigitalCrownAccessoryView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct DigitalCrownAccessoryView: View {
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Specifies the visibility of Digital Crown accessory Views on Apple Watch.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text(".digitalCrownRotation($scrollAmount)")
                    Text("Work for watch")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/digitalcrownaccessory(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Digital Crown Accessory")
    }
}

#Preview {
    DigitalCrownAccessoryView()
}
