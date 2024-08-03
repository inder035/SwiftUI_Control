//
//  GroupView.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("A type that collects multiple instances of a content type — like views, scenes, or commands — into a single unit.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Group {
                        Text("SwiftUI")
                        Text("Combine")
                        Text("Swift System")
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/group")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("Group")
    }
}

#Preview {
    GroupView()
}
