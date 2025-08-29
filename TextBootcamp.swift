//
//  TextBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 29.08.2025.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!, sdflsaflsadlfjl safs jfld lafjdsalfl")
//            .font(.body)
//            .fontWeight(.bold)
//            .bold()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(true, color: .green)
            .font(.system(size: 16, weight: .bold, design: .default))
//            .baselineOffset(50)
            .kerning(5)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(10)
        
        
    }
}

#Preview {
    TextBootcamp()
}
