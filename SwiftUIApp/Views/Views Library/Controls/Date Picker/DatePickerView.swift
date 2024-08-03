//
//  DatePickerView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct DatePickerView: View {
    @State private var birthDate = Date.now
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control for selecting an absolute date.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Text("\(birthDate.formatted(date: .long, time: .omitted))")
                        .padding()
                        .background(.blue.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 8))
                    
                    DatePicker("Enter your birthday", selection: $birthDate)
                        .datePickerStyle(.graphical)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding()
                        .background(.blue.opacity(0.1))
                        .clipShape(.rect(cornerRadius: 8))
                }
                
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/datepicker")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Date Picker")
    }
}

#Preview {
    DatePickerView()
}
