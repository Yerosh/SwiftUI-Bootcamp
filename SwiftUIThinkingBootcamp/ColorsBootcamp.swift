//
//  ColorsBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 31.08.2025.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                .red
                .secondary
            )
            .frame(width: 300, height: 200)
            .shadow(color: .indigo, radius: 10, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootcamp()
}
