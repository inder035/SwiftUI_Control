//
//  TableView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 15/07/24.
//

import SwiftUI

struct Person: Identifiable {
    let givenName: String
    let familyName: String
    let emailAddress: String
    let id = UUID()
    var fullName: String { givenName + " " + familyName }
}

struct TableView: View {
    @State private var people = [
        Person(givenName: "Juan", familyName: "Chavez", emailAddress: "juanchavez@icloud.com"),
        Person(givenName: "Mei", familyName: "Chen", emailAddress: "meichen@icloud.com"),
        Person(givenName: "Tom", familyName: "Clark", emailAddress: "tomclark@icloud.com"),
        Person(givenName: "Gita", familyName: "Kumar", emailAddress: "gitakumar@icloud.com")
    ]
    
    var body: some View {
        VStack(spacing: 20) {
            Text("A container that presents rows of data arranged in one or more columns, optionally providing the ability to select one or more members.")
                .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack {
                Table(people) {
                    TableColumn("Given Name", value: \.givenName)
                    TableColumn("Family Name", value: \.familyName)
                    TableColumn("E-Mail Address", value: \.emailAddress)
                }
                .clipShape(.rect(cornerRadius: 8))
            }
            .padding()
            .background(.blue.opacity(0.1))
            .clipShape(.rect(cornerRadius: 8))
            
            Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/table")!)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal)
        .navigationTitle("Table")
    }
}

#Preview {
    TableView()
}
