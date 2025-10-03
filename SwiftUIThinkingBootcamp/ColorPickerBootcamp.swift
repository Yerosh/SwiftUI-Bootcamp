//
//  ColorPickerBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 03.10.2025.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker("Select a background color", selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(.black)
                .cornerRadius(10)
                .padding()
                .foregroundColor(.white)
                .font(.headline)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
