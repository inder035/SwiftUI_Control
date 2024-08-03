//
//  FormView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct FormView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A container for grouping controls used for data entry, such as in settings or inspectors.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Form {
                    Text("Paul")
                    Text("Rahul")
                    Text("Adele")
                }
                .frame(height: 200)
                .clipShape(.rect(cornerRadius: 8))
                
                Text("Form with sections")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title3).bold()
                Form {
                    Section(header: Text("Notifications")) {
                        Text("Play notification sounds")
                        Text("Send read receipts")
                    }

                    Section(header: Text("User Profiles")) {
                        Text("Name")
                        Text("Email")
                    }
                }
                .frame(height: 300)
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/form")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Form")
    }
}

#Preview {
    FormView()
}
