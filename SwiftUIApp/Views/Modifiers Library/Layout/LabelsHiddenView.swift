//
//  LabelsHiddenView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct LabelsHiddenView: View {
    @State private var selectedNumber = 0
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Hides the labels of any controls contained within this view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Picker("Select a number", selection: $selectedNumber) {
                        ForEach(0..<10) {
                            Text("\($0)")
                        }
                    }
                    .pickerStyle(.wheel)
                    .labelsHidden()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/labelshidden()")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Labels Hidden")
    }
}

#Preview {
    LabelsHiddenView()
}
