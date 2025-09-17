//
//  ConditionalBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 17.09.2025.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
//            Button("Circle Button: \(showCircle.description)") {
//                showCircle.toggle()
//            }
//            Button("Circle Button: \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 100, height: 100)
//            }
//            
//            if showRectangle {
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//            }
//            
//            if showCircle || showRectangle {
//                RoundedRectangle(cornerRadius: 20)
//                    .frame(width: 100, height: 100)
//            }
        }
        
        Spacer()
    }
}

#Preview {
    ConditionalBootcamp()
}
