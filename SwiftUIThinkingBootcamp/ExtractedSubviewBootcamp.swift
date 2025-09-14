//
//  ExtractedSubviewBootcamp.swift
//  SwiftUIThinkingBootcamp
//
//  Created by Yernur Adilbek on 14.09.2025.
//

import SwiftUI

struct ExtractedSubviewBootcamp: View {
    var body: some View {
        
        ZStack {
            Color.blue.ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Apples", count: 20, color: .red)
            MyItem(title: "Bananas", count: 15, color: .yellow)
        }
    }

}

#Preview {
    ExtractedSubviewBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
