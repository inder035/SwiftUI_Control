//
//  KeyboardShortcutView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 16/08/24.
//

import SwiftUI

struct KeyboardShortcutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Keyboard shortcuts describe combinations of keys on a keyboard that the user can press in order to activate a button or toggle.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Button("Log in") {
                        print("Authenticating…")
                    }
                    .keyboardShortcut("l")
                    
                    Button("Run") {
                        print("Running…")
                    }
                    .keyboardShortcut("r", modifiers: .shift)
                    
                    Button("Home") {
                        print("Going home")
                    }
                    .keyboardShortcut("h", modifiers: [.control, .option, .command])
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/keyboardshortcut")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Keyboard Shortcut")
    }
}

#Preview {
    KeyboardShortcutView()
}
