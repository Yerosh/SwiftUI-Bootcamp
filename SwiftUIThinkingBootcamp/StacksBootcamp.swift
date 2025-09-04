//
//  StacksBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 04.09.2025.
//

import SwiftUI

struct StacksBootcamp: View {
    //Vstacks -> Vertical
    //Hstacks -> Horizontal
    //Zstack -> zIndex (back to front)
    var body: some View {
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500)
//            
//            VStack(alignment: .leading, spacing: 30) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 100, height: 100)
//                
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                
//                HStack {
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 75, height: 75)
//                    
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 50, height: 50)
//                    
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.orange)
//            }
//            .background(Color.gray)
//        }
        
        VStack (spacing: 150) {
            ZStack {
                Circle()
                    .frame(width: 300, height: 300)
                
                Text("Hello, World!")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            
            
            Text("Hello, World!")
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 300, height: 300)
                )
        }
    }
}

#Preview {
    StacksBootcamp()
}
