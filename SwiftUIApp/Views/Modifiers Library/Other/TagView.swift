//
//  TagView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 14/08/24.
//

import SwiftUI

struct TagView: View {
    enum Flavor: String, CaseIterable, Identifiable {
        case chocolate, vanilla, strawberry
        var id: Self { self }
    }
    
    @State private var selectedFlavor: Flavor = .chocolate
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sets the unique tag value of this piece of map content.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Picker("Flavor", selection: $selectedFlavor) {
                        ForEach(Flavor.allCases) { flavor in
                            Text(flavor.rawValue.capitalized)
                        }
                    }
                    .pickerStyle(.menu)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/foreach/tag(_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Tag")
    }
}

#Preview {
    TagView()
}
