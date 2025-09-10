//
//  GridBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 10.09.2025.
//

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: nil,
                      pinnedViews: []) {
                Section(header:
                            Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.blue)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                        
                    }
                }

                Section(header:
                            Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.red)
                    .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(.red)
                            .frame(height: 150)
                           
                    }
                }
            }
        }
    }
}

#Preview {
    GridBootcamp()
}
