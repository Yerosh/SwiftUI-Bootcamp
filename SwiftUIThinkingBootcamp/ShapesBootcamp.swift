//
//  ShapesBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 30.08.2025.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//        Ellipse()
//        Capsule(style: .circular)
//        Rectangle()
        RoundedRectangle(cornerRadius: 20)
//            .fill(.green)
//            .foregroundColor(.pink)
//            .stroke()
//            .stroke(lineWidth: 30)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            .trim(from: 0.25, to: 0.75)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    ShapesBootcamp()
}
