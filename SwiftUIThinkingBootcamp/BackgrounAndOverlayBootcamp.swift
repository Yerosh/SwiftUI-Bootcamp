//
//  BackgrounAndOverlayBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 03.09.2025.
//

import SwiftUI

struct BackgrounAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100)
//
//            )
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [.purple, .yellow], startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 120, height: 120)
//            )
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Text("1")
//                    .font(.largeTitle)
//                    .foregroundColor(.white)
//            )
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 120, height: 120)
//            )
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay (
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50)
//                , alignment: .topLeading
//            )
//            .background (
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//                , alignment: .bottomTrailing
//            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(LinearGradient(colors: [.purple, .blue],
                                         startPoint: .topLeading,
                                         endPoint: .bottomTrailing))
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple, radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.red)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("2")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .red, radius: 10, x: 5, y: 5)
                        , alignment: .bottomTrailing
                    )
                
            )
    }
}

#Preview {
    BackgrounAndOverlayBootcamp()
}
