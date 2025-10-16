//
//  BackgroundMaterialsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 16.10.2025.
//

import SwiftUI

struct BackgroundMaterialsBootcamp: View {
    
    
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Color.yellow
        )
    }
}

#Preview {
    BackgroundMaterialsBootcamp()
}
