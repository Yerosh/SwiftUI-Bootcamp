//
//  ImageBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 02.09.2025.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
//        Image("google")
        Image("google")
//            .renderingMode(.template)
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 200)
//            .foregroundColor(.red)
//            .cornerRadius(30)
//            .clipShape(
//                Circle()
//            )
//            .background(Color.gray)
            
    }
        
}

#Preview {
    ImageBootcamp()
}
