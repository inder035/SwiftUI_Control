//
//  TextFieldView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct TextFieldView: View {
    @State private var firstname: String = ""
    @State private var lastname: String = ""
    @State private var email: String = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control that displays an editable text interface.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    TextField("First name", text: $firstname)
                        .padding()
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 8))
                    TextField("Last name", text: $lastname)
                        .padding()
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 8))
                    TextField("Emai", text: $email)
                        .padding()
                        .background(.white)
                        .clipShape(.rect(cornerRadius: 8))
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/textfield")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("TextField")
    }
}

#Preview {
    TextFieldView()
}
