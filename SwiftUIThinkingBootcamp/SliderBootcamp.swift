//
//  SliderBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 04.10.2025.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 5
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(String(format: "%.0f", sliderValue))
//            Slider(value: $sliderValue, in: 0...100)
//            Slider(value: $sliderValue, in: 0...10, step: 1)
            Slider(value: $sliderValue,
                   in: 1...10,
                   step: 1.0,
                   onEditingChanged: { (_) in
                        color = .green
                    },
                   minimumValueLabel: Text("1"),
                   maximumValueLabel: Text("10"),
                   label: {
                        Text("Title")
                    })
            .accentColor(color)
        }
    }
}

#Preview {
    SliderBootcamp()
}
