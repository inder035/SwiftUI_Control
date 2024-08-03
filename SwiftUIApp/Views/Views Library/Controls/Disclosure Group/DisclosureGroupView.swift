//
//  DisclosureGroupView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct DisclosureGroupView: View {
    
    @State private var revealDetails = false
    @State private var isExpand = false
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A view that shows or hides another content view, based on the state of a disclosure control.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    DisclosureGroup("Overview", isExpanded: $revealDetails) {
                        Text("A disclosure group view consists of a label to identify the contents, and a control to show and hide the contents. Showing the contents puts the disclosure group into the “expanded” state, and hiding them makes the disclosure group “collapsed”")
                    }
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                VStack {
                    DisclosureGroup(
                        isExpanded: $isExpand,
                        content: {
                            Text("In the following example, a disclosure group contains two toggles and an embedded disclosure group. The top level disclosure group exposes its expanded state with the bound property, topLevelExpanded. By expanding the disclosure group, the user can use the toggles to update the state of the toggleStates structure.")
                                .padding()
                                .background(.blue.opacity(0.3))
                                .clipShape(.rect(cornerRadius: 8))
                                .padding(.bottom)
                        }, label: {
                            Text("Detail")
                                .padding(.vertical)
                        }
                    )
                }
                .padding(.horizontal)
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/disclosuregroup#")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Disclosure Group")
    }
}

#Preview {
    DisclosureGroupView()
}
