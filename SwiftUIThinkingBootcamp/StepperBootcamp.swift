//
//  StepperBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 04.10.2025.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding()
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper") {
                incrementWidth()
            } onDecrement: {
                decrementWidth()
            }
        }
    }
    
    func incrementWidth() {
        withAnimation(.linear(duration: 0.2)) {
            widthIncrement += 20
        }
    }
    
    func decrementWidth() {
        withAnimation(.linear(duration: 0.2)) {
            widthIncrement -= 20
        }
    }
}

#Preview {
    StepperBootcamp()
}
