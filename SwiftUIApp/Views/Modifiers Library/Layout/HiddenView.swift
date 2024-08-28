//
//  HiddenView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct HiddenView: View {
    @State private var isOn1 = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A Boolean value that determines whether the view is hidden.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    HStack {
                        if !isOn1 {
                            Text("A")
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .background(Color.red)
                        }
                        Text("B")
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Color.blue)
                        Text("C")
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Color.green)
                        Text("D").foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Color.orange)
                            .hidden()
                    }
                    
                    Toggle("A View", isOn: $isOn1)
                        .padding()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/uikit/uiview/1622585-hidden")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Hidden")
    }
}

#Preview {
    HiddenView()
}
