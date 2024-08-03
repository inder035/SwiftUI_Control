//
//  MultiDatePickerView.swift
//  SwiftUIApp
//
//  Created by Inder Singh on 13/07/24.
//

import SwiftUI

struct MultiDatePickerView: View {
    @Environment(\.calendar) var calendar
    @Environment(\.timeZone) var timeZone
    @State private var dates: Set<DateComponents> = []
    
    var bounds: Range<Date> {
        let start = calendar.date(from: DateComponents(
            timeZone: timeZone, year: 2024, month: 6, day: 6))!
        let end = calendar.date(from: DateComponents(
            timeZone: timeZone, year: 2024, month: 6, day: 24))!
        return start ..< end
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("A control for picking multiple dates.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    MultiDatePicker("Select dates", selection: $dates, in: bounds)
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                if self.dates.isEmpty == false {
                    VStack {
                        Text("Selected Dates")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.title3).bold()
                        GroupBox {
                            ForEach(Array(dates), id: \.self) { date in
                                Text("\(date.date?.formatted(date: .long, time: .omitted) ?? "")")
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding()
                                    .background(.blue.opacity(0.1))
                                    .clipShape(.rect(cornerRadius: 8))
                            }
                        }
                    }
                }
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/multidatepicker")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Multi-Date Picker")
    }
}

#Preview {
    MultiDatePickerView()
}
