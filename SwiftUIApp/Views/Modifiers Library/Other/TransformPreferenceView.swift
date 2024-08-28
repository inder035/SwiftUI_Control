//
//  TransformPreferenceView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 14/08/24.
//

import SwiftUI

struct MyTextPreferenceKey: PreferenceKey {
    typealias Value = [MyTextPreferenceData]
    
    static var defaultValue: [MyTextPreferenceData] = []
    
    static func reduce(value: inout [MyTextPreferenceData], nextValue: () -> [MyTextPreferenceData]) {
        value.append(contentsOf: nextValue())
    }
}

struct MyTextPreferenceData: Equatable {
    let viewIdx: Int
    let rect: CGRect
}

struct TransformPreferenceView : View {
    
    @State private var activeIdx: Int = 0
    @State private var rects: [CGRect] = Array<CGRect>(repeating: CGRect(), count: 12)
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Applies a transformation to a preference value.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    ZStack(alignment: .topLeading) {
                        RoundedRectangle(cornerRadius: 15).stroke(lineWidth: 3.0).foregroundColor(Color.green)
                            .frame(width: rects[activeIdx].size.width, height: rects[activeIdx].size.height)
                            .offset(x: rects[activeIdx].minX, y: rects[activeIdx].minY)
                            .animation(.easeInOut(duration: 0.5), value: activeIdx)
                        
                        VStack {
                            HStack {
                                MonthView(activeMonth: $activeIdx, label: "January", idx: 0)
                                MonthView(activeMonth: $activeIdx, label: "February", idx: 1)
                                MonthView(activeMonth: $activeIdx, label: "March", idx: 2)
                            }
                            
                            HStack {
                                MonthView(activeMonth: $activeIdx, label: "April", idx: 3)
                                MonthView(activeMonth: $activeIdx, label: "May", idx: 4)
                                MonthView(activeMonth: $activeIdx, label: "June", idx: 5)
                            }
                            
                            HStack {
                                MonthView(activeMonth: $activeIdx, label: "July", idx: 6)
                                MonthView(activeMonth: $activeIdx, label: "August", idx: 7)
                                MonthView(activeMonth: $activeIdx, label: "September", idx: 8)
                            }
                            
                            HStack {
                                MonthView(activeMonth: $activeIdx, label: "October", idx: 9)
                                MonthView(activeMonth: $activeIdx, label: "November", idx: 10)
                                MonthView(activeMonth: $activeIdx, label: "December", idx: 11)
                            }
                        }.onPreferenceChange(MyTextPreferenceKey.self) { preferences in
                            for p in preferences {
                                self.rects[p.viewIdx] = p.rect
                            }
                        }
                    }.coordinateSpace(name: "myZstack")
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/view/transformpreference(_:_:)")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Transform Preference")
    }
}

struct MonthView: View {
    @Binding var activeMonth: Int
    let label: String
    let idx: Int
    
    var body: some View {
        Text(label)
            .padding(10)
            .background(MyPreferenceViewSetter(idx: idx)).onTapGesture { self.activeMonth = self.idx }
    }
}

struct MyPreferenceViewSetter: View {
    let idx: Int
    
    var body: some View {
        GeometryReader { geometry in
            Rectangle()
                .fill(Color.clear)
                .preference(key: MyTextPreferenceKey.self,
                            value: [MyTextPreferenceData(viewIdx: self.idx, rect: geometry.frame(in: .named("myZstack")))])
        }
    }
}

#Preview {
    TransformPreferenceView()
}
