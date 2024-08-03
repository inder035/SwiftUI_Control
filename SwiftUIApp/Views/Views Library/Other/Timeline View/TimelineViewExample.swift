//
//  TimelineViewExample.swift
//  SwiftUIApp
//
//  Created by Inderjeet Singh on 17/07/24.
//

import SwiftUI

struct TimelineViewExample: View {
    let endDate: Date = Date().addingTimeInterval(300)
    
    var body: some View {
        ScrollView {
            VStack {
                Text("A view that updates according to a schedule that you provide.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    TimelineView(.periodic(from: Date(), by: 1.0)) { context in
                        let currentDate = context.date
                        let remainingTime = endDate.timeIntervalSince(currentDate)
                        let minutes = Int(remainingTime) / 60
                        let seconds = Int(remainingTime) % 60
                        
                        VStack {
                            Text(String(format: "%02d:%02d", minutes, seconds))
                                .font(.largeTitle)
                                .padding()
                        }
                    }
                    
                    ZStack {
                        TimelineView(.animation) { timeline in
                            Canvas { context, size in
                                let w = size.width
                                let h = size.height
                                let now = timeline.date.timeIntervalSinceReferenceDate
                                let angle = Angle.degrees(now.remainder(dividingBy: 4) * 90)
                                let d1 = (sin(angle.radians)) * 20
                                let d2 = (cos(angle.radians)) * 20
                                
                                context.fill(Path(CGRect(origin: .zero, size: size)), with: .color(Color(.sRGB, red: 230/255, green: 240/255, blue: 1, opacity: 1)))
                                
                                let path = Path { path in
                                    path.move(to: CGPoint(x: w * 0.15, y: h * 0.97))
                                    path.addCurve(
                                        to: CGPoint(x: w * 0.1, y: h * 0.3 - d2) ,
                                        control1: CGPoint(x: w * 0.1 - d2, y: h * 0.87),
                                        control2: CGPoint(x: 0, y: h * 0.75 + d1)
                                    )
                                    path.addCurve(
                                        to: CGPoint(x: w * 0.48, y: h * 0.05) ,
                                        control1: CGPoint(x: w * 0.1, y: h * 0.2 - d2),
                                        control2: CGPoint(x: w * 0.2, y: h * 0.1)
                                    )
                                    path.addCurve(
                                        to: CGPoint(x: w * 0.92 - d2, y: h * 0.7) ,
                                        control1: CGPoint(x: w * 0.65, y: h * 0),
                                        control2: CGPoint(x: w * 0.9 + d1, y: h * 0.17)
                                    )
                                    path.addCurve(
                                        to: CGPoint(x: w * 0.15, y: h * 0.97) ,
                                        control1: CGPoint(x: w - d2, y: h * 0.94),
                                        control2: CGPoint(x: w, y: h * 0.9)
                                    )
                                }
                                context.fill(
                                    path,
                                    with: .linearGradient(
                                        Gradient(colors: [.green, .blue]),
                                        startPoint: .zero ,
                                        endPoint: CGPoint(x: size.width, y: size.height)
                                    )
                                )
                            }
                        }
                    }
                    .frame(height: 400)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(.rect(cornerRadius: 8))
                
                Link("Apple Documentation", destination: URL(string: "https://developer.apple.com/documentation/swiftui/timelineview")!)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.vertical)
            }
            .padding(.horizontal)
        }
        .navigationTitle("Timeline View")
    }
}

#Preview {
    TimelineViewExample()
}
