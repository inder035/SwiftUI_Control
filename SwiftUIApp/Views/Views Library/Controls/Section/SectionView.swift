//
//  SectionView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct SectionView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A container view that you can use to add hierarchy within certain views.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    List {
                        Section(header: Text("Important tasks section")) {
                            TaskRow()
                            TaskRow()
                            TaskRow()
                        }
                        .headerProminence(.increased)
                        
                        Section(header: Text("Other tasks section")) {
                            TaskRow()
                            TaskRow()
                            TaskRow()
                        }
                    }
                    .frame(height: 400)
                }
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/section")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Section")
    }
}

struct TaskRow: View {
    var body: some View {
        Text("Task data goes here")
    }
}

#Preview {
    SectionView()
}
