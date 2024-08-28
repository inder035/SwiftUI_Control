//
//  InspectorView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 16/08/24.
//

import SwiftUI

struct InspectorView: View {
    @State private var isShowingInspector = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets a flexible, preferred width for the inspector in a trailing-column presentation.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Hello, world!") {
                        isShowingInspector.toggle()
                    }
                    .font(.largeTitle)
                    .inspector(isPresented: $isShowingInspector) {
                        Text("Inspector View")
                            .inspectorColumnWidth(min: 50, ideal: 200, max: 300)
                    }
                    .padding()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/inspectorcolumnwidth(min:ideal:max:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Inspector")
    }
}

#Preview {
    InspectorView()
}
