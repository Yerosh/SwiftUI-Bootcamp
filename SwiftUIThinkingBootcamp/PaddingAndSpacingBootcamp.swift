//
//  PaddingAndSpacingBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 05.09.2025.
//

import SwiftUI

struct PaddingAndSpacingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is second line of the text. As a result, there will be a 20 point spacing between the two lines")
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingAndSpacingBootcamp()
}
