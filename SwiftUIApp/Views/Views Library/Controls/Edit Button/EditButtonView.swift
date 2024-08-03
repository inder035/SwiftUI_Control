//
//  EditButtonView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct EditButtonView: View {
    
    @State private var users = ["Paul", "Taylor", "Adele"]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A button that toggles the edit mode environment value.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                List {
                    ForEach(users, id: \.self) { user in
                        Text(user)
                    }
                    .onDelete(perform: delete)
                }
                .frame(height: 200)
                .clipShape(.rect(cornerRadius: 8))
                                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/editbutton")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .navigationTitle("Edit Button")
        .toolbar {
            EditButton()
        }
    }
    
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

#Preview {
    EditButtonView()
}
