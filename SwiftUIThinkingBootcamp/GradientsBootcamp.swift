//
//  GradientsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 01.09.2025.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                LinearGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
                
//                RadialGradient(
//                    gradient: Gradient(colors: [.red, .blue]),
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 400
//                )
                
                AngularGradient(
                    gradient: Gradient(colors: [.red, .blue]),
                    center: .topLeading,
                    angle: .degrees(180))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
