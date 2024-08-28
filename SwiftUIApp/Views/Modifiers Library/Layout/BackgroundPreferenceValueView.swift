//
//  BackgroundPreferenceValueView.swift
//  SwiftUIApp
//
//  Created by Tarun Mehta on 04/08/24.
//

import SwiftUI

struct BackgroundPreferenceValueView: View {
    @State var colour = BGPreferenceKey.defaultValue
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Reads the specified preference value from the view, using it to produce a second view that is applied as the background of the original view.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    VStack {
                        ColorPicker("", selection: $colour)
                            .preference(key: BGPreferenceKey.self, value: colour)
                            .backgroundPreferenceValue(BGPreferenceKey.self) { value in
                                Text ("Background" )
                                    .foregroundColor (value)
                            }
                    }
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/backgroundpreferencevalue(_:_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Background Preference Value")
    }
}

struct BGPreferenceKey: PreferenceKey {
    static var defaultValue: Color = . black
    static func reduce(value: inout Color, nextValue: () -> Color) {
        value = nextValue()
    }
}

#Preview {
    BackgroundPreferenceValueView()
}
