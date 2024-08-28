//
//  PreferenceView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 14/08/24.
//

import SwiftUI

struct ColorPreferenceKey: PreferenceKey {
    typealias Value = Color?
    static var defaultValue: Value = nil
    
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = value ?? nextValue()
    }
}

struct ColorBox: View {
    let color: Color
    var body: some View {
        Rectangle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .preference(key: ColorPreferenceKey.self, value: color)
    }
}

struct PreferenceView: View {
    var body: some View {
        VStack {
            ColorBox(color: .red)
            ColorBox(color: .green)
            ColorBox(color: .yellow)
            ColorBox(color: .blue)
        }
        .backgroundPreferenceValue(ColorPreferenceKey.self) { color in
            Rectangle().foregroundColor(color ?? .yellow)
        }
    }
}

#Preview {
    PreferenceView()
}
