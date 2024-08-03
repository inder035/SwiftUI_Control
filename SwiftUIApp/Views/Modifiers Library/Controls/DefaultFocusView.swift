//
//  DefaultFocusView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 20/07/24.
//

import SwiftUI

struct DefaultFocusView: View {
    enum FocusedField {
        case firstName, lastName
    }
    
    @State private var firstName = ""
    @State private var lastName = ""
    @FocusState private var focusedField: FocusedField?
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Defines a region of the window in which default focus is evaluated by assigning a value to a given focus state binding.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    TextField("First name", text: $firstName)
                        .focused($focusedField, equals: .firstName)
                        .padding()
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 8))
                    
                    TextField("Last name", text: $lastName)
                        .focused($focusedField, equals: .lastName)
                        .padding()
                        .background(Color.white)
                        .clipShape(.rect(cornerRadius: 8))
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                .defaultFocus($focusedField, .firstName)
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/defaultfocus(_:_:priority:)#")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Default Focus")
    }
}

#Preview {
    DefaultFocusView()
}
