//
//  FlowerView.swift
//  TestNavigation
//
//  Created by Inderjeet Singh on 16/08/24.
//

import SwiftUI

struct FlowerView: View {
    @State private var visiblePetalTrim = 0.0
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
            
            Text("SwiftUI")
                .foregroundStyle(.cyan)
                .font(.title)
            
            //2
            FlowerShape()
                .trim(from: 0, to: visiblePetalTrim)
                .stroke(.cyan, lineWidth: 2)
                .frame(width: 150, height: 150)
                .onAppear() {
                    //3
                    withAnimation(.easeInOut(duration: 9)) {
                        visiblePetalTrim = 1.0
                    }
                }
        }
    }
}

#Preview {
    FlowerView()
}

struct FlowerShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let iterationAngle = Double.pi / 24
        
        // Iterate through each petal angle
        for angle in stride(from: 0, to: Double.pi*2, by: iterationAngle) {
            // Create a rotation transformation for the petal
            let rotation = CGAffineTransform(rotationAngle: angle)
            
            // Apply translation to center the petal in the rect
            let translation = CGAffineTransform(translationX: rect.width/2, y: rect.height / 2)
            
            // Combine rotation and translation
            let transform = rotation.concatenating(translation)
            
            // Apply the transformation to the petal path
            let petal = petalPath(in: rect).applying(transform)
            
            // Add the rotated petal path to the main path
            path.addPath(petal)
        }
        
        return path
    }
    
    func petalPath(in rect: CGRect) -> Path {
        var path = Path()
        
        let width = rect.width
        let height = rect.height
        
        path.move(to: CGPoint(x: width / 2, y: height / 2))
        
        path.addQuadCurve(to: CGPoint(x: 0, y: height / 2),
                          control: CGPoint(x: width / 4, y: height / 2 - height / 6))
        
        path.addQuadCurve(to: CGPoint(x: width / 2, y: height / 2),
                          control: CGPoint(x: width / 4, y: height / 2 + height / 6))
        
        path.addQuadCurve(to: CGPoint(x: width, y: height / 2),
                          control: CGPoint(x: width * 3 / 4, y: height / 2 - height / 6))
        
        path.addQuadCurve(to: CGPoint(x: width / 2, y: height / 2),
                          control: CGPoint(x: width * 3 / 4, y: height / 2 + height / 6))
        
        return path
    }
}
