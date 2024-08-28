//
//  ToolbarRoleView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct ToolbarRoleView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Configures the semantic role for the content populating the toolbar.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("Toolbar")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/SwiftUI/ToolbarRole")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Text")
        .toolbar(id: "options") {
            ToolbarItem(id: "settings", placement: .primaryAction) {
                Button("Settings") { }
            }
            ToolbarItem(id: "help", placement: .secondaryAction) {
                Button("Help") { }
            }
            ToolbarItem(id: "email", placement: .secondaryAction) {
                Button("Email Me") { }
            }
            ToolbarItem(id: "credits", placement: .secondaryAction, showsByDefault: false) {
                Button("Credits") { }
            }
        }
        .toolbarRole(.editor)
    }
}

#Preview {
    ToolbarRoleView()
}
